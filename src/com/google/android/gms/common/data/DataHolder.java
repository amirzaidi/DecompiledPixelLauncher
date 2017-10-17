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
    private static final e mV;
    private final String[] mT;
    private final CursorWindow[] mU;
    Bundle mW;
    int[] mX;
    private final int mY;
    boolean mZ;
    private boolean na;
    private final int nb;
    private final Bundle nc;
    int nd;
    
    static {
        CREATOR = (Parcelable$Creator)new h();
        mV = new f(new String[0], null);
    }
    
    DataHolder(final int nb, final String[] mt, final CursorWindow[] mu, final int my, final Bundle nc) {
        this.mZ = false;
        this.na = true;
        this.nb = nb;
        this.mT = mt;
        this.mU = mu;
        this.mY = my;
        this.nc = nc;
    }
    
    private void pZ(final String s, final int n) {
        if (this.mW == null || !this.mW.containsKey(s)) {
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
        if (this.pP()) {
            throw new IllegalArgumentException("Buffer is closed.");
        }
        if (n >= 0 && n < this.nd) {
            return;
        }
        throw new CursorIndexOutOfBoundsException(n, this.nd);
    }
    
    public void close() {
        int i = 0;
        synchronized (this) {
            if (!this.mZ) {
                this.mZ = true;
                while (i < this.mU.length) {
                    this.mU[i].close();
                    ++i;
                }
            }
        }
    }
    
    protected void finalize() {
        try {
            if (this.na && this.mU.length > 0 && !this.pP()) {
                this.close();
                final String value = String.valueOf(this.toString());
                Log.e("DataBuffer", new StringBuilder(String.valueOf(value).length() + 178).append("Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: ").append(value).append(")").toString());
            }
        }
        finally {
            super.finalize();
        }
    }
    
    public boolean pP() {
        synchronized (this) {
            return this.mZ;
        }
    }
    
    public int pQ() {
        return this.nd;
    }
    
    public int pR(final int n) {
        int i = 0;
        l.kg(n >= 0 && n < this.nd);
        while (i < this.mX.length) {
            if (n < this.mX[i]) {
                --i;
                break;
            }
            ++i;
        }
        if (i == this.mX.length) {
            --i;
        }
        return i;
    }
    
    public String pS(final String s, final int n, final int n2) {
        this.pZ(s, n);
        return this.mU[n2].getString(n, this.mW.getInt(s));
    }
    
    int pT() {
        return this.nb;
    }
    
    public Bundle pU() {
        return this.nc;
    }
    
    public int pV() {
        return this.mY;
    }
    
    CursorWindow[] pW() {
        return this.mU;
    }
    
    public void pX() {
        int i = 0;
        this.mW = new Bundle();
        for (int j = 0; j < this.mT.length; ++j) {
            this.mW.putInt(this.mT[j], j);
        }
        this.mX = new int[this.mU.length];
        int nd = 0;
        while (i < this.mU.length) {
            this.mX[i] = nd;
            nd += this.mU[i].getNumRows() - (nd - this.mU[i].getStartPosition());
            ++i;
        }
        this.nd = nd;
    }
    
    String[] pY() {
        return this.mT;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        h.qf(this, parcel, n);
    }
}
