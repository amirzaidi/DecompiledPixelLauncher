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
    final Bundle aai;
    
    static {
        CREATOR = (Parcelable$Creator)new r();
    }
    
    Fragment$SavedState(final Parcel parcel, final ClassLoader classLoader) {
        this.aai = parcel.readBundle();
        if (classLoader != null && this.aai != null) {
            this.aai.setClassLoader(classLoader);
        }
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeBundle(this.aai);
    }
}
