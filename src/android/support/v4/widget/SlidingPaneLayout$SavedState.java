// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.widget;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import android.support.v4.view.AbsSavedState;

class SlidingPaneLayout$SavedState extends AbsSavedState
{
    public static final Parcelable$Creator CREATOR;
    boolean TV;
    
    static {
        CREATOR = (Parcelable$Creator)new h();
    }
    
    SlidingPaneLayout$SavedState(final Parcel parcel, final ClassLoader classLoader) {
        boolean tv = false;
        super(parcel, classLoader);
        if (parcel.readInt() != 0) {
            tv = true;
        }
        this.TV = tv;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        int n2 = 0;
        super.writeToParcel(parcel, n);
        if (this.TV) {
            n2 = 1;
        }
        parcel.writeInt(n2);
    }
}
