// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.IBinder;
import android.os.Parcelable$Creator;
import android.os.Parcelable;

public final class BinderWrapper implements Parcelable
{
    public static final Parcelable$Creator CREATOR;
    private IBinder gu;
    
    static {
        CREATOR = (Parcelable$Creator)new k();
    }
    
    public BinderWrapper() {
        this.gu = null;
    }
    
    private BinderWrapper(final Parcel parcel) {
        this.gu = null;
        this.gu = parcel.readStrongBinder();
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeStrongBinder(this.gu);
    }
}
