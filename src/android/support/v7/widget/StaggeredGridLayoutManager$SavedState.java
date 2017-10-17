// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.os.Parcel;
import java.util.List;
import android.os.Parcelable$Creator;
import android.os.Parcelable;

public class StaggeredGridLayoutManager$SavedState implements Parcelable
{
    public static final Parcelable$Creator CREATOR;
    int QK;
    int[] QL;
    boolean QM;
    int QN;
    boolean QO;
    int QP;
    int QQ;
    int[] QR;
    List QS;
    boolean mReverseLayout;
    
    static {
        CREATOR = (Parcelable$Creator)new aJ();
    }
    
    public StaggeredGridLayoutManager$SavedState() {
    }
    
    StaggeredGridLayoutManager$SavedState(final Parcel parcel) {
        boolean qo = false;
        final boolean b = true;
        this.QN = parcel.readInt();
        this.QK = parcel.readInt();
        this.QP = parcel.readInt();
        if (this.QP > 0) {
            parcel.readIntArray(this.QR = new int[this.QP]);
        }
        this.QQ = parcel.readInt();
        if (this.QQ > 0) {
            parcel.readIntArray(this.QL = new int[this.QQ]);
        }
        this.mReverseLayout = (parcel.readInt() == (b ? 1 : 0) && b);
        this.QM = (parcel.readInt() == (b ? 1 : 0) && b);
        if (parcel.readInt() == (b ? 1 : 0)) {
            qo = b;
        }
        this.QO = qo;
        this.QS = parcel.readArrayList(StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem.class.getClassLoader());
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final int n2 = 1;
        int n3 = 0;
        parcel.writeInt(this.QN);
        parcel.writeInt(this.QK);
        parcel.writeInt(this.QP);
        if (this.QP > 0) {
            parcel.writeIntArray(this.QR);
        }
        parcel.writeInt(this.QQ);
        if (this.QQ > 0) {
            parcel.writeIntArray(this.QL);
        }
        int n4;
        if (!this.mReverseLayout) {
            n4 = 0;
        }
        else {
            n4 = n2;
        }
        parcel.writeInt(n4);
        int n5;
        if (!this.QM) {
            n5 = 0;
        }
        else {
            n5 = n2;
        }
        parcel.writeInt(n5);
        if (this.QO) {
            n3 = n2;
        }
        parcel.writeInt(n3);
        parcel.writeList(this.QS);
    }
}
