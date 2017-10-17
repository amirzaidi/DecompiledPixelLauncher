// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

import java.io.DataInputStream;
import java.io.DataOutputStream;

public class m extends o
{
    private int Op;
    
    public m() {
        this.Op = 0;
    }
    
    public m(final int op, final int n, final int n2, final int n3, final int n4, final int n5, final int n6, final int n7, final boolean b) {
        super(false, n, n2, n3, n4, n5, n6, n7, b, false, 0.0f);
        this.Op = 0;
        this.Op = op;
    }
    
    public String Uu() {
        return "OutputLayer";
    }
    
    public void Uv(final DataOutputStream dataOutputStream) {
        super.Uv(dataOutputStream);
        dataOutputStream.writeInt(this.Op);
        this.UQ(dataOutputStream);
    }
    
    public void Uw(final DataInputStream dataInputStream) {
        super.Uw(dataInputStream);
        this.Op = dataInputStream.readInt();
        this.UP(dataInputStream);
    }
    
    void Ux(final int n, final b b, final b b2, final b b3) {
        e.getInstance().Uc(b.Nl.length, new d(this, n, b, b2, b3));
    }
    
    public m clone() {
        final m m = new m();
        super.Uz(m);
        m.Op = this.Op;
        return m;
    }
}
