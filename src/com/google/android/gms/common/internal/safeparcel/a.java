// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal.safeparcel;

import android.os.IBinder;
import java.util.List;
import android.os.Parcelable;
import android.os.Bundle;
import android.os.Parcel;

public class a
{
    public static void hH(final Parcel parcel, final int n, final Bundle bundle, final boolean b) {
        if (bundle != null) {
            final int hz = hZ(parcel, n);
            parcel.writeBundle(bundle);
            ih(parcel, hz);
            return;
        }
        if (b) {
            hN(parcel, n, 0);
        }
    }
    
    public static void hI(final Parcel parcel, final int n, final short n2) {
        hN(parcel, n, 4);
        parcel.writeInt((int)n2);
    }
    
    public static void hJ(final Parcel parcel, final int n, final long[] array, final boolean b) {
        if (array != null) {
            final int hz = hZ(parcel, n);
            parcel.writeLongArray(array);
            ih(parcel, hz);
            return;
        }
        if (b) {
            hN(parcel, n, 0);
        }
    }
    
    public static void hK(final Parcel parcel, final int n, final Parcelable parcelable, final int n2, final boolean b) {
        if (parcelable != null) {
            final int hz = hZ(parcel, n);
            parcelable.writeToParcel(parcel, n2);
            ih(parcel, hz);
            return;
        }
        if (b) {
            hN(parcel, n, 0);
        }
    }
    
    public static void hL(final Parcel parcel, final int n, final Float n2, final boolean b) {
        if (n2 != null) {
            hN(parcel, n, 4);
            parcel.writeFloat((float)n2);
            return;
        }
        if (b) {
            hN(parcel, n, 0);
        }
    }
    
    public static int hM(final Parcel parcel) {
        return hZ(parcel, 20293);
    }
    
    private static void hN(final Parcel parcel, final int n, final int n2) {
        if (n2 < (char)(-1)) {
            parcel.writeInt(n2 << 16 | n);
        }
        else {
            parcel.writeInt(0xFFFF0000 | n);
            parcel.writeInt(n2);
        }
    }
    
    public static void hO(final Parcel parcel, final int n, final boolean b) {
        int n2 = 0;
        hN(parcel, n, 4);
        if (b) {
            n2 = 1;
        }
        parcel.writeInt(n2);
    }
    
    public static void hP(final Parcel parcel, final int n, final List list, final boolean b) {
        if (list != null) {
            final int hz = hZ(parcel, n);
            final int size = list.size();
            parcel.writeInt(size);
            for (int i = 0; i < size; ++i) {
                parcel.writeInt((int)list.get(i));
            }
            ih(parcel, hz);
            return;
        }
        if (b) {
            hN(parcel, n, 0);
        }
    }
    
    public static void hQ(final Parcel parcel, final int n, final List list, final boolean b) {
        if (list != null) {
            final int hz = hZ(parcel, n);
            final int size = list.size();
            parcel.writeInt(size);
            for (int i = 0; i < size; ++i) {
                final Parcelable parcelable = list.get(i);
                if (parcelable != null) {
                    ia(parcel, parcelable, 0);
                }
                else {
                    parcel.writeInt(0);
                }
            }
            ih(parcel, hz);
            return;
        }
        if (b) {
            hN(parcel, n, 0);
        }
    }
    
    public static void hR(final Parcel parcel, final int n, final byte[][] array, final boolean b) {
        int i = 0;
        if (array != null) {
            final int hz = hZ(parcel, n);
            final int length = array.length;
            parcel.writeInt(length);
            while (i < length) {
                parcel.writeByteArray(array[i]);
                ++i;
            }
            ih(parcel, hz);
            return;
        }
        if (b) {
            hN(parcel, n, 0);
        }
    }
    
    public static void hS(final Parcel parcel, final int n) {
        ih(parcel, n);
    }
    
    public static void hT(final Parcel parcel, final int n, final IBinder binder, final boolean b) {
        if (binder != null) {
            final int hz = hZ(parcel, n);
            parcel.writeStrongBinder(binder);
            ih(parcel, hz);
            return;
        }
        if (b) {
            hN(parcel, n, 0);
        }
    }
    
    public static void hU(final Parcel parcel, final int n, final List list, final boolean b) {
        if (list != null) {
            final int hz = hZ(parcel, n);
            parcel.writeList(list);
            ih(parcel, hz);
            return;
        }
        if (b) {
            hN(parcel, n, 0);
        }
    }
    
    public static void hV(final Parcel parcel, final int n, final Parcel parcel2, final boolean b) {
        if (parcel2 != null) {
            final int hz = hZ(parcel, n);
            parcel.appendFrom(parcel2, 0, parcel2.dataSize());
            ih(parcel, hz);
            return;
        }
        if (b) {
            hN(parcel, n, 0);
        }
    }
    
    public static void hW(final Parcel parcel, final int n, final Integer n2, final boolean b) {
        if (n2 != null) {
            hN(parcel, n, 4);
            parcel.writeInt((int)n2);
            return;
        }
        if (b) {
            hN(parcel, n, 0);
        }
    }
    
    public static void hX(final Parcel parcel, final int n, final int n2) {
        hN(parcel, n, 4);
        parcel.writeInt(n2);
    }
    
    public static void hY(final Parcel parcel, final int n, final String[] array, final boolean b) {
        if (array != null) {
            final int hz = hZ(parcel, n);
            parcel.writeStringArray(array);
            ih(parcel, hz);
            return;
        }
        if (b) {
            hN(parcel, n, 0);
        }
    }
    
    private static int hZ(final Parcel parcel, final int n) {
        parcel.writeInt(0xFFFF0000 | n);
        parcel.writeInt(0);
        return parcel.dataPosition();
    }
    
    private static void ia(final Parcel parcel, final Parcelable parcelable, final int n) {
        final int dataPosition = parcel.dataPosition();
        parcel.writeInt(1);
        final int dataPosition2 = parcel.dataPosition();
        parcelable.writeToParcel(parcel, n);
        final int dataPosition3 = parcel.dataPosition();
        parcel.setDataPosition(dataPosition);
        parcel.writeInt(dataPosition3 - dataPosition2);
        parcel.setDataPosition(dataPosition3);
    }
    
    public static void ib(final Parcel parcel, final int n, final int[] array, final boolean b) {
        if (array != null) {
            final int hz = hZ(parcel, n);
            parcel.writeIntArray(array);
            ih(parcel, hz);
            return;
        }
        if (b) {
            hN(parcel, n, 0);
        }
    }
    
    public static void ic(final Parcel parcel, final int n, final String s, final boolean b) {
        if (s != null) {
            final int hz = hZ(parcel, n);
            parcel.writeString(s);
            ih(parcel, hz);
            return;
        }
        if (b) {
            hN(parcel, n, 0);
        }
    }
    
    public static void id(final Parcel parcel, final int n, final Parcelable[] array, final int n2, final boolean b) {
        if (array != null) {
            final int hz = hZ(parcel, n);
            final int length = array.length;
            parcel.writeInt(length);
            for (int i = 0; i < length; ++i) {
                final Parcelable parcelable = array[i];
                if (parcelable != null) {
                    ia(parcel, parcelable, n2);
                }
                else {
                    parcel.writeInt(0);
                }
            }
            ih(parcel, hz);
            return;
        }
        if (b) {
            hN(parcel, n, 0);
        }
    }
    
    public static void ie(final Parcel parcel, final int n, final double n2) {
        hN(parcel, n, 8);
        parcel.writeDouble(n2);
    }
    
    public static void if(final Parcel parcel, final int n, final List list, final boolean b) {
        if (list != null) {
            final int hz = hZ(parcel, n);
            parcel.writeStringList(list);
            ih(parcel, hz);
            return;
        }
        if (b) {
            hN(parcel, n, 0);
        }
    }
    
    public static void ig(final Parcel parcel, final int n, final float n2) {
        hN(parcel, n, 4);
        parcel.writeFloat(n2);
    }
    
    private static void ih(final Parcel parcel, final int n) {
        final int dataPosition = parcel.dataPosition();
        final int n2 = dataPosition - n;
        parcel.setDataPosition(n - 4);
        parcel.writeInt(n2);
        parcel.setDataPosition(dataPosition);
    }
    
    public static void ii(final Parcel parcel, final int n, final byte b) {
        hN(parcel, n, 4);
        parcel.writeInt((int)b);
    }
    
    public static void ij(final Parcel parcel, final int n, final byte[] array, final boolean b) {
        if (array != null) {
            final int hz = hZ(parcel, n);
            parcel.writeByteArray(array);
            ih(parcel, hz);
            return;
        }
        if (b) {
            hN(parcel, n, 0);
        }
    }
    
    public static void ik(final Parcel parcel, final int n, final long n2) {
        hN(parcel, n, 8);
        parcel.writeLong(n2);
    }
}
