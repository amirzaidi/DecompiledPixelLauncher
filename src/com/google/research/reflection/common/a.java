// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.common;

import java.util.LinkedList;

public class a
{
    private LinkedList LW;
    private int LX;
    private int LY;
    private int LZ;
    private Object[] Ma;
    
    public a(final int n, final boolean b) {
        final int n2 = -1;
        this.LX = n2;
        this.LY = 0;
        this.LZ = n2;
        if (n > 0) {
            this.Ma = new Object[n];
            if (b) {
                this.LW = new LinkedList();
            }
            return;
        }
        throw new RuntimeException();
    }
    
    private boolean Um() {
        return this.LW != null && this.LW.size() < this.Ma.length;
    }
    
    public Object Uf() {
        if (this.LW != null && !this.LW.isEmpty()) {
            return this.LW.removeLast();
        }
        return null;
    }
    
    public Object Ug(final int n) {
        if (n >= 0 && n < this.LY) {
            int n2 = this.LX - (this.LY - n - 1);
            if (n2 < 0) {
                n2 += this.Ma.length;
            }
            return this.Ma[n2];
        }
        return null;
    }
    
    public Object Uh() {
        if (this.LY != 0) {
            return this.Ma[this.LX];
        }
        return null;
    }
    
    public int Ui() {
        return this.LY;
    }
    
    public void Uj() {
        if (this.LY != 0) {
            int n = this.LX - (this.LY - 1);
            if (n < 0) {
                n += this.Ma.length;
            }
            if (this.Um()) {
                this.LW.add(this.Ma[n]);
            }
            this.Ma[n] = null;
            --this.LY;
            --this.LZ;
        }
    }
    
    public int Uk() {
        return this.Ma.length;
    }
    
    public int Ul() {
        return this.LZ;
    }
    
    public Object add(final Object o) {
        ++this.LX;
        if (this.LX == this.Ma.length) {
            this.LX = 0;
        }
        if (this.Ma[this.LX] != null && this.Um()) {
            this.LW.add(this.Ma[this.LX]);
        }
        this.Ma[this.LX] = o;
        if (this.LY < this.Ma.length) {
            ++this.LY;
        }
        ++this.LZ;
        return o;
    }
    
    public void clear() {
        final int n = -1;
        this.LX = n;
        this.LZ = n;
        this.LY = 0;
    }
}
