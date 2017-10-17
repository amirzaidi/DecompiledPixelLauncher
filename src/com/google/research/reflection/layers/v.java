// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

import java.util.ArrayList;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import com.google.research.reflection.common.a;

public abstract class v
{
    private static double Od;
    boolean Oc;
    b Oe;
    b Of;
    int Og;
    a Oh;
    a Oi;
    boolean Oj;
    int Ok;
    int Ol;
    a Om;
    b On;
    
    static {
        v.Od = 0.1;
    }
    
    v() {
    }
    
    v(final boolean oc, final int n, final int og, final int ok, final int ol) {
        final boolean b = true;
        this.Om = new a(n, b);
        this.Oh = new a(n, b);
        this.Oi = new a(n, b);
        this.Og = og;
        this.Ok = ok;
        this.Ol = ol;
        this.Oc = oc;
        this.On = new b(og, ol);
        this.Oe = new b(og, ok);
        this.Of = new b(og, ol);
        k.VD(this.Oe.Mr);
        k.VD(this.Of.Mr);
        k.VD(this.On.Mr);
    }
    
    public static double Wj() {
        return v.Od;
    }
    
    public abstract String VI();
    
    public void VJ(final DataOutputStream dataOutputStream) {
        dataOutputStream.writeInt(this.Og);
        dataOutputStream.writeInt(this.Ol);
        dataOutputStream.writeInt(this.Ok);
        dataOutputStream.writeInt(this.Om.Uk());
        dataOutputStream.writeBoolean(this.Oc);
    }
    
    public void VK(final DataInputStream dataInputStream) {
        final boolean b = true;
        this.Og = dataInputStream.readInt();
        this.Ol = dataInputStream.readInt();
        this.Ok = dataInputStream.readInt();
        final int int1 = dataInputStream.readInt();
        this.Oc = dataInputStream.readBoolean();
        this.Om = new a(int1, b);
        this.Oh = new a(int1, b);
        this.Oi = new a(int1, b);
        this.On = new b(this.Og, this.Ol);
        this.Oe = new b(this.Og, this.Ok);
        this.Of = new b(this.Og, this.Ol);
        k.VD(this.Oe.Mr);
        k.VD(this.Of.Mr);
        k.VD(this.On.Mr);
    }
    
    public abstract b VP(final boolean p0, final com.google.research.reflection.layers.a p1, final ArrayList[] p2, final b p3);
    
    void VQ() {
        k.VD(this.Oe.Mr);
        k.VD(this.Of.Mr);
        k.VD(this.On.Mr);
    }
    
    public abstract void VR(final com.google.research.reflection.layers.a p0, final int p1, final b p2, final b p3, final b p4);
    
    public void Wc() {
        this.Om.clear();
        this.Oh.clear();
        this.Oi.clear();
    }
    
    void Wd(final DataInputStream dataInputStream) {
        final String utf = dataInputStream.readUTF();
        if (utf.equals(this.VI())) {
            return;
        }
        final String value = String.valueOf(this.VI());
        throw new RuntimeException(new StringBuilder(String.valueOf(value).length() + 19 + String.valueOf(utf).length()).append("Expected ").append(value).append(" acquired ").append(utf).toString());
    }
    
    void We(final DataOutputStream dataOutputStream) {
        dataOutputStream.writeUTF(this.VI());
    }
    
    public int Wf() {
        return this.Og;
    }
    
    public int Wg() {
        return this.Om.Uk();
    }
    
    public int Wh() {
        return this.Ok;
    }
    
    public b Wi() {
        return this.Of;
    }
    
    public void Wk(final v v) {
        final boolean b = true;
        final int uk = this.Om.Uk();
        v.Om = new a(uk, b);
        v.Oh = new a(uk, b);
        v.Oi = new a(uk, b);
        v.Ok = this.Ok;
        v.Ol = this.Ol;
        v.Og = this.Og;
        v.Oc = this.Oc;
        v.On = new b(this.Og, this.Ol);
        v.Oe = new b(this.Og, this.Ok);
        v.Of = new b(this.Og, this.Ol);
        k.VD(v.Oe.Mr);
        k.VD(v.Of.Mr);
        k.VD(v.On.Mr);
    }
    
    public int Wl() {
        return this.Ol;
    }
    
    public b Wm() {
        return this.Oe;
    }
    
    public abstract v clone();
    
    public abstract void update();
}
