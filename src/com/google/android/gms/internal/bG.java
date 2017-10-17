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
import android.support.v4.app.e;

public final class bg extends e implements aC
{
    private static WeakHashMap tM;
    private Bundle tL;
    private Map tN;
    private int tO;
    
    static {
        bg.tM = new WeakHashMap();
    }
    
    public bg() {
        this.tN = new t();
        this.tO = 0;
    }
    
    public static bg yo(final a a) {
        final WeakReference<bg> weakReference = bg.tM.get(a);
        Label_0091: {
            if (weakReference != null) {
                break Label_0091;
            }
            while (true) {
            Label_0069_Outer:
                while (true) {
                    while (true) {
                        bg bg = null;
                        try {
                        Label_0015:
                            while (true) {
                                final e apR = a.ahY().apR("SupportLifecycleFragmentImpl");
                                try {
                                    bg = (bg)apR;
                                    if (bg == null) {
                                        bg = new bg();
                                        a.ahY().apg().akD(bg, "SupportLifecycleFragmentImpl").akC();
                                        com.google.android.gms.internal.bg.tM.put(a, new WeakReference<e>(bg));
                                        return bg;
                                    }
                                    break;
                                    // iftrue(Label_0015:, bg2 == null)
                                    return weakReference.get();
                                }
                                catch (ClassCastException ex) {
                                    throw new IllegalStateException("Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl", ex);
                                }
                            }
                        }
                        catch (ClassCastException ex2) {}
                        if (!bg.aiv()) {
                            continue;
                        }
                        break;
                    }
                    continue Label_0069_Outer;
                }
            }
        }
    }
    
    private void yq(final String s, final aJ aj) {
        if (this.tO > 0) {
            new Handler(Looper.getMainLooper()).post((Runnable)new aH(this, aj, s));
        }
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        super.dump(s, fileDescriptor, printWriter, array);
        final Iterator<aJ> iterator = this.tN.values().iterator();
        while (iterator.hasNext()) {
            iterator.next().dump(s, fileDescriptor, printWriter, array);
        }
    }
    
    public void onActivityResult(final int n, final int n2, final Intent intent) {
        super.onActivityResult(n, n2, intent);
        final Iterator<aJ> iterator = this.tN.values().iterator();
        while (iterator.hasNext()) {
            iterator.next().onActivityResult(n, n2, intent);
        }
    }
    
    public void onCreate(final Bundle tl) {
        super.onCreate(tl);
        this.tO = 1;
        this.tL = tl;
        for (final Map.Entry<K, aJ> entry : this.tN.entrySet()) {
            final aJ aj = entry.getValue();
            Bundle bundle;
            if (tl == null) {
                bundle = null;
            }
            else {
                bundle = tl.getBundle((String)entry.getKey());
            }
            aj.onCreate(bundle);
        }
    }
    
    public void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle != null) {
            for (final Map.Entry<K, aJ> entry : this.tN.entrySet()) {
                final Bundle bundle2 = new Bundle();
                entry.getValue().onSaveInstanceState(bundle2);
                bundle.putBundle((String)entry.getKey(), bundle2);
            }
        }
    }
    
    public void onStart() {
        super.onStop();
        this.tO = 2;
        final Iterator<aJ> iterator = this.tN.values().iterator();
        while (iterator.hasNext()) {
            iterator.next().onStart();
        }
    }
    
    public void onStop() {
        super.onStop();
        this.tO = 3;
        final Iterator<aJ> iterator = this.tN.values().iterator();
        while (iterator.hasNext()) {
            iterator.next().onStop();
        }
    }
    
    public aJ uG(final String s, final Class clazz) {
        return clazz.cast(this.tN.get(s));
    }
    
    public void uH(final String s, final aJ aj) {
        if (this.tN.containsKey(s)) {
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(s).length() + 59).append("LifecycleCallback with tag ").append(s).append(" already added to this fragment.").toString());
        }
        this.tN.put(s, aj);
        this.yq(s, aj);
    }
    
    public a yp() {
        return this.getActivity();
    }
}
