// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.widget;

import android.os.Parcel;
import android.os.Parcelable$ClassLoaderCreator;

class h implements Parcelable$ClassLoaderCreator
{
    public SlidingPaneLayout$SavedState createFromParcel(final Parcel parcel) {
        return new SlidingPaneLayout$SavedState(parcel, null);
    }
    
    public SlidingPaneLayout$SavedState createFromParcel(final Parcel parcel, final ClassLoader classLoader) {
        return new SlidingPaneLayout$SavedState(parcel, null);
    }
    
    public SlidingPaneLayout$SavedState[] newArray(final int n) {
        return new SlidingPaneLayout$SavedState[n];
    }
}
