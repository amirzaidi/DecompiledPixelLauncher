// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view;

import android.os.Parcel;
import android.os.Parcelable$ClassLoaderCreator;

class v implements Parcelable$ClassLoaderCreator
{
    public ViewPager$SavedState createFromParcel(final Parcel parcel) {
        return new ViewPager$SavedState(parcel, null);
    }
    
    public ViewPager$SavedState createFromParcel(final Parcel parcel, final ClassLoader classLoader) {
        return new ViewPager$SavedState(parcel, classLoader);
    }
    
    public ViewPager$SavedState[] newArray(final int n) {
        return new ViewPager$SavedState[n];
    }
}
