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
    private final int Dm;
    private final int Dn;
    private final List Do;
    
    static {
        CREATOR = (Parcelable$Creator)new l();
    }
    
    GeofencingRequest(final int dm, final List do1, final int dn) {
        this.Dm = dm;
        this.Do = do1;
        this.Dn = dn;
    }
    
    public int HX() {
        return this.Dn;
    }
    
    public List HY() {
        return this.Do;
    }
    
    public int HZ() {
        return this.Dm;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        l.Hr(this, parcel, n);
    }
}
