// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Field;
import java.lang.reflect.Array;

public final class ay
{
    private static String uL(final String s) {
        int i = 0;
        final StringBuffer sb = new StringBuffer();
        while (i < s.length()) {
            final char char1 = s.charAt(i);
            if (i != 0) {
                if (!Character.isUpperCase(char1)) {
                    sb.append(char1);
                }
                else {
                    sb.append('_').append(Character.toLowerCase(char1));
                }
            }
            else {
                sb.append(Character.toLowerCase(char1));
            }
            ++i;
        }
        return sb.toString();
    }
    
    private static void uM(final String s, Object o, final StringBuffer sb, final StringBuffer sb2) {
        if (o != null) {
        Label_0515_Outer:
            while (true) {
            Label_0575_Outer:
                while (true) {
                    Class<?> class1 = null;
                    String name2 = null;
                Label_0528:
                    while (true) {
                        if (o instanceof aC) {
                            final int length = sb.length();
                            if (s != null) {
                                sb2.append(sb).append(uL(s)).append(" <\n");
                                sb.append("  ");
                            }
                            class1 = o.getClass();
                            final Field[] fields = class1.getFields();
                            for (int length2 = fields.length, i = 0; i < length2; ++i) {
                                final Field field = fields[i];
                                final int modifiers = field.getModifiers();
                                final String name = field.getName();
                                if (!"cachedSize".equals(name) && (modifiers & 0x1) == 0x1 && (modifiers & 0x8) != 0x8 && !name.startsWith("_") && !name.endsWith("_")) {
                                    final Class<?> type = field.getType();
                                    final Object value = field.get(o);
                                    if (!type.isArray()) {
                                        uM(name, value, sb, sb2);
                                    }
                                    else if (type.getComponentType() != Byte.TYPE) {
                                        int length3;
                                        if (value != null) {
                                            length3 = Array.getLength(value);
                                        }
                                        else {
                                            length3 = 0;
                                        }
                                        for (int j = 0; j < length3; ++j) {
                                            uM(name, Array.get(value, j), sb, sb2);
                                        }
                                    }
                                    else {
                                        uM(name, value, sb, sb2);
                                    }
                                }
                            }
                            final Method[] methods = class1.getMethods();
                            final int length4 = methods.length;
                            final int n = 0;
                            break Label_0147;
                        }
                        sb2.append(sb).append(uL(s)).append(": ");
                        if (o instanceof String) {
                            break Label_0515_Outer;
                        }
                        if (o instanceof byte[]) {
                            break Label_0515_Outer;
                        }
                        sb2.append(o);
                        sb2.append("\n");
                        return;
                        final int length4;
                        int n = 0;
                        if (n >= length4) {
                            if (s != null) {
                                final int length;
                                sb.setLength(length);
                                sb2.append(sb).append(">\n");
                            }
                            return;
                        }
                        else {
                            final Method[] methods;
                            name2 = methods[n].getName();
                            if (name2.startsWith("set")) {
                                break Label_0528;
                            }
                        }
                        ++n;
                        continue Label_0515_Outer;
                    }
                    final String substring = name2.substring(3);
                    try {
                        final String value2 = String.valueOf(substring);
                        try {
                            final int length5 = value2.length();
                            final String s2 = "has";
                            Label_0715: {
                                if (length5 != 0) {
                                    break Label_0715;
                                }
                                String concat = new String(s2);
                                while (true) {
                                    if (!(boolean)class1.getMethod(concat, (Class<?>[])new Class[0]).invoke(o, new Object[0])) {
                                        continue Label_0575_Outer;
                                    }
                                    try {
                                        final String value3 = String.valueOf(substring);
                                        try {
                                            final int length6 = value3.length();
                                            final String s3 = "get";
                                            String concat2;
                                            if (length6 == 0) {
                                                concat2 = new String(s3);
                                            }
                                            else {
                                                concat2 = s3.concat(value3);
                                            }
                                            uM(substring, class1.getMethod(concat2, (Class<?>[])new Class[0]).invoke(o, new Object[0]), sb, sb2);
                                            continue Label_0575_Outer;
                                            concat = s2.concat(value2);
                                            continue;
                                            o = o;
                                            uP((byte[])o, sb2);
                                            continue Label_0515_Outer;
                                            o = o;
                                            sb2.append("\"").append(uN((String)o)).append("\"");
                                        }
                                        catch (NoSuchMethodException ex) {}
                                    }
                                    catch (NoSuchMethodException ex2) {}
                                    break;
                                }
                            }
                        }
                        catch (NoSuchMethodException ex3) {}
                    }
                    catch (NoSuchMethodException ex4) {}
                    break;
                }
                break;
            }
        }
    }
    
    private static String uN(String concat) {
        final int n = 200;
        if (!concat.startsWith("http") && concat.length() > n) {
            concat = String.valueOf(concat.substring(0, n)).concat("[...]");
        }
        return uQ(concat);
    }
    
    public static String uO(final aC ac) {
        if (ac == null) {
            return "";
        }
        final StringBuffer sb = new StringBuffer();
        try {
            try {
                uM(null, ac, new StringBuffer(), sb);
                return sb.toString();
            }
            catch (IllegalAccessException ex) {
                final String value = String.valueOf(ex.getMessage());
                final int length = value.length();
                final String s = "Error printing proto: ";
                String concat;
                if (length == 0) {
                    concat = new String(s);
                }
                else {
                    concat = s.concat(value);
                }
                return concat;
            }
            catch (InvocationTargetException ex2) {
                final String value2 = String.valueOf(ex2.getMessage());
                final int length2 = value2.length();
                final String s2 = "Error printing proto: ";
                String concat2;
                if (length2 == 0) {
                    concat2 = new String(s2);
                }
                else {
                    concat2 = s2.concat(value2);
                }
                return concat2;
            }
        }
        catch (IllegalAccessException ex3) {}
        catch (InvocationTargetException ex4) {}
    }
    
    private static void uP(final byte[] array, final StringBuffer sb) {
        final char c = '\\';
        final char c2 = '\"';
        if (array != null) {
            sb.append(c2);
            for (int i = 0; i < array.length; ++i) {
                final int n = array[i] & 0xFF;
                if (n != c && n != c2) {
                    if (n >= ' ' && n < '\u007f') {
                        sb.append((char)n);
                    }
                    else {
                        sb.append(String.format("\\%03o", n));
                    }
                }
                else {
                    sb.append(c).append((char)n);
                }
            }
            sb.append(c2);
            return;
        }
        sb.append("\"\"");
    }
    
    private static String uQ(final String s) {
        final int length = s.length();
        final StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; ++i) {
            final char char1 = s.charAt(i);
            if (char1 >= ' ' && char1 <= '~' && char1 != '\"' && char1 != '\'') {
                sb.append(char1);
            }
            else {
                sb.append(String.format("\\u%04x", (int)char1));
            }
        }
        return sb.toString();
    }
}
