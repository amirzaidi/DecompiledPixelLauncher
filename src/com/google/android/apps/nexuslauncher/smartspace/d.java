// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace;

public class d
{
    f eD;
    f eE;
    
    public d() {
        this.eD = null;
        this.eE = null;
    }
    
    public long dH() {
        final long currentTimeMillis = System.currentTimeMillis();
        if (this.dJ() && this.dI()) {
            return Math.min(this.eE.dY(), this.eD.dY()) - currentTimeMillis;
        }
        if (this.dJ()) {
            return this.eE.dY() - currentTimeMillis;
        }
        if (this.dI()) {
            return this.eD.dY() - currentTimeMillis;
        }
        return 0L;
    }
    
    public boolean dI() {
        return this.eD != null;
    }
    
    public boolean dJ() {
        return this.eE != null;
    }
    
    public boolean dK() {
        final boolean b = true;
        boolean b2 = false;
        if (this.dI() && this.eD.dZ()) {
            this.eD = null;
            b2 = b;
        }
        if (this.dJ() && this.eE.dZ()) {
            this.eE = null;
            b2 = b;
        }
        return b2;
    }
    
    public String toString() {
        return "{" + this.eE + "," + this.eD + "}";
    }
}
