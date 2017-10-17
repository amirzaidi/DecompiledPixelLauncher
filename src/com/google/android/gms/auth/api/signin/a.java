// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.auth.api.signin;

import java.util.HashSet;
import android.accounts.Account;
import java.util.Set;

public final class a
{
    private boolean Jt;
    private boolean Ju;
    private boolean Jv;
    private String Jw;
    private Set Jx;
    private String Jy;
    private Account Jz;
    
    public a() {
        this.Jx = new HashSet();
    }
    
    public a PC() {
        this.Jx.add(GoogleSignInOptions.JK);
        return this;
    }
    
    public a PD() {
        this.Jx.add(GoogleSignInOptions.JC);
        return this;
    }
    
    public GoogleSignInOptions build() {
        if (this.Jv) {
            if (this.Jz == null || !this.Jx.isEmpty()) {
                this.PD();
            }
        }
        return new GoogleSignInOptions(this.Jx, this.Jz, this.Jv, this.Ju, this.Jt, this.Jw, this.Jy, null);
    }
}
