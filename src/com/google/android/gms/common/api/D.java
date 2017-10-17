// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.api;

import android.content.Context;
import com.google.android.gms.internal.b;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import android.os.Looper;
import java.util.Map;
import java.util.Collections;
import java.util.WeakHashMap;
import java.util.Set;

public abstract class d
{
    private static final Set dQ;
    
    static {
        dQ = Collections.newSetFromMap(new WeakHashMap<Object, Boolean>());
    }
    
    public i dA(final j j) {
        throw new UnsupportedOperationException();
    }
    
    public void dB(final com.google.android.gms.internal.d d) {
        throw new UnsupportedOperationException();
    }
    
    public void dC(final com.google.android.gms.internal.d d) {
        throw new UnsupportedOperationException();
    }
    
    public Looper du() {
        throw new UnsupportedOperationException();
    }
    
    public abstract void dump(final String p0, final FileDescriptor p1, final PrintWriter p2, final String[] p3);
    
    public abstract void dv();
    
    public abstract void dw(final f p0);
    
    public abstract void dx();
    
    public b dy(final b b) {
        throw new UnsupportedOperationException();
    }
    
    public abstract void dz(final f p0);
    
    public Context getContext() {
        throw new UnsupportedOperationException();
    }
}
