// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.common;

import java.util.Iterator;
import java.io.DataInputStream;
import java.util.Map;
import java.util.HashMap;
import java.io.DataOutputStream;

public class c
{
    private static void Ur(final DataOutputStream dataOutputStream, final Object o) {
        int i = 0;
        if (!(o instanceof Integer)) {
            if (!(o instanceof Long)) {
                if (!(o instanceof Float)) {
                    if (!(o instanceof String)) {
                        if (!(o instanceof HashMap)) {
                            if (!(o instanceof int[])) {
                                if (o instanceof float[]) {
                                    final float[] array = (float[])o;
                                    dataOutputStream.writeInt(array.length);
                                    while (i < array.length) {
                                        dataOutputStream.writeFloat(array[i]);
                                        ++i;
                                    }
                                }
                            }
                            else {
                                final int[] array2 = (int[])o;
                                dataOutputStream.writeInt(array2.length);
                                while (i < array2.length) {
                                    dataOutputStream.writeInt(array2[i]);
                                    ++i;
                                }
                            }
                        }
                        else {
                            Uu(dataOutputStream, (Map)o);
                        }
                    }
                    else {
                        dataOutputStream.writeUTF((String)o);
                    }
                }
                else {
                    dataOutputStream.writeFloat((float)o);
                }
            }
            else {
                dataOutputStream.writeLong((long)o);
            }
        }
        else {
            dataOutputStream.writeInt((int)o);
        }
    }
    
    private static Object Us(final DataInputStream dataInputStream, final Class clazz) {
        int i = 0;
        if (clazz == Integer.class) {
            return dataInputStream.readInt();
        }
        if (clazz == Long.class) {
            return dataInputStream.readLong();
        }
        if (clazz == Float.class) {
            return dataInputStream.readFloat();
        }
        if (clazz == String.class) {
            return dataInputStream.readUTF();
        }
        if (clazz == int[].class) {
            final int int1 = dataInputStream.readInt();
            final int[] array = new int[int1];
            while (i < int1) {
                array[i] = dataInputStream.readInt();
                ++i;
            }
            return array;
        }
        if (clazz != float[].class) {
            return null;
        }
        final int int2 = dataInputStream.readInt();
        final float[] array2 = new float[int2];
        while (i < int2) {
            array2[i] = dataInputStream.readFloat();
            ++i;
        }
        return array2;
    }
    
    public static float[] Ut(final double n, final double n2) {
        final double radians = Math.toRadians(n);
        final double radians2 = Math.toRadians(n2);
        final double cos = Math.cos(radians);
        return new float[] { (float)(Math.cos(radians2) * cos), (float)(Math.sin(radians2) * cos), (float)Math.sin(radians) };
    }
    
    public static void Uu(final DataOutputStream dataOutputStream, final Map map) {
        dataOutputStream.writeInt(map.size());
        for (final Map.Entry<Object, V> entry : map.entrySet()) {
            Ur(dataOutputStream, entry.getKey());
            Ur(dataOutputStream, entry.getValue());
        }
    }
    
    public static HashMap Uv(final DataInputStream dataInputStream, final Class clazz, final Class clazz2) {
        final HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
        for (int int1 = dataInputStream.readInt(), i = 0; i < int1; ++i) {
            hashMap.put(Us(dataInputStream, clazz), Us(dataInputStream, clazz2));
        }
        return hashMap;
    }
}
