// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.iid;

import android.os.Parcel;
import android.os.Build$VERSION;
import android.os.IBinder;
import android.os.Messenger;
import android.os.Parcelable$Creator;
import android.os.Parcelable;

public class MessengerCompat implements Parcelable
{
    public static final Parcelable$Creator CREATOR;
    zzb KB;
    Messenger KC;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    public MessengerCompat(final IBinder binder) {
        if (Build$VERSION.SDK_INT < 21) {
            this.KB = zzb$zza.zzkv(binder);
        }
        else {
            this.KC = new Messenger(binder);
        }
    }
    
    public IBinder PY() {
        IBinder binder;
        if (this.KC == null) {
            binder = this.KB.asBinder();
        }
        else {
            binder = this.KC.getBinder();
        }
        return binder;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public boolean equals(final Object o) {
        if (o == null) {
            return false;
        }
        try {
            final IBinder py = this.PY();
            try {
                final MessengerCompat messengerCompat = (MessengerCompat)o;
                try {
                    return py.equals(messengerCompat.PY());
                }
                catch (ClassCastException ex) {
                    return false;
                }
            }
            catch (ClassCastException ex2) {}
        }
        catch (ClassCastException ex3) {}
    }
    
    public int hashCode() {
        return this.PY().hashCode();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        if (this.KC == null) {
            parcel.writeStrongBinder(this.KB.asBinder());
        }
        else {
            parcel.writeStrongBinder(this.KC.getBinder());
        }
    }
}
