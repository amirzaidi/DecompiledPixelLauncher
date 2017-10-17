// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import android.os.Parcelable;

public class ParcelableVolumeInfo implements Parcelable
{
    public static final Parcelable$Creator CREATOR;
    public int afI;
    public int afJ;
    public int afK;
    public int afL;
    public int controlType;
    
    static {
        CREATOR = (Parcelable$Creator)new j();
    }
    
    public ParcelableVolumeInfo(final Parcel parcel) {
        this.afI = parcel.readInt();
        this.controlType = parcel.readInt();
        this.afL = parcel.readInt();
        this.afJ = parcel.readInt();
        this.afK = parcel.readInt();
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeInt(this.afI);
        parcel.writeInt(this.controlType);
        parcel.writeInt(this.afL);
        parcel.writeInt(this.afJ);
        parcel.writeInt(this.afK);
    }
}
