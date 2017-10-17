// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Intent;
import java.util.Iterator;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import android.os.Handler;
import android.os.Looper;
import java.lang.ref.WeakReference;
import android.support.v4.app.a;
import android.support.v4.a.t;
import java.util.Map;
import android.os.Bundle;
import java.util.WeakHashMap;
import android.support.v4.app.g;

public final class ba extends g implements aw
{
    private static WeakHashMap tS;
    private Bundle tR;
    private Map tT;
    private int tU;
    
    static {
        ba.tS = new WeakHashMap();
    }
    
    public ba() {
        this.tT = new t();
        this.tU = 0;
    }
    
    public static ba yn(final a a) {
        final WeakReference<ba> weakReference = ba.tS.get(a);
        Label_0091: {
            if (weakReference != null) {
                break Label_0091;
            }
            while (true) {
            Label_0069_Outer:
                while (true) {
                    while (true) {
                        ba ba = null;
                        try {
                        Label_0015:
                            while (true) {
                                final g aqS = a.aji().aqS("SupportLifecycleFragmentImpl");
                                try {
                                    ba = (ba)aqS;
                                    if (ba == null) {
                                        ba = new ba();
                                        a.aji().aqh().alN(ba, "SupportLifecycleFragmentImpl").alM();
                                        com.google.android.gms.internal.ba.tS.put(a, new WeakReference<g>(ba));
                                        return ba;
                                    }
                                    break;
                                    // iftrue(Label_0015:, ba2 == null)
                                    return weakReference.get();
                                }
                                catch (ClassCastException ex) {
                                    throw new IllegalStateException("Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl", ex);
                                }
                            }
                        }
                        catch (ClassCastException ex2) {}
                        if (!ba.ajI()) {
                            continue;
                        }
                        break;
                    }
                    continue Label_0069_Outer;
                }
            }
        }
    }
    
    private void yp(final String s, final aD ad) {
        if (this.tU > 0) {
            new Handler(Looper.getMainLooper()).post((Runnable)new aB(this, ad, s));
        }
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        super.dump(s, fileDescriptor, printWriter, array);
        final Iterator<aD> iterator = this.tT.values().iterator();
        while (iterator.hasNext()) {
            iterator.next().dump(s, fileDescriptor, printWriter, array);
        }
    }
    
    public void onActivityResult(final int n, final int n2, final Intent intent) {
        super.onActivityResult(n, n2, intent);
        final Iterator<aD> iterator = this.tT.values().iterator();
        while (iterator.hasNext()) {
            iterator.next().onActivityResult(n, n2, intent);
        }
    }
    
    public void onCreate(final Bundle tr) {
        super.onCreate(tr);
        this.tU = 1;
        this.tR = tr;
        for (final Map.Entry<K, aD> entry : this.tT.entrySet()) {
            final aD ad = entry.getValue();
            Bundle bundle;
            if (tr == null) {
                bundle = null;
            }
            else {
                bundle = tr.getBundle((String)entry.getKey());
            }
            ad.onCreate(bundle);
        }
    }
    
    public void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle != null) {
            for (final Map.Entry<K, aD> entry : this.tT.entrySet()) {
                final Bundle bundle2 = new Bundle();
                entry.getValue().onSaveInstanceState(bundle2);
                bundle.putBundle((String)entry.getKey(), bundle2);
            }
        }
    }
    
    public void onStart() {
        super.onStop();
        this.tU = 2;
        final Iterator<aD> iterator = this.tT.values().iterator();
        while (iterator.hasNext()) {
            iterator.next().onStart();
        }
    }
    
    public void onStop() {
        super.onStop();
        this.tU = 3;
        final Iterator<aD> iterator = this.tT.values().iterator();
        while (iterator.hasNext()) {
            iterator.next().onStop();
        }
    }
    
    public aD uF(final String s, final Class clazz) {
        return clazz.cast(this.tT.get(s));
    }
    
    public void uG(final String s, final aD ad) {
        if (this.tT.containsKey(s)) {
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(s).length() + 59).append("LifecycleCallback with tag ").append(s).append(" already added to this fragment.").toString());
        }
        this.tT.put(s, ad);
        this.yp(s, ad);
    }
    
    public a yo() {
        return this.getActivity();
    }
}
