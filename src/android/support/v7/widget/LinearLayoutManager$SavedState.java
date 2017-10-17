// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import android.os.Parcelable;

public class LinearLayoutManager$SavedState implements Parcelable
{
    public static final Parcelable$Creator CREATOR;
    int Qx;
    boolean Qy;
    int Qz;
    
    static {
        CREATOR = (Parcelable$Creator)new au();
    }
    
    public LinearLayoutManager$SavedState() {
    }
    
    LinearLayoutManager$SavedState(final Parcel parcel) {
        boolean qy = true;
        this.Qz = parcel.readInt();
        this.Qx = parcel.readInt();
        if (parcel.readInt() != (qy ? 1 : 0)) {
            qy = false;
        }
        this.Qy = qy;
    }
    
    public LinearLayoutManager$SavedState(final LinearLayoutManager$SavedState linearLayoutManager$SavedState) {
        this.Qz = linearLayoutManager$SavedState.Qz;
        this.Qx = linearLayoutManager$SavedState.Qx;
        this.Qy = linearLayoutManager$SavedState.Qy;
    }
    
    void aaa() {
        this.Qz = -1;
    }
    
    boolean aab() {
        boolean b = false;
        if (this.Qz >= 0) {
            b = true;
        }
        return b;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        int n2 = 0;
        parcel.writeInt(this.Qz);
        parcel.writeInt(this.Qx);
        if (this.Qy) {
            n2 = 1;
        }
        parcel.writeInt(n2);
    }
}
