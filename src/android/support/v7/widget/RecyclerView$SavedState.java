// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import android.support.v4.view.AbsSavedState;

public class RecyclerView$SavedState extends AbsSavedState
{
    public static final Parcelable$Creator CREATOR;
    Parcelable OV;
    
    static {
        CREATOR = (Parcelable$Creator)new aD();
    }
    
    RecyclerView$SavedState(final Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        if (classLoader == null) {
            classLoader = p.class.getClassLoader();
        }
        this.OV = parcel.readParcelable(classLoader);
    }
    
    RecyclerView$SavedState(final Parcelable parcelable) {
        super(parcelable);
    }
    
    void WP(final RecyclerView$SavedState recyclerView$SavedState) {
        this.OV = recyclerView$SavedState.OV;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        super.writeToParcel(parcel, n);
        parcel.writeParcelable(this.OV, 0);
    }
}
