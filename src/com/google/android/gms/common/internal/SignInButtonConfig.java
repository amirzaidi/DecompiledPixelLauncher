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
    private final Scope[] jR;
    final int jS;
    private final int jT;
    private final int jU;
    
    static {
        CREATOR = (Parcelable$Creator)new U();
    }
    
    SignInButtonConfig(final int js, final int ju, final int jt, final Scope[] jr) {
        this.jS = js;
        this.jU = ju;
        this.jT = jt;
        this.jR = jr;
    }
    
    public int lS() {
        return this.jT;
    }
    
    public Scope[] lT() {
        return this.jR;
    }
    
    public int lU() {
        return this.jU;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        U.mf(this, parcel, n);
    }
}
