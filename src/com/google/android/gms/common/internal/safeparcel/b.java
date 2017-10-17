// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal.safeparcel;

import android.os.IBinder;
import android.os.Parcelable;
import java.math.BigDecimal;
import android.os.Bundle;
import android.os.Parcelable$Creator;
import java.util.ArrayList;
import java.math.BigInteger;
import java.util.List;
import android.os.Parcel;

public class b
{
    public static void fA(final Parcel parcel, final int n) {
        parcel.setDataPosition(fO(parcel, n) + parcel.dataPosition());
    }
    
    public static byte[][] fB(final Parcel parcel, final int n) {
        int i = 0;
        final int fo = fO(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (fo != 0) {
            final int int1 = parcel.readInt();
            final byte[][] array = new byte[int1][];
            while (i < int1) {
                array[i] = parcel.createByteArray();
                ++i;
            }
            parcel.setDataPosition(dataPosition + fo);
            return array;
        }
        return null;
    }
    
    public static float[] fC(final Parcel parcel, final int n) {
        final int fo = fO(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (fo != 0) {
            final float[] floatArray = parcel.createFloatArray();
            parcel.setDataPosition(fo + dataPosition);
            return floatArray;
        }
        return null;
    }
    
    public static void fD(final Parcel parcel, final int n, final List list, final ClassLoader classLoader) {
        final int fo = fO(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (fo != 0) {
            parcel.readList(list, classLoader);
            parcel.setDataPosition(fo + dataPosition);
        }
    }
    
    public static Integer fE(final Parcel parcel, final int n) {
        final int fo = fO(parcel, n);
        if (fo != 0) {
            fY(parcel, n, fo, 4);
            return parcel.readInt();
        }
        return null;
    }
    
    public static BigInteger fF(final Parcel parcel, final int n) {
        final int fo = fO(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (fo != 0) {
            final byte[] byteArray = parcel.createByteArray();
            parcel.setDataPosition(fo + dataPosition);
            return new BigInteger(byteArray);
        }
        return null;
    }
    
    public static Float fG(final Parcel parcel, final int n) {
        final int fo = fO(parcel, n);
        if (fo != 0) {
            fY(parcel, n, fo, 4);
            return parcel.readFloat();
        }
        return null;
    }
    
    public static ArrayList fH(final Parcel parcel, final int n) {
        int i = 0;
        final int fo = fO(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (fo != 0) {
            final ArrayList<Integer> list = new ArrayList<Integer>();
            while (i < parcel.readInt()) {
                list.add(parcel.readInt());
                ++i;
            }
            parcel.setDataPosition(dataPosition + fo);
            return list;
        }
        return null;
    }
    
    public static byte fI(final Parcel parcel, final int n) {
        ge(parcel, n, 4);
        return (byte)parcel.readInt();
    }
    
    public static int fJ(final Parcel parcel) {
        final int fs = fS(parcel);
        final int fo = fO(parcel, fs);
        final int dataPosition = parcel.dataPosition();
        if (ga(fs) != 20293) {
            final String value = String.valueOf(Integer.toHexString(fs));
            final int length = value.length();
            final String s = "Expected object header. Got 0x";
            String concat;
            if (length == 0) {
                concat = new String(s);
            }
            else {
                concat = s.concat(value);
            }
            throw new zza$zza(concat, parcel);
        }
        final int n = dataPosition + fo;
        if (n >= dataPosition && n <= parcel.dataSize()) {
            return n;
        }
        throw new zza$zza(new StringBuilder(54).append("Size read is invalid start=").append(dataPosition).append(" end=").append(n).toString(), parcel);
    }
    
    public static int[] fK(final Parcel parcel, final int n) {
        final int fo = fO(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (fo != 0) {
            final int[] intArray = parcel.createIntArray();
            parcel.setDataPosition(fo + dataPosition);
            return intArray;
        }
        return null;
    }
    
    public static long fL(final Parcel parcel, final int n) {
        ge(parcel, n, 8);
        return parcel.readLong();
    }
    
    public static Object[] fM(final Parcel parcel, final int n, final Parcelable$Creator parcelable$Creator) {
        final int fo = fO(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (fo != 0) {
            final Object[] typedArray = parcel.createTypedArray(parcelable$Creator);
            parcel.setDataPosition(fo + dataPosition);
            return typedArray;
        }
        return null;
    }
    
    public static int fN(final Parcel parcel, final int n) {
        ge(parcel, n, 4);
        return parcel.readInt();
    }
    
    public static int fO(final Parcel parcel, final int n) {
        final int n2 = -65536;
        if ((n & n2) == n2) {
            return parcel.readInt();
        }
        return n >> 16 & (char)(-1);
    }
    
    public static Bundle fP(final Parcel parcel, final int n) {
        final int fo = fO(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (fo != 0) {
            final Bundle bundle = parcel.readBundle();
            parcel.setDataPosition(fo + dataPosition);
            return bundle;
        }
        return null;
    }
    
    public static String fQ(final Parcel parcel, final int n) {
        final int fo = fO(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (fo != 0) {
            final String string = parcel.readString();
            parcel.setDataPosition(fo + dataPosition);
            return string;
        }
        return null;
    }
    
    public static ArrayList fR(final Parcel parcel, final int n) {
        final int fo = fO(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (fo != 0) {
            final ArrayList stringArrayList = parcel.createStringArrayList();
            parcel.setDataPosition(fo + dataPosition);
            return stringArrayList;
        }
        return null;
    }
    
    public static int fS(final Parcel parcel) {
        return parcel.readInt();
    }
    
    public static long[] fT(final Parcel parcel, final int n) {
        final int fo = fO(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (fo != 0) {
            final long[] longArray = parcel.createLongArray();
            parcel.setDataPosition(fo + dataPosition);
            return longArray;
        }
        return null;
    }
    
    public static String[] fU(final Parcel parcel, final int n) {
        final int fo = fO(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (fo != 0) {
            final String[] stringArray = parcel.createStringArray();
            parcel.setDataPosition(fo + dataPosition);
            return stringArray;
        }
        return null;
    }
    
    public static BigDecimal[] fV(final Parcel parcel, final int n) {
        int i = 0;
        final int fo = fO(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (fo != 0) {
            final int int1 = parcel.readInt();
            final BigDecimal[] array = new BigDecimal[int1];
            while (i < int1) {
                array[i] = new BigDecimal(new BigInteger(parcel.createByteArray()), parcel.readInt());
                ++i;
            }
            parcel.setDataPosition(dataPosition + fo);
            return array;
        }
        return null;
    }
    
    public static Parcelable fW(final Parcel parcel, final int n, final Parcelable$Creator parcelable$Creator) {
        final int fo = fO(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (fo != 0) {
            final Parcelable parcelable = (Parcelable)parcelable$Creator.createFromParcel(parcel);
            parcel.setDataPosition(fo + dataPosition);
            return parcelable;
        }
        return null;
    }
    
    public static boolean fX(final Parcel parcel, final int n) {
        boolean b = false;
        ge(parcel, n, 4);
        if (parcel.readInt() != 0) {
            b = true;
        }
        return b;
    }
    
    private static void fY(final Parcel parcel, final int n, final int n2, final int n3) {
        if (n2 == n3) {
            return;
        }
        final String value = String.valueOf(Integer.toHexString(n2));
        throw new zza$zza(new StringBuilder(String.valueOf(value).length() + 46).append("Expected size ").append(n3).append(" got ").append(n2).append(" (0x").append(value).append(")").toString(), parcel);
    }
    
    public static ArrayList fZ(final Parcel parcel, final int n, final Parcelable$Creator parcelable$Creator) {
        final int fo = fO(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (fo != 0) {
            final ArrayList typedArrayList = parcel.createTypedArrayList(parcelable$Creator);
            parcel.setDataPosition(fo + dataPosition);
            return typedArrayList;
        }
        return null;
    }
    
    public static Parcel fx(final Parcel parcel, final int n) {
        final int fo = fO(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (fo != 0) {
            final Parcel obtain = Parcel.obtain();
            obtain.appendFrom(parcel, dataPosition, fo);
            parcel.setDataPosition(fo + dataPosition);
            return obtain;
        }
        return null;
    }
    
    public static short fy(final Parcel parcel, final int n) {
        ge(parcel, n, 4);
        return (short)parcel.readInt();
    }
    
    public static Parcel[] fz(final Parcel parcel, final int n) {
        int i = 0;
        final int fo = fO(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (fo != 0) {
            final int int1 = parcel.readInt();
            final Parcel[] array = new Parcel[int1];
            while (i < int1) {
                final int int2 = parcel.readInt();
                if (int2 == 0) {
                    array[i] = null;
                }
                else {
                    final int dataPosition2 = parcel.dataPosition();
                    final Parcel obtain = Parcel.obtain();
                    obtain.appendFrom(parcel, dataPosition2, int2);
                    array[i] = obtain;
                    parcel.setDataPosition(int2 + dataPosition2);
                }
                ++i;
            }
            parcel.setDataPosition(dataPosition + fo);
            return array;
        }
        return null;
    }
    
    public static int ga(final int n) {
        return (char)(-1) & n;
    }
    
    public static double gb(final Parcel parcel, final int n) {
        ge(parcel, n, 8);
        return parcel.readDouble();
    }
    
    public static BigInteger[] gc(final Parcel parcel, final int n) {
        int i = 0;
        final int fo = fO(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (fo != 0) {
            final int int1 = parcel.readInt();
            final BigInteger[] array = new BigInteger[int1];
            while (i < int1) {
                array[i] = new BigInteger(parcel.createByteArray());
                ++i;
            }
            parcel.setDataPosition(dataPosition + fo);
            return array;
        }
        return null;
    }
    
    public static boolean[] gd(final Parcel parcel, final int n) {
        final int fo = fO(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (fo != 0) {
            final boolean[] booleanArray = parcel.createBooleanArray();
            parcel.setDataPosition(fo + dataPosition);
            return booleanArray;
        }
        return null;
    }
    
    private static void ge(final Parcel parcel, final int n, final int n2) {
        final int fo = fO(parcel, n);
        if (fo == n2) {
            return;
        }
        final String value = String.valueOf(Integer.toHexString(fo));
        throw new zza$zza(new StringBuilder(String.valueOf(value).length() + 46).append("Expected size ").append(n2).append(" got ").append(fo).append(" (0x").append(value).append(")").toString(), parcel);
    }
    
    public static byte[] gf(final Parcel parcel, final int n) {
        final int fo = fO(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (fo != 0) {
            final byte[] byteArray = parcel.createByteArray();
            parcel.setDataPosition(fo + dataPosition);
            return byteArray;
        }
        return null;
    }
    
    public static double[] gg(final Parcel parcel, final int n) {
        final int fo = fO(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (fo != 0) {
            final double[] doubleArray = parcel.createDoubleArray();
            parcel.setDataPosition(fo + dataPosition);
            return doubleArray;
        }
        return null;
    }
    
    public static IBinder gh(final Parcel parcel, final int n) {
        final int fo = fO(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (fo != 0) {
            final IBinder strongBinder = parcel.readStrongBinder();
            parcel.setDataPosition(fo + dataPosition);
            return strongBinder;
        }
        return null;
    }
    
    public static BigDecimal gi(final Parcel parcel, final int n) {
        final int fo = fO(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (fo != 0) {
            final byte[] byteArray = parcel.createByteArray();
            final int int1 = parcel.readInt();
            parcel.setDataPosition(fo + dataPosition);
            return new BigDecimal(new BigInteger(byteArray), int1);
        }
        return null;
    }
    
    public static float gj(final Parcel parcel, final int n) {
        ge(parcel, n, 4);
        return parcel.readFloat();
    }
}
