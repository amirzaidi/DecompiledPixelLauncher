// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import android.os.Parcel;
import android.content.Intent;
import android.os.Parcelable$Creator;
import android.os.Parcelable;

public class ActivityResultInfo implements Parcelable
{
    public static final Parcelable$Creator CREATOR;
    public final Intent data;
    public final int requestCode;
    public final int resultCode;
    
    static {
        CREATOR = (Parcelable$Creator)new ActivityResultInfo$1();
    }
    
    public ActivityResultInfo(final int requestCode, final int resultCode, final Intent data) {
        this.requestCode = requestCode;
        this.resultCode = resultCode;
        this.data = data;
    }
    
    private ActivityResultInfo(final Parcel parcel) {
        this.requestCode = parcel.readInt();
        this.resultCode = parcel.readInt();
        Intent data;
        if (parcel.readInt() != 0) {
            data = (Intent)Intent.CREATOR.createFromParcel(parcel);
        }
        else {
            data = null;
        }
        this.data = data;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeInt(this.requestCode);
        parcel.writeInt(this.resultCode);
        if (this.data != null) {
            parcel.writeInt(1);
            this.data.writeToParcel(parcel, n);
        }
        else {
            parcel.writeInt(0);
        }
    }
}
