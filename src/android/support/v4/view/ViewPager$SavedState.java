// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;

public class ViewPager$SavedState extends AbsSavedState
{
    public static final Parcelable$Creator CREATOR;
    ClassLoader UI;
    Parcelable UJ;
    int position;
    
    static {
        CREATOR = (Parcelable$Creator)new v();
    }
    
    ViewPager$SavedState(final Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        if (classLoader == null) {
            classLoader = this.getClass().getClassLoader();
        }
        this.position = parcel.readInt();
        this.UJ = parcel.readParcelable(classLoader);
        this.UI = classLoader;
    }
    
    public String toString() {
        return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.position + "}";
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        super.writeToParcel(parcel, n);
        parcel.writeInt(this.position);
        parcel.writeParcelable(this.UJ, n);
    }
}
