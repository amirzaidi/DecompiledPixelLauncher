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
    zzb IW;
    Messenger IX;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    public MessengerCompat(final IBinder binder) {
        if (Build$VERSION.SDK_INT < 21) {
            this.IW = zzb$zza.zzkv(binder);
        }
        else {
            this.IX = new Messenger(binder);
        }
    }
    
    public IBinder Pf() {
        IBinder binder;
        if (this.IX == null) {
            binder = this.IW.asBinder();
        }
        else {
            binder = this.IX.getBinder();
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
            final IBinder pf = this.Pf();
            try {
                final MessengerCompat messengerCompat = (MessengerCompat)o;
                try {
                    return pf.equals(messengerCompat.Pf());
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
        return this.Pf().hashCode();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        if (this.IX == null) {
            parcel.writeStrongBinder(this.IW.asBinder());
        }
        else {
            parcel.writeStrongBinder(this.IX.getBinder());
        }
    }
}
