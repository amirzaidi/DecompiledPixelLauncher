// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.content.Intent;
import java.util.Iterator;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import android.os.Handler;
import android.os.Looper;
import java.lang.ref.WeakReference;
import android.app.Activity;
import android.support.v4.a.t;
import java.util.Map;
import android.os.Bundle;
import java.util.WeakHashMap;
import android.app.Fragment;

public final class bf extends Fragment implements aC
{
    private static WeakHashMap tI;
    private Bundle tH;
    private Map tJ;
    private int tK;
    
    static {
        bf.tI = new WeakHashMap();
    }
    
    public bf() {
        this.tJ = new t();
        this.tK = 0;
    }
    
    public static bf yi(final Activity activity) {
        final WeakReference<bf> weakReference = bf.tI.get(activity);
        Label_0091: {
            if (weakReference != null) {
                break Label_0091;
            }
            while (true) {
            Label_0069_Outer:
                while (true) {
                    while (true) {
                        bf bf = null;
                        try {
                        Label_0015:
                            while (true) {
                                final Fragment fragmentByTag = activity.getFragmentManager().findFragmentByTag("LifecycleFragmentImpl");
                                try {
                                    bf = (bf)fragmentByTag;
                                    if (bf == null) {
                                        bf = new bf();
                                        activity.getFragmentManager().beginTransaction().add((Fragment)bf, "LifecycleFragmentImpl").commitAllowingStateLoss();
                                        com.google.android.gms.internal.bf.tI.put(activity, new WeakReference<Fragment>(bf));
                                        return bf;
                                    }
                                    break;
                                }
                                // iftrue(Label_0015:, (bf)weakReference.get() == null)
                                catch (ClassCastException ex) {
                                    throw new IllegalStateException("Fragment with tag LifecycleFragmentImpl is not a LifecycleFragmentImpl", ex);
                                }
                            }
                        }
                        catch (ClassCastException ex2) {}
                        if (!bf.isRemoving()) {
                            continue;
                        }
                        break;
                    }
                    continue Label_0069_Outer;
                }
            }
        }
    }
    
    private void yk(final String s, final aJ aj) {
        if (this.tK > 0) {
            new Handler(Looper.getMainLooper()).post((Runnable)new aF(this, aj, s));
        }
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        super.dump(s, fileDescriptor, printWriter, array);
        final Iterator<aJ> iterator = this.tJ.values().iterator();
        while (iterator.hasNext()) {
            iterator.next().dump(s, fileDescriptor, printWriter, array);
        }
    }
    
    public void onActivityResult(final int n, final int n2, final Intent intent) {
        super.onActivityResult(n, n2, intent);
        final Iterator<aJ> iterator = this.tJ.values().iterator();
        while (iterator.hasNext()) {
            iterator.next().onActivityResult(n, n2, intent);
        }
    }
    
    public void onCreate(final Bundle th) {
        super.onCreate(th);
        this.tK = 1;
        this.tH = th;
        for (final Map.Entry<K, aJ> entry : this.tJ.entrySet()) {
            final aJ aj = entry.getValue();
            Bundle bundle;
            if (th == null) {
                bundle = null;
            }
            else {
                bundle = th.getBundle((String)entry.getKey());
            }
            aj.onCreate(bundle);
        }
    }
    
    public void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle != null) {
            for (final Map.Entry<K, aJ> entry : this.tJ.entrySet()) {
                final Bundle bundle2 = new Bundle();
                entry.getValue().onSaveInstanceState(bundle2);
                bundle.putBundle((String)entry.getKey(), bundle2);
            }
        }
    }
    
    public void onStart() {
        super.onStop();
        this.tK = 2;
        final Iterator<aJ> iterator = this.tJ.values().iterator();
        while (iterator.hasNext()) {
            iterator.next().onStart();
        }
    }
    
    public void onStop() {
        super.onStop();
        this.tK = 3;
        final Iterator<aJ> iterator = this.tJ.values().iterator();
        while (iterator.hasNext()) {
            iterator.next().onStop();
        }
    }
    
    public aJ uG(final String s, final Class clazz) {
        return clazz.cast(this.tJ.get(s));
    }
    
    public void uH(final String s, final aJ aj) {
        if (this.tJ.containsKey(s)) {
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(s).length() + 59).append("LifecycleCallback with tag ").append(s).append(" already added to this fragment.").toString());
        }
        this.tJ.put(s, aj);
        this.yk(s, aj);
    }
    
    public Activity uI() {
        return this.getActivity();
    }
}
