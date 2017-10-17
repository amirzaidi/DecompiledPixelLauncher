// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.auth.api.signin;

import java.util.HashSet;
import android.accounts.Account;
import java.util.Set;

public final class a
{
    private boolean KY;
    private boolean KZ;
    private boolean La;
    private String Lb;
    private Set Lc;
    private String Ld;
    private Account Le;
    
    public a() {
        this.Lc = new HashSet();
    }
    
    public a Qv() {
        this.Lc.add(GoogleSignInOptions.Lp);
        return this;
    }
    
    public a Qw() {
        this.Lc.add(GoogleSignInOptions.Lh);
        return this;
    }
    
    public GoogleSignInOptions build() {
        if (this.La) {
            if (this.Le == null || !this.Lc.isEmpty()) {
                this.Qw();
            }
        }
        return new GoogleSignInOptions(this.Lc, this.Le, this.La, this.KZ, this.KY, this.Lb, this.Ld, null);
    }
}
