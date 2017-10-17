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
    int TO;
    boolean TP;
    int[] TQ;
    int mPosition;
    
    static {
        CREATOR = (Parcelable$Creator)new aw();
    }
    
    StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem() {
    }
    
    StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem(final Parcel parcel) {
        final boolean b = true;
        boolean tp = false;
        this.mPosition = parcel.readInt();
        this.TO = parcel.readInt();
        if (parcel.readInt() == (b ? 1 : 0)) {
            tp = b;
        }
        this.TP = tp;
        final int int1 = parcel.readInt();
        if (int1 > 0) {
            parcel.readIntArray(this.TQ = new int[int1]);
        }
    }
    
    public int describeContents() {
        return 0;
    }
    
    public String toString() {
        return "FullSpanItem{mPosition=" + this.mPosition + ", mGapDir=" + this.TO + ", mHasUnwantedGapAfter=" + this.TP + ", mGapPerSpan=" + Arrays.toString(this.TQ) + '}';
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeInt(this.mPosition);
        parcel.writeInt(this.TO);
        int n2;
        if (!this.TP) {
            n2 = 0;
        }
        else {
            n2 = 1;
        }
        parcel.writeInt(n2);
        if (this.TQ != null && this.TQ.length > 0) {
            parcel.writeInt(this.TQ.length);
            parcel.writeIntArray(this.TQ);
        }
        else {
            parcel.writeInt(0);
        }
    }
}
