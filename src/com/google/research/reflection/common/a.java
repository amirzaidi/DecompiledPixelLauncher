// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.common;

import java.util.LinkedList;

public class a
{
    private LinkedList MQ;
    private int MR;
    private int MS;
    private int MT;
    private Object[] MU;
    
    public a(final int n, final boolean b) {
        final int n2 = -1;
        this.MR = n2;
        this.MS = 0;
        this.MT = n2;
        if (n > 0) {
            this.MU = new Object[n];
            if (b) {
                this.MQ = new LinkedList();
            }
            return;
        }
        throw new RuntimeException();
    }
    
    private boolean SZ() {
        return this.MQ != null && this.MQ.size() < this.MU.length;
    }
    
    public Object SS() {
        if (this.MQ != null && !this.MQ.isEmpty()) {
            return this.MQ.removeLast();
        }
        return null;
    }
    
    public Object ST(final int n) {
        if (n >= 0 && n < this.MS) {
            int n2 = this.MR - (this.MS - n - 1);
            if (n2 < 0) {
                n2 += this.MU.length;
            }
            return this.MU[n2];
        }
        return null;
    }
    
    public Object SU() {
        if (this.MS != 0) {
            return this.MU[this.MR];
        }
        return null;
    }
    
    public int SV() {
        return this.MS;
    }
    
    public void SW() {
        if (this.MS != 0) {
            int n = this.MR - (this.MS - 1);
            if (n < 0) {
                n += this.MU.length;
            }
            if (this.SZ()) {
                this.MQ.add(this.MU[n]);
            }
            this.MU[n] = null;
            --this.MS;
            --this.MT;
        }
    }
    
    public int SX() {
        return this.MU.length;
    }
    
    public int SY() {
        return this.MT;
    }
    
    public Object add(final Object o) {
        ++this.MR;
        if (this.MR == this.MU.length) {
            this.MR = 0;
        }
        if (this.MU[this.MR] != null && this.SZ()) {
            this.MQ.add(this.MU[this.MR]);
        }
        this.MU[this.MR] = o;
        if (this.MS < this.MU.length) {
            ++this.MS;
        }
        ++this.MT;
        return o;
    }
    
    public void clear() {
        final int n = -1;
        this.MR = n;
        this.MT = n;
        this.MS = 0;
    }
}
