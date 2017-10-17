// 
// Decompiled by Procyon v0.5.30
// 

package com.google.protobuf.nano;

public abstract class e extends a
{
    protected h Lb;
    
    public e clone() {
        final e e = (e)super.clone();
        d.SR(this, e);
        return e;
    }
    
    protected int computeSerializedSize() {
        int i = 0;
        int n;
        if (this.Lb != null) {
            n = 0;
            while (i < this.Lb.size()) {
                n += this.Lb.Tg(i).computeSerializedSize();
                ++i;
            }
        }
        else {
            n = 0;
        }
        return n;
    }
    
    public void writeTo(final b b) {
        if (this.Lb == null) {
            return;
        }
        for (int i = 0; i < this.Lb.size(); ++i) {
            this.Lb.Tg(i).writeTo(b);
        }
    }
}
