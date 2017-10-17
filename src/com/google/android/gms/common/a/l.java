// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.a;

public final class l
{
    public static void mA(final StringBuilder sb, final int[] array) {
        for (int i = 0; i < array.length; ++i) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(Integer.toString(array[i]));
        }
    }
    
    public static void mB(final StringBuilder sb, final long[] array) {
        for (int i = 0; i < array.length; ++i) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(Long.toString(array[i]));
        }
    }
    
    public static void mC(final StringBuilder sb, final boolean[] array) {
        for (int i = 0; i < array.length; ++i) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(Boolean.toString(array[i]));
        }
    }
    
    public static void mD(final StringBuilder sb, final double[] array) {
        for (int i = 0; i < array.length; ++i) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(Double.toString(array[i]));
        }
    }
    
    public static void mE(final StringBuilder sb, final float[] array) {
        for (int i = 0; i < array.length; ++i) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(Float.toString(array[i]));
        }
    }
    
    public static void my(final StringBuilder sb, final Object[] array) {
        for (int i = 0; i < array.length; ++i) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(array[i].toString());
        }
    }
    
    public static void mz(final StringBuilder sb, final String[] array) {
        for (int i = 0; i < array.length; ++i) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append("\"").append(array[i]).append("\"");
        }
    }
}
