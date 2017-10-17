// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import android.content.Intent;
import android.content.ComponentName;

final class v
{
    private final String fM;
    private final String fN;
    private final ComponentName fO;
    
    public v(final String s, final String s2) {
        this.fM = l.hr(s);
        this.fN = l.hr(s2);
        this.fO = null;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof v) {
            final v v = (v)o;
            if (!u.hH(this.fM, v.fM) || !u.hH(this.fO, v.fO)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public Intent hK() {
        Intent intent;
        if (this.fM == null) {
            intent = new Intent().setComponent(this.fO);
        }
        else {
            intent = new Intent(this.fM).setPackage(this.fN);
        }
        return intent;
    }
    
    public int hashCode() {
        return u.hI(this.fM, this.fO);
    }
    
    public String toString() {
        String s;
        if (this.fM != null) {
            s = this.fM;
        }
        else {
            s = this.fO.flattenToString();
        }
        return s;
    }
}
