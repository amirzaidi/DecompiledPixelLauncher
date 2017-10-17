// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

import java.io.DataInputStream;
import java.io.DataOutputStream;

public class m extends o
{
    private int Nv;
    
    public m() {
        this.Nv = 0;
    }
    
    public m(final int nv, final int n, final int n2, final int n3, final int n4, final int n5, final int n6, final int n7, final boolean b) {
        super(false, n, n2, n3, n4, n5, n6, n7, b, false, 0.0f);
        this.Nv = 0;
        this.Nv = nv;
    }
    
    public String VI() {
        return "OutputLayer";
    }
    
    public void VJ(final DataOutputStream dataOutputStream) {
        super.VJ(dataOutputStream);
        dataOutputStream.writeInt(this.Nv);
        this.We(dataOutputStream);
    }
    
    public void VK(final DataInputStream dataInputStream) {
        super.VK(dataInputStream);
        this.Nv = dataInputStream.readInt();
        this.Wd(dataInputStream);
    }
    
    void VL(final int n, final b b, final b b2, final b b3) {
        e.Vq().Vp(b.Mr.length, new d(this, n, b, b2, b3));
    }
    
    public m clone() {
        final m m = new m();
        super.VN(m);
        m.Nv = this.Nv;
        return m;
    }
}
