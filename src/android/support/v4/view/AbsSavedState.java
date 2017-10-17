// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import android.os.Parcelable;

public abstract class AbsSavedState implements Parcelable
{
    public static final Parcelable$Creator CREATOR;
    public static final AbsSavedState VV;
    private final Parcelable VU;
    
    static {
        VV = new AbsSavedState$1();
        CREATOR = (Parcelable$Creator)new z();
    }
    
    private AbsSavedState() {
        this.VU = null;
    }
    
    protected AbsSavedState(final Parcel parcel, final ClassLoader classLoader) {
        Object vu = parcel.readParcelable(classLoader);
        if (vu == null) {
            vu = AbsSavedState.VV;
        }
        this.VU = (Parcelable)vu;
    }
    
    protected AbsSavedState(Parcelable vu) {
        if (vu != null) {
            if (vu == AbsSavedState.VV) {
                vu = null;
            }
            this.VU = vu;
            return;
        }
        throw new IllegalArgumentException("superState must not be null");
    }
    
    public final Parcelable ago() {
        return this.VU;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeParcelable(this.VU, n);
    }
}
