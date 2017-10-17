// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location;

import android.os.Parcel;
import java.util.Collections;
import java.util.List;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class LocationSettingsRequest extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final boolean CR;
    private final int CS;
    private final boolean CT;
    private final List CU;
    
    static {
        CREATOR = (Parcelable$Creator)new m();
    }
    
    LocationSettingsRequest(final int cs, final List cu, final boolean ct, final boolean cr) {
        this.CS = cs;
        this.CU = cu;
        this.CT = ct;
        this.CR = cr;
    }
    
    public boolean Hw() {
        return this.CT;
    }
    
    public boolean Hx() {
        return this.CR;
    }
    
    public List Hy() {
        return Collections.unmodifiableList((List<?>)this.CU);
    }
    
    public int Hz() {
        return this.CS;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        m.HC(this, parcel, n);
    }
}
