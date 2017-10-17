// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.widget;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import android.view.View$BaseSavedState;

class NestedScrollView$SavedState extends View$BaseSavedState
{
    public static final Parcelable$Creator CREATOR;
    public int Wy;
    
    static {
        CREATOR = (Parcelable$Creator)new j();
    }
    
    NestedScrollView$SavedState(final Parcel parcel) {
        super(parcel);
        this.Wy = parcel.readInt();
    }
    
    public String toString() {
        return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.Wy + "}";
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        super.writeToParcel(parcel, n);
        parcel.writeInt(this.Wy);
    }
}
