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
    public static final AbsSavedState Uv;
    private final Parcelable Uu;
    
    static {
        Uv = new AbsSavedState$1();
        CREATOR = (Parcelable$Creator)new z();
    }
    
    private AbsSavedState() {
        this.Uu = null;
    }
    
    protected AbsSavedState(final Parcel parcel, final ClassLoader classLoader) {
        Object uu = parcel.readParcelable(classLoader);
        if (uu == null) {
            uu = AbsSavedState.Uv;
        }
        this.Uu = (Parcelable)uu;
    }
    
    protected AbsSavedState(Parcelable uu) {
        if (uu != null) {
            if (uu == AbsSavedState.Uv) {
                uu = null;
            }
            this.Uu = uu;
            return;
        }
        throw new IllegalArgumentException("superState must not be null");
    }
    
    public final Parcelable afq() {
        return this.Uu;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeParcelable(this.Uu, n);
    }
}
