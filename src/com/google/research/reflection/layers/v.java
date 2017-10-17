// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.layers;

import java.io.DataOutputStream;
import java.io.DataInputStream;
import java.util.ArrayList;
import com.google.research.reflection.common.a;

public abstract class v
{
    private static double OX;
    boolean OW;
    b OY;
    b OZ;
    int Pa;
    a Pb;
    a Pc;
    boolean Pd;
    int Pe;
    int Pf;
    a Pg;
    b Ph;
    
    static {
        v.OX = 0.1;
    }
    
    v() {
    }
    
    v(final boolean ow, final int n, final int pa, final int pe, final int pf) {
        final boolean b = true;
        this.Pg = new a(n, b);
        this.Pb = new a(n, b);
        this.Pc = new a(n, b);
        this.Pa = pa;
        this.Pe = pe;
        this.Pf = pf;
        this.OW = ow;
        this.Ph = new b(pa, pf);
        this.OY = new b(pa, pe);
        this.OZ = new b(pa, pf);
        k.Up(this.OY.Nl);
        k.Up(this.OZ.Nl);
        k.Up(this.Ph.Nl);
    }
    
    public static double UV() {
        return v.OX;
    }
    
    public abstract b UB(final boolean p0, final com.google.research.reflection.layers.a p1, final ArrayList[] p2, final b p3);
    
    void UC() {
        k.Up(this.OY.Nl);
        k.Up(this.OZ.Nl);
        k.Up(this.Ph.Nl);
    }
    
    public abstract void UD(final com.google.research.reflection.layers.a p0, final int p1, final b p2, final b p3, final b p4);
    
    public void UO() {
        this.Pg.clear();
        this.Pb.clear();
        this.Pc.clear();
    }
    
    void UP(final DataInputStream dataInputStream) {
        final String utf = dataInputStream.readUTF();
        if (utf.equals(this.Uu())) {
            return;
        }
        final String value = String.valueOf(this.Uu());
        throw new RuntimeException(new StringBuilder(String.valueOf(value).length() + 19 + String.valueOf(utf).length()).append("Expected ").append(value).append(" acquired ").append(utf).toString());
    }
    
    void UQ(final DataOutputStream dataOutputStream) {
        dataOutputStream.writeUTF(this.Uu());
    }
    
    public int UR() {
        return this.Pa;
    }
    
    public int US() {
        return this.Pg.SX();
    }
    
    public int UT() {
        return this.Pe;
    }
    
    public b UU() {
        return this.OZ;
    }
    
    public void UW(final v v) {
        final boolean b = true;
        final int sx = this.Pg.SX();
        v.Pg = new a(sx, b);
        v.Pb = new a(sx, b);
        v.Pc = new a(sx, b);
        v.Pe = this.Pe;
        v.Pf = this.Pf;
        v.Pa = this.Pa;
        v.OW = this.OW;
        v.Ph = new b(this.Pa, this.Pf);
        v.OY = new b(this.Pa, this.Pe);
        v.OZ = new b(this.Pa, this.Pf);
        k.Up(v.OY.Nl);
        k.Up(v.OZ.Nl);
        k.Up(v.Ph.Nl);
    }
    
    public int UX() {
        return this.Pf;
    }
    
    public b UY() {
        return this.OY;
    }
    
    public abstract String Uu();
    
    public void Uv(final DataOutputStream dataOutputStream) {
        dataOutputStream.writeInt(this.Pa);
        dataOutputStream.writeInt(this.Pf);
        dataOutputStream.writeInt(this.Pe);
        dataOutputStream.writeInt(this.Pg.SX());
        dataOutputStream.writeBoolean(this.OW);
    }
    
    public void Uw(final DataInputStream dataInputStream) {
        final boolean b = true;
        this.Pa = dataInputStream.readInt();
        this.Pf = dataInputStream.readInt();
        this.Pe = dataInputStream.readInt();
        final int int1 = dataInputStream.readInt();
        this.OW = dataInputStream.readBoolean();
        this.Pg = new a(int1, b);
        this.Pb = new a(int1, b);
        this.Pc = new a(int1, b);
        this.Ph = new b(this.Pa, this.Pf);
        this.OY = new b(this.Pa, this.Pe);
        this.OZ = new b(this.Pa, this.Pf);
        k.Up(this.OY.Nl);
        k.Up(this.OZ.Nl);
        k.Up(this.Ph.Nl);
    }
    
    public abstract v clone();
    
    public abstract void update();
}
