package org.modelix.model.persistent;



import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.net.URLDecoder;

public class SerializationUtil {
  public static String escape(String value) {
    if (value == null) {
      return "%00";
    }
    return URLEncoder.encode(value, StandardCharsets.UTF_8);
  }

  public static String unescape(String value) {
    if (value == null) {
      return null;
    }
    if ("%00".equals(value)) {
      return null;
    }
    return URLDecoder.decode(value, StandardCharsets.UTF_8);
  }

  public static String longToHex(long value) {
    return Long.toHexString(value);
  }

  public static long longFromHex(String hex) {
    return Long.parseUnsignedLong(hex, 16);
  }

  public static String intToHex(int value) {
    return Integer.toHexString(value);
  }

  public static int intFromHex(String hex) {
    return Integer.parseUnsignedInt(hex, 16);
  }

  public static String nullAsEmptyString(String str) {
    if (str == null) {
      return "";
    }
    if (str.length() == 0) {
      throw new RuntimeException("Empty string not allowed");
    }
    return str;
  }

  public static String emptyStringAsNull(String str) {
    return ((str == null || str.length() == 0) ? null : str);
  }
}
