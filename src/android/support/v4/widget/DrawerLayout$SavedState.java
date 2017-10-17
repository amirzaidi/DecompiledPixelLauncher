// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.widget;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import android.support.v4.view.AbsSavedState;

class DrawerLayout$SavedState extends AbsSavedState
{
    public static final Parcelable$Creator CREATOR;
    int TQ;
    int TR;
    int TS;
    int TT;
    int TU;
    
    static {
        CREATOR = (Parcelable$Creator)new k();
    }
    
    public DrawerLayout$SavedState(final Parcel parcel, final ClassLoader classLoader) {
        super(parcel, classLoader);
        this.TU = 0;
        this.TU = parcel.readInt();
        this.TR = parcel.readInt();
        this.TS = parcel.readInt();
        this.TT = parcel.readInt();
        this.TQ = parcel.readInt();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        super.writeToParcel(parcel, n);
        parcel.writeInt(this.TU);
        parcel.writeInt(this.TR);
        parcel.writeInt(this.TS);
        parcel.writeInt(this.TT);
        parcel.writeInt(this.TQ);
    }
}
