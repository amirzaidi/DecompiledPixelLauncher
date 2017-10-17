// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.os.Parcel;
import android.os.Bundle;
import android.os.Parcelable$Creator;
import android.os.Parcelable;

public class Fragment$SavedState implements Parcelable
{
    public static final Parcelable$Creator CREATOR;
    final Bundle abN;
    
    static {
        CREATOR = (Parcelable$Creator)new t();
    }
    
    Fragment$SavedState(final Parcel parcel, final ClassLoader classLoader) {
        this.abN = parcel.readBundle();
        if (classLoader != null && this.abN != null) {
            this.abN.setClassLoader(classLoader);
        }
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeBundle(this.abN);
    }
}
