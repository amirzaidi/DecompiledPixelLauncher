// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import android.os.Parcelable;

final class FragmentManagerState implements Parcelable
{
    public static final Parcelable$Creator CREATOR;
    int[] aaK;
    BackStackState[] aaL;
    int aaM;
    FragmentState[] aaN;
    int aaO;
    
    static {
        CREATOR = (Parcelable$Creator)new aI();
    }
    
    public FragmentManagerState() {
        this.aaM = -1;
    }
    
    public FragmentManagerState(final Parcel parcel) {
        this.aaM = -1;
        this.aaN = (FragmentState[])parcel.createTypedArray(FragmentState.CREATOR);
        this.aaK = parcel.createIntArray();
        this.aaL = (BackStackState[])parcel.createTypedArray(BackStackState.CREATOR);
        this.aaM = parcel.readInt();
        this.aaO = parcel.readInt();
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeTypedArray((Parcelable[])this.aaN, n);
        parcel.writeIntArray(this.aaK);
        parcel.writeTypedArray((Parcelable[])this.aaL, n);
        parcel.writeInt(this.aaM);
        parcel.writeInt(this.aaO);
    }
}
