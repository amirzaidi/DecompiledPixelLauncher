// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view;

import android.os.Parcel;
import android.os.Parcelable$ClassLoaderCreator;

class z implements Parcelable$ClassLoaderCreator
{
    public AbsSavedState createFromParcel(final Parcel parcel) {
        return this.createFromParcel(parcel, null);
    }
    
    public AbsSavedState createFromParcel(final Parcel parcel, final ClassLoader classLoader) {
        if (parcel.readParcelable(classLoader) == null) {
            return AbsSavedState.Uv;
        }
        throw new IllegalStateException("superState must be null");
    }
    
    public AbsSavedState[] newArray(final int n) {
        return new AbsSavedState[n];
    }
}
