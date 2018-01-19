// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.aidl;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import android.os.Parcel;

public class a
{
    private static final ClassLoader NX;
    
    static {
        NX = a.class.getClassLoader();
    }
    
    public static boolean Eq(final Parcel parcel) {
        boolean b = true;
        if (parcel.readInt() != (b ? 1 : 0)) {
            b = false;
        }
        return b;
    }
    
    public static Parcelable Er(final Parcel parcel, final Parcelable$Creator parcelable$Creator) {
        if (parcel.readInt() != 0) {
            return (Parcelable)parcelable$Creator.createFromParcel(parcel);
        }
        return null;
    }
    
    public static void Es(final Parcel parcel, final Parcelable parcelable) {
        if (parcelable != null) {
            parcel.writeInt(1);
            parcelable.writeToParcel(parcel, 0);
        }
        else {
            parcel.writeInt(0);
        }
    }
    
    public static void Et(final Parcel parcel, final IInterface interface1) {
        if (interface1 != null) {
            parcel.writeStrongBinder(interface1.asBinder());
        }
        else {
            parcel.writeStrongBinder((IBinder)null);
        }
    }
    
    public static void Eu(final Parcel parcel, final boolean b) {
        int n = 0;
        if (b) {
            n = 1;
        }
        parcel.writeInt(n);
    }
}
