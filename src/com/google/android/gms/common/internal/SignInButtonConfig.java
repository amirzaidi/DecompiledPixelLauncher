// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import android.os.Parcel;
import com.google.android.gms.common.api.Scope;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class SignInButtonConfig extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final Scope[] gZ;
    final int ha;
    private final int hb;
    private final int hc;
    
    static {
        CREATOR = (Parcelable$Creator)new U();
    }
    
    SignInButtonConfig(final int ha, final int hc, final int hb, final Scope[] gz) {
        this.ha = ha;
        this.hc = hc;
        this.hb = hb;
        this.gZ = gz;
    }
    
    public int je() {
        return this.hb;
    }
    
    public Scope[] jf() {
        return this.gZ;
    }
    
    public int jg() {
        return this.hc;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        U.jr(this, parcel, n);
    }
}
