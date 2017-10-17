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
    int Se;
    boolean Sf;
    int Sg;
    
    static {
        CREATOR = (Parcelable$Creator)new au();
    }
    
    public LinearLayoutManager$SavedState() {
    }
    
    LinearLayoutManager$SavedState(final Parcel parcel) {
        boolean sf = true;
        this.Sg = parcel.readInt();
        this.Se = parcel.readInt();
        if (parcel.readInt() != (sf ? 1 : 0)) {
            sf = false;
        }
        this.Sf = sf;
    }
    
    public LinearLayoutManager$SavedState(final LinearLayoutManager$SavedState linearLayoutManager$SavedState) {
        this.Sg = linearLayoutManager$SavedState.Sg;
        this.Se = linearLayoutManager$SavedState.Se;
        this.Sf = linearLayoutManager$SavedState.Sf;
    }
    
    void abc() {
        this.Sg = -1;
    }
    
    boolean abd() {
        boolean b = false;
        if (this.Sg >= 0) {
            b = true;
        }
        return b;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        int n2 = 0;
        parcel.writeInt(this.Sg);
        parcel.writeInt(this.Se);
        if (this.Sf) {
            n2 = 1;
        }
        parcel.writeInt(n2);
    }
}
