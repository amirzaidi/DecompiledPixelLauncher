// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.api;

import com.google.android.gms.internal.d;
import com.google.android.gms.internal.b;
import android.os.Looper;
import android.content.Context;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import java.util.Map;
import java.util.Collections;
import java.util.WeakHashMap;
import java.util.Set;

public abstract class a
{
    private static final Set gJ;
    
    static {
        gJ = Collections.newSetFromMap(new WeakHashMap<Object, Boolean>());
    }
    
    public abstract void dump(final String p0, final FileDescriptor p1, final PrintWriter p2, final String[] p3);
    
    public Context getContext() {
        throw new UnsupportedOperationException();
    }
    
    public Looper gf() {
        throw new UnsupportedOperationException();
    }
    
    public abstract void gg();
    
    public abstract void gh(final c p0);
    
    public abstract void gi();
    
    public b gj(final b b) {
        throw new UnsupportedOperationException();
    }
    
    public abstract void gk(final c p0);
    
    public g gl(final h h) {
        throw new UnsupportedOperationException();
    }
    
    public void gm(final d d) {
        throw new UnsupportedOperationException();
    }
    
    public void gn(final d d) {
        throw new UnsupportedOperationException();
    }
}
