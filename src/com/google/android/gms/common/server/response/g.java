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
import java.util.Map;
import com.google.android.gms.common.internal.l;
import java.util.HashMap;
import com.google.android.gms.common.a.h;
import java.util.ArrayList;

public abstract class g
{
    private void nR(final StringBuilder sb, final FastJsonResponse$Field fastJsonResponse$Field, final ArrayList list) {
        int i = 0;
        sb.append("[");
        while (i < list.size()) {
            if (i > 0) {
                sb.append(",");
            }
            final Object value = list.get(i);
            if (value != null) {
                this.nS(sb, fastJsonResponse$Field, value);
            }
            ++i;
        }
        sb.append("]");
    }
    
    private void nS(final StringBuilder sb, final FastJsonResponse$Field fastJsonResponse$Field, final Object o) {
        if (fastJsonResponse$Field.nh() != 11) {
            if (fastJsonResponse$Field.nh() != 7) {
                sb.append(o);
            }
            else {
                sb.append("\"");
                sb.append(h.mt((String)o));
                sb.append("\"");
            }
        }
        else {
            sb.append(fastJsonResponse$Field.ng().cast(o).toString());
        }
    }
    
    protected abstract boolean mR(final String p0);
    
    protected abstract Object mS(final String p0);
    
    public HashMap nL() {
        return null;
    }
    
    protected boolean nM(final String s) {
        throw new UnsupportedOperationException("Concrete type arrays not supported");
    }
    
    public HashMap nN() {
        return null;
    }
    
    protected boolean nO(final FastJsonResponse$Field fastJsonResponse$Field) {
        if (fastJsonResponse$Field.mT() != 11) {
            return this.mR(fastJsonResponse$Field.nb());
        }
        if (!fastJsonResponse$Field.mV()) {
            return this.nT(fastJsonResponse$Field.nb());
        }
        return this.nM(fastJsonResponse$Field.nb());
    }
    
    protected Object nP(final FastJsonResponse$Field fastJsonResponse$Field, final Object o) {
        if (fastJsonResponse$Field.kH == null) {
            return o;
        }
        return fastJsonResponse$Field.mZ(o);
    }
    
    protected Object nQ(final FastJsonResponse$Field fastJsonResponse$Field) {
        final int n = 1;
        final String nb = fastJsonResponse$Field.nb();
        if (fastJsonResponse$Field.ng() == null) {
            return this.mS(fastJsonResponse$Field.nb());
        }
        Label_0267: {
            if (this.mS(fastJsonResponse$Field.nb()) == null) {
                break Label_0267;
            }
            boolean b = false;
            final Object[] array = new Object[n];
            array[0] = fastJsonResponse$Field.nb();
            l.kk(b, "Concrete field shouldn't be value object: %s", array);
            Label_0273: {
                if (fastJsonResponse$Field.mV()) {
                    break Label_0273;
                }
                HashMap hashMap = this.nN();
                while (true) {
                    Label_0282: {
                        if (hashMap != null) {
                            break Label_0282;
                        }
                        final String s = nb;
                        try {
                            final char char1 = s.charAt(0);
                            try {
                                final char upperCase = Character.toUpperCase(char1);
                                final String substring = nb.substring(1);
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
                                                        return hashMap.get(nb);
                                                        hashMap = this.nL();
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
    
    protected boolean nT(final String s) {
        throw new UnsupportedOperationException("Concrete types not supported");
    }
    
    public abstract Map np();
    
    public String toString() {
        final Map np = this.np();
        final StringBuilder sb = new StringBuilder(100);
        for (final String s : np.keySet()) {
            final FastJsonResponse$Field fastJsonResponse$Field = (FastJsonResponse$Field)np.get(s);
            if (this.nO(fastJsonResponse$Field)) {
                final Object np2 = this.nP(fastJsonResponse$Field, this.nQ(fastJsonResponse$Field));
                if (sb.length() != 0) {
                    sb.append(",");
                }
                else {
                    sb.append("{");
                }
                sb.append("\"").append(s).append("\":");
                if (np2 != null) {
                    switch (fastJsonResponse$Field.mT()) {
                        default: {
                            if (!fastJsonResponse$Field.nc()) {
                                this.nS(sb, fastJsonResponse$Field, np2);
                                continue;
                            }
                            this.nR(sb, fastJsonResponse$Field, (ArrayList)np2);
                            continue;
                        }
                        case 8: {
                            sb.append("\"").append(e.mn((byte[])np2)).append("\"");
                            continue;
                        }
                        case 9: {
                            sb.append("\"").append(e.mo((byte[])np2)).append("\"");
                            continue;
                        }
                        case 10: {
                            b.mi(sb, (HashMap)np2);
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
