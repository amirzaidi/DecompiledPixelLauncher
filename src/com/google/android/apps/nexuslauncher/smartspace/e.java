// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace;

public class e
{
    d dO;
    d dP;
    
    public e() {
        this.dO = null;
        this.dP = null;
    }
    
    public boolean cR() {
        return this.dO != null;
    }
    
    public boolean cS() {
        return this.dP != null;
    }
    
    public long cT() {
        final long currentTimeMillis = System.currentTimeMillis();
        if (this.cS() && this.cR()) {
            return Math.min(this.dP.cF(), this.dO.cF()) - currentTimeMillis;
        }
        if (this.cS()) {
            return this.dP.cF() - currentTimeMillis;
        }
        if (this.cR()) {
            return this.dO.cF() - currentTimeMillis;
        }
        return 0L;
    }
    
    public boolean cU() {
        final boolean b = true;
        boolean b2 = false;
        if (this.cR() && this.dO.cM()) {
            this.dO = null;
            b2 = b;
        }
        if (this.cS() && this.dP.cM()) {
            this.dP = null;
            b2 = b;
        }
        return b2;
    }
    
    public String toString() {
        return "{" + this.dP + "," + this.dO + "}";
    }
}
