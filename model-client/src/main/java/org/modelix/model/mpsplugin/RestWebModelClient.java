package org.modelix.model.mpsplugin;



import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;
import java.io.File;
import org.apache.commons.io.FileUtils;
import java.nio.charset.StandardCharsets;
import org.apache.log4j.Level;
import javax.ws.rs.client.Client;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import org.modelix.model.IKeyValueStore;
import org.modelix.model.lazy.ObjectStoreCache;
import org.modelix.model.KeyValueStoreCache;
import java.util.concurrent.ScheduledFuture;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.ClientRequestFilter;
import javax.ws.rs.client.ClientRequestContext;
import java.io.IOException;
import javax.ws.rs.core.HttpHeaders;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import org.modelix.model.persistent.HashUtil;
import javax.ws.rs.core.Response;
import java.net.URLEncoder;
import java.util.Map;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import java.util.HashMap;
import org.json.JSONArray;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.client.Entity;
import java.util.LinkedHashMap;
import org.json.JSONObject;
import org.modelix.model.IKeyListener;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import java.util.Objects;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import jetbrains.mps.internal.collections.runtime.IMapping;
import org.modelix.model.lazy.IDeserializingKeyValueStore;
import de.q60.mps.shadowmodels.runtime.model.persistent.IIdGenerator;
import jetbrains.mps.ide.ThreadUtils;
import jetbrains.mps.internal.collections.runtime.NotNullWhereFilter;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.internal.collections.runtime.ILeftCombinator;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.sse.SseEventSource;
import java.util.concurrent.TimeUnit;
import java.util.function.Consumer;
import javax.ws.rs.sse.InboundSseEvent;

public class RestWebModelClient implements IModelClient {
  private static final Logger LOG = LogManager.getLogger(RestWebModelClient.class);
  public static final String MODEL_URI_VAR_NAME = "MODEL_URI";
  private static String defaultToken;

  static {
    try {
      File sharedSecretFile = new File("/secrets/modelsecret/modelsecret.txt");
      if (sharedSecretFile.exists()) {
        defaultToken = FileUtils.readFileToString(sharedSecretFile, StandardCharsets.UTF_8);
      }
    } catch (Exception ex) {
      if (LOG.isEnabledFor(Level.ERROR)) {
        LOG.error("Failed to load default token", ex);
      }
    }
  }

  public static String getModelUrlFromEnv() {
    String url = System.getProperty(MODEL_URI_VAR_NAME);
    if ((url == null || url.length() == 0)) {
      url = System.getenv(MODEL_URI_VAR_NAME);
    }
    return url;
  }

  public static String getDefaultUrl() {
    String urlFromEnv = getModelUrlFromEnv();
    if ((urlFromEnv != null && urlFromEnv.length() > 0)) {
      return urlFromEnv;
    } else {
      return "http://modelix.q60.de:80/model/";
    }
  }

  private int clientId = 0;
  private Client client;
  private final List<SseListener> listeners = ListSequence.fromList(new ArrayList<SseListener>());
  private String baseUrl;
  private IKeyValueStore asyncStore = new GarbageFilteringStore(new AsyncStore(this));
  private ObjectStoreCache cache = new ObjectStoreCache(new KeyValueStoreCache(asyncStore));
  private IdGenerator idGenerator;
  private ScheduledFuture<?> watchDogTask;
  private String authToken = defaultToken;

  public RestWebModelClient() {
    this(null);
  }

  public RestWebModelClient(String baseUrl) {
    this.baseUrl = baseUrl;
    if (isEmptyString(this.baseUrl)) {
      this.baseUrl = getDefaultUrl();
    }
    if (!(this.baseUrl.endsWith("/"))) {
      this.baseUrl += "/";
    }

    client = ClientBuilder.newBuilder().register(new ClientRequestFilter() {
      @Override
      public void filter(ClientRequestContext ctx) throws IOException {
        ctx.getHeaders().add(HttpHeaders.AUTHORIZATION, "Bearer " + authToken);
      }
    }).build();
    watchDogTask = SharedExecutors.fixDelay(1000, new Runnable() {
      public void run() {
        List<SseListener> ls;
        synchronized (listeners) {
          ls = ListSequence.fromListWithValues(new ArrayList<SseListener>(), listeners);
        }
        for (SseListener l : ListSequence.fromList(ls)) {
          try {
            l.ensureConnected();
          } catch (Exception ex) {
            if (LOG.isEnabledFor(Level.ERROR)) {
              LOG.error("", ex);
            }
          }
        }
      }
    });
  }

  public String getBaseUrl() {
    return baseUrl;
  }

  public void dispose() {
    watchDogTask.cancel(false);
    synchronized (listeners) {
      ListSequence.fromList(listeners).visitAll(new IVisitor<SseListener>() {
        public void visit(SseListener it) {
          it.dispose();
        }
      });
      ListSequence.fromList(listeners).clear();
    }
  }

  @Override
  public String get(String key) {
    checkNotEDT();
    boolean isHash = HashUtil.isSha256(key);
    if (isHash) {
      if (LOG.isDebugEnabled()) {
        LOG.debug("GET " + key);
      }
    }
    long start = System.currentTimeMillis();
    Response response = client.target(baseUrl + "get/" + URLEncoder.encode(key, StandardCharsets.UTF_8)).request().buildGet().invoke();
    if (response.getStatus() == Response.Status.OK.getStatusCode()) {
      String value = response.readEntity(String.class);
      long end = System.currentTimeMillis();
      if (isHash) {
        if (LOG.isDebugEnabled()) {
          LOG.debug("GET " + key + " took " + (end - start) + " ms: " + value);
        }
      }
      return value;
    } else if (response.getStatus() == Response.Status.NOT_FOUND.getStatusCode()) {
      return null;
    } else {
      throw new RuntimeException("Request for key '" + key + "' failed: " + response.getStatusInfo());
    }
  }

  @Override
  public Map<String, String> getAll(Iterable<String> keys) {
    checkNotEDT();
    if (Sequence.fromIterable(keys).isEmpty()) {
      return MapSequence.fromMap(new HashMap<String, String>());
    }

    if (LOG.isDebugEnabled()) {
      LOG.debug("GET " + Sequence.fromIterable(keys).count() + " entries: " + Sequence.fromIterable(keys).first() + ", ..., " + Sequence.fromIterable(keys).last());
    }

    JSONArray json = new JSONArray();
    for (String key : keys) {
      json.put(key);
    }
    String body = json.toString();

    long start = System.currentTimeMillis();
    Response response = client.target(baseUrl + "getAll").request(MediaType.APPLICATION_JSON).put(Entity.text(body));
    if (response.getStatus() == Response.Status.OK.getStatusCode()) {
      String jsonStr = response.readEntity(String.class);
      JSONArray responseJson = new JSONArray(jsonStr);
      Map<String, String> result = MapSequence.fromMap(new LinkedHashMap<String, String>(16, (float) 0.75, false));
      for (Object entry_ : responseJson) {
        JSONObject entry = (JSONObject) entry_;
        MapSequence.fromMap(result).put(entry.getString("key"), entry.optString("value"));
      }
      long end = System.currentTimeMillis();
      if (LOG.isDebugEnabled()) {
        LOG.debug("GET " + Sequence.fromIterable(keys).count() + " entries took " + (end - start) + " ms");
      }
      return result;
    } else {
      throw new RuntimeException("Request for " + Sequence.fromIterable(keys).count() + " keys failed (" + Sequence.fromIterable(keys).first() + ", ..., " + Sequence.fromIterable(keys).last() + "): " + response.getStatusInfo());
    }
  }

  public void setAuthToken(String token) {
    this.authToken = token;
  }

  public String getEmail() {
    checkNotEDT();
    Response response = client.target(baseUrl + "getEmail").request().buildGet().invoke();
    if (response.getStatus() == Response.Status.OK.getStatusCode()) {
      return response.readEntity(String.class);
    } else {
      throw new RuntimeException("Request for e-mail address failed: " + response.getStatusInfo());
    }
  }

  @Override
  public void listen(final String key, final IKeyListener keyListener) {
    SseListener sseListener = new SseListener(key, keyListener);
    synchronized (listeners) {
      ListSequence.fromList(listeners).addElement(sseListener);
    }
  }

  @Override
  public void removeListener(final String key, final IKeyListener listener) {
    synchronized (listeners) {
      ListSequence.fromList(listeners).removeWhere(new IWhereFilter<SseListener>() {
        public boolean accept(SseListener it) {
          return Objects.equals(it.key, key) && it.keyListener == listener;
        }
      });
    }
  }

  @Override
  public void put(String key, String value) {
    checkNotEDT();
    if (!(key.matches("[a-zA-Z0-9-_]{43}"))) {
      if (LOG.isDebugEnabled()) {
        LOG.debug("PUT " + key + " = " + value);
      }
    }
    Response response = client.target(baseUrl + "put/" + URLEncoder.encode(key, StandardCharsets.UTF_8)).request(MediaType.TEXT_PLAIN).put(Entity.text(value));
    if (response.getStatusInfo().getFamily() != Response.Status.Family.SUCCESSFUL) {
      throw new RuntimeException("Failed to store entry (" + response.getStatusInfo() + ") " + key + " = " + value);
    }
  }

  @Override
  public void putAll(final Map<String, String> entries) {
    checkNotEDT();

    _FunctionTypes._void_P1_E0<? super JSONArray> sendBatch = new _FunctionTypes._void_P1_E0<JSONArray>() {
      public void invoke(JSONArray json) {
        if (LOG.isDebugEnabled()) {
          LOG.debug("PUT batch of " + json.length() + " entries");
        }
        Response response = client.target(baseUrl + "putAll").request(MediaType.APPLICATION_JSON).put(Entity.text(json.toString()));
        if (response.getStatusInfo().getFamily() != Response.Status.Family.SUCCESSFUL) {
          throw new RuntimeException("Failed to store " + MapSequence.fromMap(entries).count() + "entries (" + response.getStatusInfo() + ") " + MapSequence.fromMap(entries).first().key() + " = " + MapSequence.fromMap(entries).first().value() + ", ..., " + MapSequence.fromMap(entries).last().key() + " = " + MapSequence.fromMap(entries).last().value());
        }
      }
    };

    if (LOG.isDebugEnabled()) {
      LOG.debug("PUT " + MapSequence.fromMap(entries).count() + " entries");
    }
    JSONArray json = new JSONArray();
    int approxSize = 0;
    for (IMapping<String, String> entry : MapSequence.fromMap(entries)) {
      JSONObject jsonEntry = new JSONObject();
      jsonEntry.put("key", entry.key());
      jsonEntry.put("value", entry.value());
      approxSize += entry.key().length();
      approxSize += entry.value().length();
      json.put(jsonEntry);
      if (!(entry.key().matches("[a-zA-Z0-9-_]{43}"))) {
        if (LOG.isDebugEnabled()) {
          LOG.debug("PUT " + entry.key() + " = " + entry.value());
        }
      }

      if (json.length() >= 5000 || approxSize > 10000000) {
        sendBatch.invoke(json);
        json = new JSONArray();
        approxSize = 0;
      }
    }
    if (json.length() > 0) {
      sendBatch.invoke(json);
    }
  }

  @Override
  public void prefetch(String key) {
  }

  public int getClientId() {
    if (clientId == 0) {
      Response response = client.target(baseUrl + "counter/clientId").request().post(Entity.text(""));
      String idStr = response.readEntity(String.class);
      clientId = Integer.parseInt(idStr);
    }
    return clientId;
  }

  @Override
  public IDeserializingKeyValueStore getStoreCache() {
    return cache;
  }

  @Override
  public IKeyValueStore getAsyncStore() {
    return asyncStore;
  }

  @Override
  public synchronized IIdGenerator getIdGenerator() {
    if (idGenerator == null) {
      idGenerator = new IdGenerator(getClientId());
    }
    return idGenerator;
  }

  protected void checkNotEDT() {
    if (ThreadUtils.isInEDT()) {
      if (LOG.isEnabledFor(Level.WARN)) {
        LOG.warn("Performing network operations from the EDT will make the UI unresponsive", new RuntimeException());
      }
    }
  }

  public class SseListener {
    private String key;
    private IKeyListener keyListener;
    private final Object notificationLock = new Object();
    private String lastValue;
    private Sse[] sse = new Sse[2];
    private boolean disposed = false;

    public SseListener(final String key, IKeyListener listener) {
      this.key = key;
      this.keyListener = listener;
    }
    public void dispose() {
      if (disposed) {
        return;
      }
      disposed = true;
      for (int i = 0; i < sse.length; i++) {
        if (sse[i] != null) {
          sse[i].sse.close();
          sse[i] = null;
        }
      }
    }
    public synchronized void ensureConnected() {
      if (disposed) {
        return;
      }
      for (int i = 0; i < sse.length; i++) {
        if (sse[i] == null) {
          continue;
        }
        if (sse[i].birth > System.currentTimeMillis()) {
          sse[i].birth = System.currentTimeMillis();
        }
        if (!(sse[i].sse.isOpen())) {
          sse[i] = null;
        }
      }

      for (int i = 0; i < sse.length; i++) {
        // To support rebalancing after scaling the cluster a connection shouldn't be open for too long. 
        if (sse[i] != null && sse[i].getAge() > 20000) {
          sse[i].sse.close();
          sse[i] = null;
        }
      }

      long youngest = Sequence.fromIterable(Sequence.fromArray(sse)).where(new NotNullWhereFilter<Sse>()).select(new ISelector<Sse, Long>() {
        public Long select(Sse it) {
          return it.birth;
        }
      }).foldLeft(0L, new ILeftCombinator<Long, Long>() {
        public Long combine(Long s, Long it) {
          return Math.max(s, it);
        }
      });

      if (System.currentTimeMillis() - youngest < 5000) {
        return;
      }

      for (int i = 0; i < sse.length; i++) {
        if (sse[i] != null) {
          continue;
        }
        String url = baseUrl + "subscribe/" + URLEncoder.encode(key, StandardCharsets.UTF_8);
        if (LOG.isTraceEnabled()) {
          LOG.trace("Connecting to " + url);
        }
        WebTarget target = client.target(url);
        sse[i] = new Sse(SseEventSource.target(target).reconnectingEvery(1, TimeUnit.SECONDS).build());
        sse[i].sse.register(new Consumer<InboundSseEvent>() {
          @Override
          public void accept(InboundSseEvent event) {
            String value = event.readData();
            synchronized (notificationLock) {
              if (!(Objects.equals(value, lastValue))) {
                lastValue = value;
                keyListener.changed(key, value);
              }
            }
          }
        }, new Consumer<Throwable>() {
          @Override
          public void accept(Throwable ex) {
            if (LOG.isEnabledFor(Level.ERROR)) {
              LOG.error("", ex);
            }
          }
        });
        if (disposed) {
          return;
        }
        sse[i].sse.open();
        if (LOG.isTraceEnabled()) {
          LOG.trace("Connected to " + url);
        }
        break;
      }
    }
    public class Sse {
      private long birth = System.currentTimeMillis();
      private SseEventSource sse;
      public Sse(SseEventSource sse) {
        this.sse = sse;
      }
      public long getAge() {
        return System.currentTimeMillis() - birth;
      }
    }
  }

  private static boolean isEmptyString(String str) {
    return str == null || str.length() == 0;
  }
}
