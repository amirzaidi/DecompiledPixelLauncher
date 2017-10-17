// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.l;
import android.util.Log;
import android.database.CursorIndexOutOfBoundsException;
import android.os.Bundle;
import android.database.CursorWindow;
import android.os.Parcelable$Creator;
import java.io.Closeable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public final class DataHolder extends AbstractSafeParcelable implements Closeable
{
    public static final Parcelable$Creator CREATOR;
    private static final e kd;
    private final String[] kb;
    private final CursorWindow[] kc;
    Bundle ke;
    int[] kf;
    private final int kg;
    boolean kh;
    private boolean ki;
    private final int kj;
    private final Bundle kk;
    int kl;
    
    static {
        CREATOR = (Parcelable$Creator)new h();
        kd = new f(new String[0], null);
    }
    
    DataHolder(final int kj, final String[] kb, final CursorWindow[] kc, final int kg, final Bundle kk) {
        this.kh = false;
        this.ki = true;
        this.kj = kj;
        this.kb = kb;
        this.kc = kc;
        this.kg = kg;
        this.kk = kk;
    }
    
    private void nm(final String s, final int n) {
        if (this.ke == null || !this.ke.containsKey(s)) {
            final String value = String.valueOf(s);
            final int length = value.length();
            final String s2 = "No such column: ";
            String concat;
            if (length == 0) {
                concat = new String(s2);
            }
            else {
                concat = s2.concat(value);
            }
            throw new IllegalArgumentException(concat);
        }
        if (this.nc()) {
            throw new IllegalArgumentException("Buffer is closed.");
        }
        if (n >= 0 && n < this.kl) {
            return;
        }
        throw new CursorIndexOutOfBoundsException(n, this.kl);
    }
    
    public void close() {
        int i = 0;
        synchronized (this) {
            if (!this.kh) {
                this.kh = true;
                while (i < this.kc.length) {
                    this.kc[i].close();
                    ++i;
                }
            }
        }
    }
    
    protected void finalize() {
        try {
            if (this.ki && this.kc.length > 0 && !this.nc()) {
                this.close();
                final String value = String.valueOf(this.toString());
                Log.e("DataBuffer", new StringBuilder(String.valueOf(value).length() + 178).append("Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: ").append(value).append(")").toString());
            }
        }
        finally {
            super.finalize();
        }
    }
    
    public boolean nc() {
        synchronized (this) {
            return this.kh;
        }
    }
    
    public int nd() {
        return this.kl;
    }
    
    public int ne(final int n) {
        int i = 0;
        l.hs(n >= 0 && n < this.kl);
        while (i < this.kf.length) {
            if (n < this.kf[i]) {
                --i;
                break;
            }
            ++i;
        }
        if (i == this.kf.length) {
            --i;
        }
        return i;
    }
    
    public String nf(final String s, final int n, final int n2) {
        this.nm(s, n);
        return this.kc[n2].getString(n, this.ke.getInt(s));
    }
    
    int ng() {
        return this.kj;
    }
    
    public Bundle nh() {
        return this.kk;
    }
    
    public int ni() {
        return this.kg;
    }
    
    CursorWindow[] nj() {
        return this.kc;
    }
    
    public void nk() {
        int i = 0;
        this.ke = new Bundle();
        for (int j = 0; j < this.kb.length; ++j) {
            this.ke.putInt(this.kb[j], j);
        }
        this.kf = new int[this.kc.length];
        int kl = 0;
        while (i < this.kc.length) {
            this.kf[i] = kl;
            kl += this.kc[i].getNumRows() - (kl - this.kc[i].getStartPosition());
            ++i;
        }
        this.kl = kl;
    }
    
    String[] nl() {
        return this.kb;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        h.ns(this, parcel, n);
    }
}
