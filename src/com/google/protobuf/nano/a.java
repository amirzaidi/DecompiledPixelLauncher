// 
// Decompiled by Procyon v0.5.30
// 

package com.google.protobuf.nano;

import java.io.IOException;

public abstract class a
{
    protected volatile int cachedSize;
    
    public a() {
        this.cachedSize = -1;
    }
    
    public static final a mergeFrom(final a a, final byte[] array) {
        return mergeFrom(a, array, 0, array.length);
    }
    
    public static final a mergeFrom(final a a, final byte[] array, final int n, final int n2) {
        try {
            final c sh = c.SH(array, n, n2);
            a.mergeFrom(sh);
            final c c = sh;
            try {
                c.SP(0);
                return a;
            }
            catch (IOException ex2) {
                throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).");
            }
            catch (InvalidProtocolBufferNanoException ex) {
                throw ex;
            }
        }
        catch (IOException ex3) {}
        catch (InvalidProtocolBufferNanoException ex4) {}
    }
    
    public static final void toByteArray(final a a, final byte[] array, final int n, final int n2) {
        try {
            final b se = b.Se(array, n, n2);
            a.writeTo(se);
            se.RN();
        }
        catch (IOException ex) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", ex);
        }
    }
    
    public static final byte[] toByteArray(final a a) {
        final byte[] array = new byte[a.getSerializedSize()];
        toByteArray(a, array, 0, array.length);
        return array;
    }
    
    public a clone() {
        return (a)super.clone();
    }
    
    protected int computeSerializedSize() {
        return 0;
    }
    
    public int getCachedSize() {
        if (this.cachedSize < 0) {
            this.getSerializedSize();
        }
        return this.cachedSize;
    }
    
    public int getSerializedSize() {
        return this.cachedSize = this.computeSerializedSize();
    }
    
    public abstract a mergeFrom(final c p0);
    
    public String toString() {
        return i.Tm(this);
    }
    
    public void writeTo(final b b) {
    }
}
