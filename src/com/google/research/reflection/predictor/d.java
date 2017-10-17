// 
// Decompiled by Procyon v0.5.30
// 

package com.google.research.reflection.predictor;

import com.google.research.reflection.common.UncertaintyException;
import com.google.research.reflection.common.e;
import java.io.OutputStream;
import java.io.DataOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.nio.charset.StandardCharsets;
import com.google.research.reflection.a.b;
import com.google.research.reflection.common.a;

public class d
{
    protected boolean LH;
    private int LI;
    protected a LJ;
    private long LK;
    
    public d() {
        this.LK = 3600000L;
        this.LI = 100;
        this.LJ = new a(this.LI, false);
    }
    
    public static d TN(final String s, final b b) {
        d tp = new d();
        if (s != null) {
            tp = TP(s.getBytes(StandardCharsets.ISO_8859_1), b);
        }
        return tp;
    }
    
    public static d TP(final byte[] array, final b b) {
        final d d = new d();
        try {
            final DataInputStream dataInputStream = new(java.io.DataInputStream.class);
            try {
                final ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(array);
                final DataInputStream dataInputStream2 = dataInputStream;
                try {
                    new DataInputStream(byteArrayInputStream);
                    d.TO(dataInputStream, b);
                    dataInputStream.close();
                    return d;
                }
                catch (IOException ex) {
                    ex.printStackTrace();
                }
            }
            catch (IOException ex2) {}
        }
        catch (IOException ex3) {}
    }
    
    public static String TS(final d d) {
        if (d == null) {
            return null;
        }
        return new String(TU(d), StandardCharsets.ISO_8859_1);
    }
    
    public static byte[] TU(final d d) {
        try {
            try {
                final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                final DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                try {
                    d.TQ(dataOutputStream);
                    dataOutputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
                catch (IOException ex) {
                    ex.printStackTrace();
                    return null;
                }
            }
            catch (IOException ex2) {}
        }
        catch (IOException ex3) {}
    }
    
    public void TM(final b b) {
        final boolean lh = true;
        if (this.TT(b)) {
        Label_0028:
            while (this.LJ.Ui() > 0) {
                while (true) {
                    while (true) {
                        Label_0119: {
                            try {
                                final Object ug = this.LJ.Ug(0);
                                try {
                                    final long ua = e.UA((b)ug, b);
                                    if (ua > this.LK) {
                                        break Label_0119;
                                    }
                                    final int n = lh ? 1 : 0;
                                    if (n == 0) {
                                        this.LJ.Uj();
                                        break;
                                    }
                                    break Label_0028;
                                }
                                catch (UncertaintyException ex) {
                                    final long ua = Long.MAX_VALUE;
                                }
                            }
                            catch (UncertaintyException ex2) {}
                        }
                        final int n = 0;
                        continue;
                    }
                }
            }
            this.LJ.add(b);
            this.LH = lh;
        }
    }
    
    public void TO(final DataInputStream dataInputStream, final b b) {
        byte[] array = null;
        this.clear();
        for (int int1 = dataInputStream.readInt(), i = 0; i < int1; ++i) {
            final int int2 = dataInputStream.readInt();
            if (array == null || array.length < int2) {
                array = new byte[int2];
            }
            dataInputStream.read(array, 0, int2);
            final b az = b.az(array, 0, int2);
            if (this.TT(az)) {
                this.TM(az);
            }
        }
    }
    
    public void TQ(final DataOutputStream dataOutputStream) {
        final int size = this.size();
        dataOutputStream.writeInt(size);
        for (int i = 0; i < size; ++i) {
            final byte[] ai = ((b)this.LJ.Ug(i)).aI();
            dataOutputStream.writeInt(ai.length);
            dataOutputStream.write(ai, 0, ai.length);
        }
        this.LH = false;
    }
    
    public a TR() {
        return this.LJ;
    }
    
    protected boolean TT(final b b) {
        boolean b2 = false;
        if (b.aH() == null || b.aH().equals("") || b.aH().equals("app_launch")) {
            b2 = true;
        }
        return b2;
    }
    
    public void clear() {
        this.LJ.clear();
    }
    
    public int size() {
        return this.LJ.Ui();
    }
    
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append("(size ");
        sb.append(this.LJ.Ui());
        sb.append("): ");
        for (int i = 0; i < this.LJ.Ui(); ++i) {
            sb.append(((b)this.LJ.Ug(i)).getId());
            sb.append(" ");
        }
        sb.append("\n");
        return sb.toString();
    }
}
