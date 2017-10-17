// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import java.util.Arrays;
import android.os.Parcel;
import android.os.Parcelable$Creator;
import android.os.Parcelable;

class StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem implements Parcelable
{
    public static final Parcelable$Creator CREATOR;
    int Sf;
    boolean Sg;
    int[] Sh;
    int mPosition;
    
    static {
        CREATOR = (Parcelable$Creator)new aw();
    }
    
    StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem() {
    }
    
    StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem(final Parcel parcel) {
        final boolean b = true;
        boolean sg = false;
        this.mPosition = parcel.readInt();
        this.Sf = parcel.readInt();
        if (parcel.readInt() == (b ? 1 : 0)) {
            sg = b;
        }
        this.Sg = sg;
        final int int1 = parcel.readInt();
        if (int1 > 0) {
            parcel.readIntArray(this.Sh = new int[int1]);
        }
    }
    
    public int describeContents() {
        return 0;
    }
    
    public String toString() {
        return "FullSpanItem{mPosition=" + this.mPosition + ", mGapDir=" + this.Sf + ", mHasUnwantedGapAfter=" + this.Sg + ", mGapPerSpan=" + Arrays.toString(this.Sh) + '}';
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeInt(this.mPosition);
        parcel.writeInt(this.Sf);
        int n2;
        if (!this.Sg) {
            n2 = 0;
        }
        else {
            n2 = 1;
        }
        parcel.writeInt(n2);
        if (this.Sh != null && this.Sh.length > 0) {
            parcel.writeInt(this.Sh.length);
            parcel.writeIntArray(this.Sh);
        }
        else {
            parcel.writeInt(0);
        }
    }
}
