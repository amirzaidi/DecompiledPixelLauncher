// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import android.content.Intent;
import android.content.ComponentName;

final class v
{
    private final String iE;
    private final String iF;
    private final ComponentName iG;
    
    public v(final String s, final String s2) {
        this.iE = l.kf(s);
        this.iF = l.kf(s2);
        this.iG = null;
    }
    
    public boolean equals(final Object o) {
        boolean b = true;
        if (this == o) {
            return b;
        }
        if (o instanceof v) {
            final v v = (v)o;
            if (!u.kv(this.iE, v.iE) || !u.kv(this.iG, v.iG)) {
                b = false;
            }
            return b;
        }
        return false;
    }
    
    public int hashCode() {
        return u.kw(this.iE, this.iG);
    }
    
    public Intent ky() {
        Intent intent;
        if (this.iE == null) {
            intent = new Intent().setComponent(this.iG);
        }
        else {
            intent = new Intent(this.iE).setPackage(this.iF);
        }
        return intent;
    }
    
    public String toString() {
        String s;
        if (this.iE != null) {
            s = this.iE;
        }
        else {
            s = this.iG.flattenToString();
        }
        return s;
    }
}
