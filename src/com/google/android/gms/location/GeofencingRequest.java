// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import android.os.Parcel;
import java.util.List;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class GeofencingRequest extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final int ER;
    private final int ES;
    private final List ET;
    
    static {
        CREATOR = (Parcelable$Creator)new l();
    }
    
    GeofencingRequest(final int er, final List et, final int es) {
        this.ER = er;
        this.ET = et;
        this.ES = es;
    }
    
    public int IQ() {
        return this.ES;
    }
    
    public List IR() {
        return this.ET;
    }
    
    public int IS() {
        return this.ER;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        l.Ik(this, parcel, n);
    }
}
