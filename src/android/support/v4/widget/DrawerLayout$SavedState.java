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
    int Ws;
    int Wt;
    int Wu;
    int Wv;
    int Ww;
    
    static {
        CREATOR = (Parcelable$Creator)new k();
    }
    
    public DrawerLayout$SavedState(final Parcel parcel, final ClassLoader classLoader) {
        super(parcel, classLoader);
        this.Ww = 0;
        this.Ww = parcel.readInt();
        this.Wt = parcel.readInt();
        this.Wu = parcel.readInt();
        this.Wv = parcel.readInt();
        this.Ws = parcel.readInt();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        super.writeToParcel(parcel, n);
        parcel.writeInt(this.Ww);
        parcel.writeInt(this.Wt);
        parcel.writeInt(this.Wu);
        parcel.writeInt(this.Wv);
        parcel.writeInt(this.Ws);
    }
}
