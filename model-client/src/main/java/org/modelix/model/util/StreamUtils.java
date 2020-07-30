package org.modelix.model.util;

import java.util.List;
import java.util.PrimitiveIterator;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.LongStream;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;

public class StreamUtils {
    public static <T> Stream<T> toStream(Iterable<T> iterable) {
        return StreamSupport.stream(iterable.spliterator(), false);
    }

    public static int indexOf(LongStream stream, long value) {
        PrimitiveIterator.OfLong iterator = stream.iterator();
        int index = 0;
        while (iterator.hasNext()) {
            if (iterator.nextLong() == value) {
                return index;
            }
            index++;
        }
        return -1;
    }

    public static <T> Set<T> intersection(Stream<T> a, Set<T> b) {
        return a.filter(b::contains).collect(Collectors.toSet());
    }

    public static <T> T last(List<T> list) {
        return list.isEmpty() ? null : list.get(list.size() - 1);
    }

    public static <T> T removeLast(List<T> list) {
        return list.isEmpty() ? null : list.remove(list.size() - 1);
    }
}
