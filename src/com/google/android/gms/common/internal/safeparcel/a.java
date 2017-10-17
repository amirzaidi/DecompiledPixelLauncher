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
    public static void eT(final Parcel parcel, final int n, final Bundle bundle, final boolean b) {
        if (bundle != null) {
            final int fl = fl(parcel, n);
            parcel.writeBundle(bundle);
            ft(parcel, fl);
            return;
        }
        if (b) {
            eZ(parcel, n, 0);
        }
    }
    
    public static void eU(final Parcel parcel, final int n, final short n2) {
        eZ(parcel, n, 4);
        parcel.writeInt((int)n2);
    }
    
    public static void eV(final Parcel parcel, final int n, final long[] array, final boolean b) {
        if (array != null) {
            final int fl = fl(parcel, n);
            parcel.writeLongArray(array);
            ft(parcel, fl);
            return;
        }
        if (b) {
            eZ(parcel, n, 0);
        }
    }
    
    public static void eW(final Parcel parcel, final int n, final Parcelable parcelable, final int n2, final boolean b) {
        if (parcelable != null) {
            final int fl = fl(parcel, n);
            parcelable.writeToParcel(parcel, n2);
            ft(parcel, fl);
            return;
        }
        if (b) {
            eZ(parcel, n, 0);
        }
    }
    
    public static void eX(final Parcel parcel, final int n, final Float n2, final boolean b) {
        if (n2 != null) {
            eZ(parcel, n, 4);
            parcel.writeFloat((float)n2);
            return;
        }
        if (b) {
            eZ(parcel, n, 0);
        }
    }
    
    public static int eY(final Parcel parcel) {
        return fl(parcel, 20293);
    }
    
    private static void eZ(final Parcel parcel, final int n, final int n2) {
        if (n2 < (char)(-1)) {
            parcel.writeInt(n2 << 16 | n);
        }
        else {
            parcel.writeInt(0xFFFF0000 | n);
            parcel.writeInt(n2);
        }
    }
    
    public static void fa(final Parcel parcel, final int n, final boolean b) {
        int n2 = 0;
        eZ(parcel, n, 4);
        if (b) {
            n2 = 1;
        }
        parcel.writeInt(n2);
    }
    
    public static void fb(final Parcel parcel, final int n, final List list, final boolean b) {
        if (list != null) {
            final int fl = fl(parcel, n);
            final int size = list.size();
            parcel.writeInt(size);
            for (int i = 0; i < size; ++i) {
                parcel.writeInt((int)list.get(i));
            }
            ft(parcel, fl);
            return;
        }
        if (b) {
            eZ(parcel, n, 0);
        }
    }
    
    public static void fc(final Parcel parcel, final int n, final List list, final boolean b) {
        if (list != null) {
            final int fl = fl(parcel, n);
            final int size = list.size();
            parcel.writeInt(size);
            for (int i = 0; i < size; ++i) {
                final Parcelable parcelable = list.get(i);
                if (parcelable != null) {
                    fm(parcel, parcelable, 0);
                }
                else {
                    parcel.writeInt(0);
                }
            }
            ft(parcel, fl);
            return;
        }
        if (b) {
            eZ(parcel, n, 0);
        }
    }
    
    public static void fd(final Parcel parcel, final int n, final byte[][] array, final boolean b) {
        int i = 0;
        if (array != null) {
            final int fl = fl(parcel, n);
            final int length = array.length;
            parcel.writeInt(length);
            while (i < length) {
                parcel.writeByteArray(array[i]);
                ++i;
            }
            ft(parcel, fl);
            return;
        }
        if (b) {
            eZ(parcel, n, 0);
        }
    }
    
    public static void fe(final Parcel parcel, final int n) {
        ft(parcel, n);
    }
    
    public static void ff(final Parcel parcel, final int n, final IBinder binder, final boolean b) {
        if (binder != null) {
            final int fl = fl(parcel, n);
            parcel.writeStrongBinder(binder);
            ft(parcel, fl);
            return;
        }
        if (b) {
            eZ(parcel, n, 0);
        }
    }
    
    public static void fg(final Parcel parcel, final int n, final List list, final boolean b) {
        if (list != null) {
            final int fl = fl(parcel, n);
            parcel.writeList(list);
            ft(parcel, fl);
            return;
        }
        if (b) {
            eZ(parcel, n, 0);
        }
    }
    
    public static void fh(final Parcel parcel, final int n, final Parcel parcel2, final boolean b) {
        if (parcel2 != null) {
            final int fl = fl(parcel, n);
            parcel.appendFrom(parcel2, 0, parcel2.dataSize());
            ft(parcel, fl);
            return;
        }
        if (b) {
            eZ(parcel, n, 0);
        }
    }
    
    public static void fi(final Parcel parcel, final int n, final Integer n2, final boolean b) {
        if (n2 != null) {
            eZ(parcel, n, 4);
            parcel.writeInt((int)n2);
            return;
        }
        if (b) {
            eZ(parcel, n, 0);
        }
    }
    
    public static void fj(final Parcel parcel, final int n, final int n2) {
        eZ(parcel, n, 4);
        parcel.writeInt(n2);
    }
    
    public static void fk(final Parcel parcel, final int n, final String[] array, final boolean b) {
        if (array != null) {
            final int fl = fl(parcel, n);
            parcel.writeStringArray(array);
            ft(parcel, fl);
            return;
        }
        if (b) {
            eZ(parcel, n, 0);
        }
    }
    
    private static int fl(final Parcel parcel, final int n) {
        parcel.writeInt(0xFFFF0000 | n);
        parcel.writeInt(0);
        return parcel.dataPosition();
    }
    
    private static void fm(final Parcel parcel, final Parcelable parcelable, final int n) {
        final int dataPosition = parcel.dataPosition();
        parcel.writeInt(1);
        final int dataPosition2 = parcel.dataPosition();
        parcelable.writeToParcel(parcel, n);
        final int dataPosition3 = parcel.dataPosition();
        parcel.setDataPosition(dataPosition);
        parcel.writeInt(dataPosition3 - dataPosition2);
        parcel.setDataPosition(dataPosition3);
    }
    
    public static void fn(final Parcel parcel, final int n, final int[] array, final boolean b) {
        if (array != null) {
            final int fl = fl(parcel, n);
            parcel.writeIntArray(array);
            ft(parcel, fl);
            return;
        }
        if (b) {
            eZ(parcel, n, 0);
        }
    }
    
    public static void fo(final Parcel parcel, final int n, final String s, final boolean b) {
        if (s != null) {
            final int fl = fl(parcel, n);
            parcel.writeString(s);
            ft(parcel, fl);
            return;
        }
        if (b) {
            eZ(parcel, n, 0);
        }
    }
    
    public static void fp(final Parcel parcel, final int n, final Parcelable[] array, final int n2, final boolean b) {
        if (array != null) {
            final int fl = fl(parcel, n);
            final int length = array.length;
            parcel.writeInt(length);
            for (int i = 0; i < length; ++i) {
                final Parcelable parcelable = array[i];
                if (parcelable != null) {
                    fm(parcel, parcelable, n2);
                }
                else {
                    parcel.writeInt(0);
                }
            }
            ft(parcel, fl);
            return;
        }
        if (b) {
            eZ(parcel, n, 0);
        }
    }
    
    public static void fq(final Parcel parcel, final int n, final double n2) {
        eZ(parcel, n, 8);
        parcel.writeDouble(n2);
    }
    
    public static void fr(final Parcel parcel, final int n, final List list, final boolean b) {
        if (list != null) {
            final int fl = fl(parcel, n);
            parcel.writeStringList(list);
            ft(parcel, fl);
            return;
        }
        if (b) {
            eZ(parcel, n, 0);
        }
    }
    
    public static void fs(final Parcel parcel, final int n, final float n2) {
        eZ(parcel, n, 4);
        parcel.writeFloat(n2);
    }
    
    private static void ft(final Parcel parcel, final int n) {
        final int dataPosition = parcel.dataPosition();
        final int n2 = dataPosition - n;
        parcel.setDataPosition(n - 4);
        parcel.writeInt(n2);
        parcel.setDataPosition(dataPosition);
    }
    
    public static void fu(final Parcel parcel, final int n, final byte b) {
        eZ(parcel, n, 4);
        parcel.writeInt((int)b);
    }
    
    public static void fv(final Parcel parcel, final int n, final byte[] array, final boolean b) {
        if (array != null) {
            final int fl = fl(parcel, n);
            parcel.writeByteArray(array);
            ft(parcel, fl);
            return;
        }
        if (b) {
            eZ(parcel, n, 0);
        }
    }
    
    public static void fw(final Parcel parcel, final int n, final long n2) {
        eZ(parcel, n, 8);
        parcel.writeLong(n2);
    }
}
