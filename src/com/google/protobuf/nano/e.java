// 
// Decompiled by Procyon v0.5.30
// 

package com.google.protobuf.nano;

public abstract class e extends a
{
    protected h PI;
    
    public e clone() {
        final e e = (e)super.clone();
        d.WM(this, e);
        return e;
    }
    
    protected int computeSerializedSize() {
        int i = 0;
        int n;
        if (this.PI != null) {
            n = 0;
            while (i < this.PI.size()) {
                n += this.PI.Xb(i).computeSerializedSize();
                ++i;
            }
        }
        else {
            n = 0;
        }
        return n;
    }
    
    public void writeTo(final b b) {
        if (this.PI == null) {
            return;
        }
        for (int i = 0; i < this.PI.size(); ++i) {
            this.PI.Xb(i).writeTo(b);
        }
    }
}
