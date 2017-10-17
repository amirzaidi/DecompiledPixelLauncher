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
    public int aeG;
    public int aeH;
    public int aeI;
    public int aeJ;
    public int controlType;
    
    static {
        CREATOR = (Parcelable$Creator)new y();
    }
    
    public ParcelableVolumeInfo(final Parcel parcel) {
        this.aeG = parcel.readInt();
        this.controlType = parcel.readInt();
        this.aeJ = parcel.readInt();
        this.aeH = parcel.readInt();
        this.aeI = parcel.readInt();
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeInt(this.aeG);
        parcel.writeInt(this.controlType);
        parcel.writeInt(this.aeJ);
        parcel.writeInt(this.aeH);
        parcel.writeInt(this.aeI);
    }
}
