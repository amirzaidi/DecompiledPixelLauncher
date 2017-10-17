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
    private final Scope[] JY;
    final int JZ;
    private final String Ka;
    private final Account Kb;
    
    static {
        CREATOR = (Parcelable$Creator)new g();
    }
    
    RecordConsentRequest(final int jz, final Account kb, final Scope[] jy, final String ka) {
        this.JZ = jz;
        this.Kb = kb;
        this.JY = jy;
        this.Ka = ka;
    }
    
    public String Qf() {
        return this.Ka;
    }
    
    public Scope[] Qg() {
        return this.JY;
    }
    
    public Account getAccount() {
        return this.Kb;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        g.Qi(this, parcel, n);
    }
}
