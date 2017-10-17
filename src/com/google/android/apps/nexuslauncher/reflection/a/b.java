// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.a;

import com.google.android.apps.nexuslauncher.reflection.g;
import android.content.ComponentName;
import java.util.Calendar;
import java.util.Iterator;
import android.app.usage.UsageStatsManager;
import android.app.AppOpsManager;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import android.util.Log;
import android.os.Process;
import com.android.launcher3.compat.UserManagerCompat;
import android.content.Context;
import java.util.List;
import com.google.android.gms.common.api.a;
import java.util.ArrayList;
import com.google.android.apps.nexuslauncher.reflection.o;

public class b implements o
{
    private final ArrayList f;
    private final a g;
    private final com.google.android.apps.nexuslauncher.reflection.b.b h;
    private final long i;
    private final List j;
    private final List k;
    
    public b(final Context context) {
        final int n = 4;
        this.f = new ArrayList();
        this.h = new com.google.android.apps.nexuslauncher.reflection.b.b();
        this.j = new ArrayList(n);
        this.k = new ArrayList(n);
        this.g = this.e(context);
        this.i = UserManagerCompat.getInstance(context).getSerialNumberForUser(Process.myUserHandle());
        this.j.add(new e(this.g, com.google.android.gms.location.b.DJ));
        final com.google.android.apps.nexuslauncher.reflection.a.a a = new com.google.android.apps.nexuslauncher.reflection.a.a(this.h, context);
        this.k.add(a);
        this.f.add(a);
        final d j = this.j(context);
        if (j != null) {
            this.j.add(j);
        }
        this.g.gg();
        this.k();
    }
    
    b(final List j, final List k, final long i) {
        this.f = new ArrayList();
        this.h = new com.google.android.apps.nexuslauncher.reflection.b.b();
        this.j = j;
        this.k = k;
        this.g = null;
        this.i = i;
        this.k();
    }
    
    private a e(final Context context) {
        final com.google.android.gms.common.api.b b = new com.google.android.gms.common.api.b(context);
        b.gu(com.google.android.gms.location.b.DI);
        b.go();
        return b.build();
    }
    
    private com.google.android.apps.nexuslauncher.reflection.d.e h() {
        try {
            final com.google.android.apps.nexuslauncher.reflection.b.b h = this.h;
            try {
                final com.google.android.apps.nexuslauncher.reflection.d.e instance = h.getInstance();
                try {
                    final byte[] byteArray = com.google.protobuf.nano.a.toByteArray(instance);
                    try {
                        return com.google.android.apps.nexuslauncher.reflection.d.e.ae(byteArray);
                    }
                    catch (InvalidProtocolBufferNanoException ex) {
                        Log.e("Reflection.Situation", "error duplicating Event", (Throwable)ex);
                        final com.google.android.apps.nexuslauncher.reflection.d.e ae = null;
                    }
                }
                catch (InvalidProtocolBufferNanoException ex2) {}
            }
            catch (InvalidProtocolBufferNanoException ex3) {}
        }
        catch (InvalidProtocolBufferNanoException ex4) {}
    }
    
    private d j(final Context context) {
        d d;
        if (((AppOpsManager)context.getSystemService("appops")).checkOpNoThrow("android:get_usage_stats", Process.myUid(), context.getPackageName()) == 0) {
            d = new d((UsageStatsManager)context.getSystemService("usagestats"));
        }
        else {
            d = null;
        }
        return d;
    }
    
    public void c() {
        this.g.gi();
        final Iterator iterator = this.f.iterator();
        while (iterator.hasNext()) {
            iterator.next().c();
        }
    }
    
    public com.google.android.apps.nexuslauncher.reflection.b.b f(final String an, final String ap, final Calendar calendar, final long ak, final long al, final String am, final String s) {
        final com.google.android.apps.nexuslauncher.reflection.d.e h = this.h();
        h.ah = calendar.getTimeInMillis();
        h.ai = calendar.getTimeZone().getID();
        h.aj = calendar.getTimeZone().getOffset(h.ah);
        h.ak = ak;
        h.al = al;
        h.am = am;
        h.an = an;
        h.ao = new String[] { "GEL", s };
        if (ap == null || ap.length() == 0) {
            h.ap = "app_launch";
        }
        else {
            h.ap = ap;
        }
        return new com.google.android.apps.nexuslauncher.reflection.b.b(h);
    }
    
    public com.google.android.apps.nexuslauncher.reflection.b.b g(final String s, final String s2, final Calendar calendar, final long n, final long n2, final String s3, final String s4) {
        this.k();
        return this.f(s, s2, calendar, n, n2, s3, s4);
    }
    
    public String i(final ComponentName componentName, final long n) {
        String s = com.google.android.apps.nexuslauncher.reflection.g.aU(componentName);
        if (n != this.i) {
            s = String.format("%s#%d", s, n);
        }
        return s;
    }
    
    public void k() {
        final Iterator iterator = this.j.iterator();
        while (iterator.hasNext()) {
            iterator.next().l(this.h);
        }
    }
}
