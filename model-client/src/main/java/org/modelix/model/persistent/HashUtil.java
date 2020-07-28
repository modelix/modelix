package org.modelix.model.persistent;



import java.util.regex.Pattern;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.Base64;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.regex.Matcher;

public class HashUtil {

  private static final Pattern HASH_PATTERN = Pattern.compile("[a-zA-Z0-9\\-_]{43}");
  private static final Charset UTF8 = StandardCharsets.UTF_8;

  public static String sha256(byte[] input) {
    try {
      MessageDigest digest = MessageDigest.getInstance("SHA-256");
      digest.update(input);
      byte[] sha256Bytes = digest.digest();
      return Base64.getUrlEncoder().withoutPadding().encodeToString(sha256Bytes);
    } catch (NoSuchAlgorithmException ex) {
      throw new RuntimeException(ex);
    }
  }

  public static String sha256(String input) {
    return sha256(input.getBytes(UTF8));
  }

  public static boolean isSha256(String value) {
    if (value == null) {
      return false;
    }
    if (value.length() != 43) {
      return false;
    }
    return HASH_PATTERN.matcher(value).matches();
  }

  public static Iterable<String> extractSha256(final String input) {
    return new Iterable<String>() {
      @Override
      public Iterator<String> iterator() {
        return new Iterator<String>() {
          private Matcher matcher = HASH_PATTERN.matcher(input);
          private boolean hasNext;
          private boolean hasNextInitialized;
          public void ensureInitialized() {
            if (!(hasNextInitialized)) {
              hasNext = matcher.find();
              hasNextInitialized = true;
            }
          }
          @Override
          public boolean hasNext() {
            ensureInitialized();
            return hasNext;
          }

          @Override
          public String next() {
            ensureInitialized();
            hasNextInitialized = false;
            return matcher.group();
          }
        };
      }
    };
  }

  public static String base64encode(String input) {
    return Base64.getUrlEncoder().withoutPadding().encodeToString(input.getBytes(UTF8));
  }

  public static String base64decode(String input) {
    return new String(Base64.getUrlDecoder().decode(input.getBytes(UTF8)), UTF8);
  }

}
