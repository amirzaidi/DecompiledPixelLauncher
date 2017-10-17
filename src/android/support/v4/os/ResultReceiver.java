// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.os;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Handler;
import android.os.Parcelable$Creator;
import android.os.Parcelable;

public class ResultReceiver implements Parcelable
{
    public static final Parcelable$Creator CREATOR;
    final boolean aeP;
    IResultReceiver aeQ;
    final Handler mHandler;
    
    static {
        CREATOR = (Parcelable$Creator)new c();
    }
    
    ResultReceiver(final Parcel parcel) {
        this.aeP = false;
        this.mHandler = null;
        this.aeQ = IResultReceiver$Stub.asInterface(parcel.readStrongBinder());
    }
    
    public int describeContents() {
        return 0;
    }
    
    protected void onReceiveResult(final int n, final Bundle bundle) {
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        synchronized (this) {
            if (this.aeQ == null) {
                this.aeQ = new e(this);
            }
            parcel.writeStrongBinder(this.aeQ.asBinder());
        }
    }
}
