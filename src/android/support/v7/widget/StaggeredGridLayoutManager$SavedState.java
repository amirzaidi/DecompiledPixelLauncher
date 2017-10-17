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
    int[] SA;
    List SB;
    int St;
    int[] Su;
    boolean Sv;
    int Sw;
    boolean Sx;
    int Sy;
    int Sz;
    boolean mReverseLayout;
    
    static {
        CREATOR = (Parcelable$Creator)new aJ();
    }
    
    public StaggeredGridLayoutManager$SavedState() {
    }
    
    StaggeredGridLayoutManager$SavedState(final Parcel parcel) {
        boolean sx = false;
        final boolean b = true;
        this.Sw = parcel.readInt();
        this.St = parcel.readInt();
        this.Sy = parcel.readInt();
        if (this.Sy > 0) {
            parcel.readIntArray(this.SA = new int[this.Sy]);
        }
        this.Sz = parcel.readInt();
        if (this.Sz > 0) {
            parcel.readIntArray(this.Su = new int[this.Sz]);
        }
        this.mReverseLayout = (parcel.readInt() == (b ? 1 : 0) && b);
        this.Sv = (parcel.readInt() == (b ? 1 : 0) && b);
        if (parcel.readInt() == (b ? 1 : 0)) {
            sx = b;
        }
        this.Sx = sx;
        this.SB = parcel.readArrayList(StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem.class.getClassLoader());
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final int n2 = 1;
        int n3 = 0;
        parcel.writeInt(this.Sw);
        parcel.writeInt(this.St);
        parcel.writeInt(this.Sy);
        if (this.Sy > 0) {
            parcel.writeIntArray(this.SA);
        }
        parcel.writeInt(this.Sz);
        if (this.Sz > 0) {
            parcel.writeIntArray(this.Su);
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
        if (!this.Sv) {
            n5 = 0;
        }
        else {
            n5 = n2;
        }
        parcel.writeInt(n5);
        if (this.Sx) {
            n3 = n2;
        }
        parcel.writeInt(n3);
        parcel.writeList(this.SB);
    }
}
