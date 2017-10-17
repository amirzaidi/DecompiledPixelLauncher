// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.server.response;

import java.io.ObjectInputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import android.os.Parcel;
import com.google.android.gms.common.server.converter.ConverterWrapper;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Iterator;
import com.google.android.gms.common.a.b;
import com.google.android.gms.common.a.e;
import com.google.android.gms.common.internal.l;
import java.util.HashMap;
import java.util.Map;
import com.google.android.gms.common.a.h;
import java.util.ArrayList;

public abstract class g
{
    private void ld(final StringBuilder sb, final FastJsonResponse$Field fastJsonResponse$Field, final ArrayList list) {
        int i = 0;
        sb.append("[");
        while (i < list.size()) {
            if (i > 0) {
                sb.append(",");
            }
            final Object value = list.get(i);
            if (value != null) {
                this.le(sb, fastJsonResponse$Field, value);
            }
            ++i;
        }
        sb.append("]");
    }
    
    private void le(final StringBuilder sb, final FastJsonResponse$Field fastJsonResponse$Field, final Object o) {
        if (fastJsonResponse$Field.kt() != 11) {
            if (fastJsonResponse$Field.kt() != 7) {
                sb.append(o);
            }
            else {
                sb.append("\"");
                sb.append(h.jF((String)o));
                sb.append("\"");
            }
        }
        else {
            sb.append(fastJsonResponse$Field.ks().cast(o).toString());
        }
    }
    
    public abstract Map kB();
    
    public HashMap kX() {
        return null;
    }
    
    protected boolean kY(final String s) {
        throw new UnsupportedOperationException("Concrete type arrays not supported");
    }
    
    public HashMap kZ() {
        return null;
    }
    
    protected abstract boolean kd(final String p0);
    
    protected abstract Object ke(final String p0);
    
    protected boolean la(final FastJsonResponse$Field fastJsonResponse$Field) {
        if (fastJsonResponse$Field.kf() != 11) {
            return this.kd(fastJsonResponse$Field.kn());
        }
        if (!fastJsonResponse$Field.kh()) {
            return this.lf(fastJsonResponse$Field.kn());
        }
        return this.kY(fastJsonResponse$Field.kn());
    }
    
    protected Object lb(final FastJsonResponse$Field fastJsonResponse$Field, final Object o) {
        if (fastJsonResponse$Field.hP == null) {
            return o;
        }
        return fastJsonResponse$Field.kl(o);
    }
    
    protected Object lc(final FastJsonResponse$Field fastJsonResponse$Field) {
        final int n = 1;
        final String kn = fastJsonResponse$Field.kn();
        if (fastJsonResponse$Field.ks() == null) {
            return this.ke(fastJsonResponse$Field.kn());
        }
        Label_0267: {
            if (this.ke(fastJsonResponse$Field.kn()) == null) {
                break Label_0267;
            }
            boolean b = false;
            final Object[] array = new Object[n];
            array[0] = fastJsonResponse$Field.kn();
            l.hw(b, "Concrete field shouldn't be value object: %s", array);
            Label_0273: {
                if (fastJsonResponse$Field.kh()) {
                    break Label_0273;
                }
                HashMap hashMap = this.kZ();
                while (true) {
                    Label_0282: {
                        if (hashMap != null) {
                            break Label_0282;
                        }
                        final String s = kn;
                        try {
                            final char char1 = s.charAt(0);
                            try {
                                final char upperCase = Character.toUpperCase(char1);
                                final String substring = kn.substring(1);
                                try {
                                    final String value = String.valueOf(substring);
                                    try {
                                        try {
                                            final String value2 = String.valueOf(value);
                                            try {
                                                final StringBuilder append = new StringBuilder(value2.length() + 4).append("get").append(upperCase).append(value);
                                                try {
                                                    final String string = append.toString();
                                                    try {
                                                        return this.getClass().getMethod(string, (Class<?>[])new Class[0]).invoke(this, new Object[0]);
                                                        return hashMap.get(kn);
                                                        hashMap = this.kX();
                                                        continue;
                                                        b = (n != 0);
                                                    }
                                                    catch (Exception ex) {
                                                        throw new RuntimeException(ex);
                                                    }
                                                }
                                                catch (Exception ex2) {}
                                            }
                                            catch (Exception ex3) {}
                                        }
                                        catch (Exception ex4) {}
                                    }
                                    catch (Exception ex5) {}
                                }
                                catch (Exception ex6) {}
                            }
                            catch (Exception ex7) {}
                        }
                        catch (Exception ex8) {}
                    }
                    break;
                }
            }
        }
    }
    
    protected boolean lf(final String s) {
        throw new UnsupportedOperationException("Concrete types not supported");
    }
    
    public String toString() {
        final Map kb = this.kB();
        final StringBuilder sb = new StringBuilder(100);
        for (final String s : kb.keySet()) {
            final FastJsonResponse$Field fastJsonResponse$Field = (FastJsonResponse$Field)kb.get(s);
            if (this.la(fastJsonResponse$Field)) {
                final Object lb = this.lb(fastJsonResponse$Field, this.lc(fastJsonResponse$Field));
                if (sb.length() != 0) {
                    sb.append(",");
                }
                else {
                    sb.append("{");
                }
                sb.append("\"").append(s).append("\":");
                if (lb != null) {
                    switch (fastJsonResponse$Field.kf()) {
                        default: {
                            if (!fastJsonResponse$Field.ko()) {
                                this.le(sb, fastJsonResponse$Field, lb);
                                continue;
                            }
                            this.ld(sb, fastJsonResponse$Field, (ArrayList)lb);
                            continue;
                        }
                        case 8: {
                            sb.append("\"").append(e.jz((byte[])lb)).append("\"");
                            continue;
                        }
                        case 9: {
                            sb.append("\"").append(e.jA((byte[])lb)).append("\"");
                            continue;
                        }
                        case 10: {
                            b.ju(sb, (HashMap)lb);
                            continue;
                        }
                    }
                }
                else {
                    sb.append("null");
                }
            }
        }
        if (sb.length() <= 0) {
            sb.append("{}");
        }
        else {
            sb.append("}");
        }
        return sb.toString();
    }
}
