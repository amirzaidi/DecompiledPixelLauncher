// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

final class ar
{
    private int mSize;
    
    private ar() {
        this.mSize = 0;
    }
    
    public void un() {
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
    
    public void uo() {
        synchronized (this) {
            ++this.mSize;
        }
    }
}
