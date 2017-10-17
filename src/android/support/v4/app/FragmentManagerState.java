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
    int[] acj;
    BackStackState[] ack;
    int acl;
    FragmentState[] acm;
    int acn;
    
    static {
        CREATOR = (Parcelable$Creator)new aE();
    }
    
    public FragmentManagerState() {
        this.acl = -1;
    }
    
    public FragmentManagerState(final Parcel parcel) {
        this.acl = -1;
        this.acm = (FragmentState[])parcel.createTypedArray(FragmentState.CREATOR);
        this.acj = parcel.createIntArray();
        this.ack = (BackStackState[])parcel.createTypedArray(BackStackState.CREATOR);
        this.acl = parcel.readInt();
        this.acn = parcel.readInt();
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeTypedArray((Parcelable[])this.acm, n);
        parcel.writeIntArray(this.acj);
        parcel.writeTypedArray((Parcelable[])this.ack, n);
        parcel.writeInt(this.acl);
        parcel.writeInt(this.acn);
    }
}
