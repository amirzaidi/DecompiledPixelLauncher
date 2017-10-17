// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal.safeparcel;

import java.util.List;
import android.os.IBinder;
import android.os.Parcelable;
import java.math.BigInteger;
import java.math.BigDecimal;
import java.util.ArrayList;
import android.os.Bundle;
import android.os.Parcelable$Creator;
import android.os.Parcel;

public class b
{
    public static Object[] iA(final Parcel parcel, final int n, final Parcelable$Creator parcelable$Creator) {
        final int ic = iC(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (ic != 0) {
            final Object[] typedArray = parcel.createTypedArray(parcelable$Creator);
            parcel.setDataPosition(ic + dataPosition);
            return typedArray;
        }
        return null;
    }
    
    public static int iB(final Parcel parcel, final int n) {
        iS(parcel, n, 4);
        return parcel.readInt();
    }
    
    public static int iC(final Parcel parcel, final int n) {
        final int n2 = -65536;
        if ((n & n2) == n2) {
            return parcel.readInt();
        }
        return n >> 16 & (char)(-1);
    }
    
    public static Bundle iD(final Parcel parcel, final int n) {
        final int ic = iC(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (ic != 0) {
            final Bundle bundle = parcel.readBundle();
            parcel.setDataPosition(ic + dataPosition);
            return bundle;
        }
        return null;
    }
    
    public static String iE(final Parcel parcel, final int n) {
        final int ic = iC(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (ic != 0) {
            final String string = parcel.readString();
            parcel.setDataPosition(ic + dataPosition);
            return string;
        }
        return null;
    }
    
    public static ArrayList iF(final Parcel parcel, final int n) {
        final int ic = iC(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (ic != 0) {
            final ArrayList stringArrayList = parcel.createStringArrayList();
            parcel.setDataPosition(ic + dataPosition);
            return stringArrayList;
        }
        return null;
    }
    
    public static int iG(final Parcel parcel) {
        return parcel.readInt();
    }
    
    public static long[] iH(final Parcel parcel, final int n) {
        final int ic = iC(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (ic != 0) {
            final long[] longArray = parcel.createLongArray();
            parcel.setDataPosition(ic + dataPosition);
            return longArray;
        }
        return null;
    }
    
    public static String[] iI(final Parcel parcel, final int n) {
        final int ic = iC(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (ic != 0) {
            final String[] stringArray = parcel.createStringArray();
            parcel.setDataPosition(ic + dataPosition);
            return stringArray;
        }
        return null;
    }
    
    public static BigDecimal[] iJ(final Parcel parcel, final int n) {
        int i = 0;
        final int ic = iC(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (ic != 0) {
            final int int1 = parcel.readInt();
            final BigDecimal[] array = new BigDecimal[int1];
            while (i < int1) {
                array[i] = new BigDecimal(new BigInteger(parcel.createByteArray()), parcel.readInt());
                ++i;
            }
            parcel.setDataPosition(dataPosition + ic);
            return array;
        }
        return null;
    }
    
    public static Parcelable iK(final Parcel parcel, final int n, final Parcelable$Creator parcelable$Creator) {
        final int ic = iC(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (ic != 0) {
            final Parcelable parcelable = (Parcelable)parcelable$Creator.createFromParcel(parcel);
            parcel.setDataPosition(ic + dataPosition);
            return parcelable;
        }
        return null;
    }
    
    public static boolean iL(final Parcel parcel, final int n) {
        boolean b = false;
        iS(parcel, n, 4);
        if (parcel.readInt() != 0) {
            b = true;
        }
        return b;
    }
    
    private static void iM(final Parcel parcel, final int n, final int n2, final int n3) {
        if (n2 == n3) {
            return;
        }
        final String value = String.valueOf(Integer.toHexString(n2));
        throw new zza$zza(new StringBuilder(String.valueOf(value).length() + 46).append("Expected size ").append(n3).append(" got ").append(n2).append(" (0x").append(value).append(")").toString(), parcel);
    }
    
    public static ArrayList iN(final Parcel parcel, final int n, final Parcelable$Creator parcelable$Creator) {
        final int ic = iC(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (ic != 0) {
            final ArrayList typedArrayList = parcel.createTypedArrayList(parcelable$Creator);
            parcel.setDataPosition(ic + dataPosition);
            return typedArrayList;
        }
        return null;
    }
    
    public static int iO(final int n) {
        return (char)(-1) & n;
    }
    
    public static double iP(final Parcel parcel, final int n) {
        iS(parcel, n, 8);
        return parcel.readDouble();
    }
    
    public static BigInteger[] iQ(final Parcel parcel, final int n) {
        int i = 0;
        final int ic = iC(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (ic != 0) {
            final int int1 = parcel.readInt();
            final BigInteger[] array = new BigInteger[int1];
            while (i < int1) {
                array[i] = new BigInteger(parcel.createByteArray());
                ++i;
            }
            parcel.setDataPosition(dataPosition + ic);
            return array;
        }
        return null;
    }
    
    public static boolean[] iR(final Parcel parcel, final int n) {
        final int ic = iC(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (ic != 0) {
            final boolean[] booleanArray = parcel.createBooleanArray();
            parcel.setDataPosition(ic + dataPosition);
            return booleanArray;
        }
        return null;
    }
    
    private static void iS(final Parcel parcel, final int n, final int n2) {
        final int ic = iC(parcel, n);
        if (ic == n2) {
            return;
        }
        final String value = String.valueOf(Integer.toHexString(ic));
        throw new zza$zza(new StringBuilder(String.valueOf(value).length() + 46).append("Expected size ").append(n2).append(" got ").append(ic).append(" (0x").append(value).append(")").toString(), parcel);
    }
    
    public static byte[] iT(final Parcel parcel, final int n) {
        final int ic = iC(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (ic != 0) {
            final byte[] byteArray = parcel.createByteArray();
            parcel.setDataPosition(ic + dataPosition);
            return byteArray;
        }
        return null;
    }
    
    public static double[] iU(final Parcel parcel, final int n) {
        final int ic = iC(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (ic != 0) {
            final double[] doubleArray = parcel.createDoubleArray();
            parcel.setDataPosition(ic + dataPosition);
            return doubleArray;
        }
        return null;
    }
    
    public static IBinder iV(final Parcel parcel, final int n) {
        final int ic = iC(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (ic != 0) {
            final IBinder strongBinder = parcel.readStrongBinder();
            parcel.setDataPosition(ic + dataPosition);
            return strongBinder;
        }
        return null;
    }
    
    public static BigDecimal iW(final Parcel parcel, final int n) {
        final int ic = iC(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (ic != 0) {
            final byte[] byteArray = parcel.createByteArray();
            final int int1 = parcel.readInt();
            parcel.setDataPosition(ic + dataPosition);
            return new BigDecimal(new BigInteger(byteArray), int1);
        }
        return null;
    }
    
    public static float iX(final Parcel parcel, final int n) {
        iS(parcel, n, 4);
        return parcel.readFloat();
    }
    
    public static Parcel il(final Parcel parcel, final int n) {
        final int ic = iC(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (ic != 0) {
            final Parcel obtain = Parcel.obtain();
            obtain.appendFrom(parcel, dataPosition, ic);
            parcel.setDataPosition(ic + dataPosition);
            return obtain;
        }
        return null;
    }
    
    public static short im(final Parcel parcel, final int n) {
        iS(parcel, n, 4);
        return (short)parcel.readInt();
    }
    
    public static Parcel[] in(final Parcel parcel, final int n) {
        int i = 0;
        final int ic = iC(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (ic != 0) {
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
            parcel.setDataPosition(dataPosition + ic);
            return array;
        }
        return null;
    }
    
    public static void io(final Parcel parcel, final int n) {
        parcel.setDataPosition(iC(parcel, n) + parcel.dataPosition());
    }
    
    public static byte[][] ip(final Parcel parcel, final int n) {
        int i = 0;
        final int ic = iC(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (ic != 0) {
            final int int1 = parcel.readInt();
            final byte[][] array = new byte[int1][];
            while (i < int1) {
                array[i] = parcel.createByteArray();
                ++i;
            }
            parcel.setDataPosition(dataPosition + ic);
            return array;
        }
        return null;
    }
    
    public static float[] iq(final Parcel parcel, final int n) {
        final int ic = iC(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (ic != 0) {
            final float[] floatArray = parcel.createFloatArray();
            parcel.setDataPosition(ic + dataPosition);
            return floatArray;
        }
        return null;
    }
    
    public static void ir(final Parcel parcel, final int n, final List list, final ClassLoader classLoader) {
        final int ic = iC(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (ic != 0) {
            parcel.readList(list, classLoader);
            parcel.setDataPosition(ic + dataPosition);
        }
    }
    
    public static Integer is(final Parcel parcel, final int n) {
        final int ic = iC(parcel, n);
        if (ic != 0) {
            iM(parcel, n, ic, 4);
            return parcel.readInt();
        }
        return null;
    }
    
    public static BigInteger it(final Parcel parcel, final int n) {
        final int ic = iC(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (ic != 0) {
            final byte[] byteArray = parcel.createByteArray();
            parcel.setDataPosition(ic + dataPosition);
            return new BigInteger(byteArray);
        }
        return null;
    }
    
    public static Float iu(final Parcel parcel, final int n) {
        final int ic = iC(parcel, n);
        if (ic != 0) {
            iM(parcel, n, ic, 4);
            return parcel.readFloat();
        }
        return null;
    }
    
    public static ArrayList iv(final Parcel parcel, final int n) {
        int i = 0;
        final int ic = iC(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (ic != 0) {
            final ArrayList<Integer> list = new ArrayList<Integer>();
            while (i < parcel.readInt()) {
                list.add(parcel.readInt());
                ++i;
            }
            parcel.setDataPosition(dataPosition + ic);
            return list;
        }
        return null;
    }
    
    public static byte iw(final Parcel parcel, final int n) {
        iS(parcel, n, 4);
        return (byte)parcel.readInt();
    }
    
    public static int ix(final Parcel parcel) {
        final int ig = iG(parcel);
        final int ic = iC(parcel, ig);
        final int dataPosition = parcel.dataPosition();
        if (iO(ig) != 20293) {
            final String value = String.valueOf(Integer.toHexString(ig));
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
        final int n = dataPosition + ic;
        if (n >= dataPosition && n <= parcel.dataSize()) {
            return n;
        }
        throw new zza$zza(new StringBuilder(54).append("Size read is invalid start=").append(dataPosition).append(" end=").append(n).toString(), parcel);
    }
    
    public static int[] iy(final Parcel parcel, final int n) {
        final int ic = iC(parcel, n);
        final int dataPosition = parcel.dataPosition();
        if (ic != 0) {
            final int[] intArray = parcel.createIntArray();
            parcel.setDataPosition(ic + dataPosition);
            return intArray;
        }
        return null;
    }
    
    public static long iz(final Parcel parcel, final int n) {
        iS(parcel, n, 8);
        return parcel.readLong();
    }
}
