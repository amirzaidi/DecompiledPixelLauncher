// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.accounts.Account;
import com.google.android.gms.common.api.Scope;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class RecordConsentRequest extends AbstractSafeParcelable
{
    public static final Parcelable$Creator CREATOR;
    private final Scope[] LD;
    final int LE;
    private final String LF;
    private final Account LG;
    
    static {
        CREATOR = (Parcelable$Creator)new g();
    }
    
    RecordConsentRequest(final int le, final Account lg, final Scope[] ld, final String lf) {
        this.LE = le;
        this.LG = lg;
        this.LD = ld;
        this.LF = lf;
    }
    
    public String QY() {
        return this.LF;
    }
    
    public Scope[] QZ() {
        return this.LD;
    }
    
    public Account getAccount() {
        return this.LG;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        g.Rb(this, parcel, n);
    }
}
