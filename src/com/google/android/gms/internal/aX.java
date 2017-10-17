// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

final class ax
{
    private int mSize;
    
    private ax() {
        this.mSize = 0;
    }
    
    public void uo() {
        while (true) {
            synchronized (this) {
                if (this.mSize == 0) {
                    throw new RuntimeException("too many decrements");
                }
                --this.mSize;
                if (this.mSize != 0) {
                    return;
                }
            }
            this.notifyAll();
        }
    }
    
    public void up() {
        synchronized (this) {
            ++this.mSize;
        }
    }
}
