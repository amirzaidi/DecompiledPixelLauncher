// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.e;

import java.util.Iterator;
import java.util.Calendar;
import android.content.ComponentName;
import android.app.usage.UsageStatsManager;
import android.app.AppOpsManager;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import android.util.Log;
import com.google.android.gms.location.d;
import android.os.Process;
import com.android.launcher3.compat.UserManagerCompat;
import android.content.Context;
import java.util.List;
import com.google.android.gms.common.api.a;
import java.util.ArrayList;
import com.google.android.apps.nexuslauncher.reflection.l;

public class b implements l
{
    private final ArrayList O;
    private final a P;
    private final com.google.android.apps.nexuslauncher.reflection.d.b Q;
    private final long R;
    private final List S;
    private final List T;
    
    public b(final Context context) {
        final int n = 4;
        this.O = new ArrayList();
        this.Q = new com.google.android.apps.nexuslauncher.reflection.d.b();
        this.S = new ArrayList(n);
        this.T = new ArrayList(n);
        this.P = this.ar(context);
        this.R = UserManagerCompat.getInstance(context).getSerialNumberForUser(Process.myUserHandle());
        this.S.add(new com.google.android.apps.nexuslauncher.reflection.e.a(this.P, d.GT));
        final e e = new e(this.Q, context);
        this.T.add(e);
        this.O.add(e);
        final com.google.android.apps.nexuslauncher.reflection.e.d au = this.au(context);
        if (au != null) {
            this.S.add(au);
        }
        this.P.gw();
        this.av();
    }
    
    b(final List s, final List t, final long r) {
        this.O = new ArrayList();
        this.Q = new com.google.android.apps.nexuslauncher.reflection.d.b();
        this.S = s;
        this.T = t;
        this.P = null;
        this.R = r;
        this.av();
    }
    
    private a ar(final Context context) {
        final com.google.android.gms.common.api.b b = new com.google.android.gms.common.api.b(context);
        b.gG(d.GS);
        b.gE();
        return b.build();
    }
    
    private com.google.android.apps.nexuslauncher.reflection.f.e at() {
        try {
            final com.google.android.apps.nexuslauncher.reflection.d.b q = this.Q;
            try {
                final com.google.android.apps.nexuslauncher.reflection.f.e instance = q.getInstance();
                try {
                    final byte[] byteArray = com.google.protobuf.nano.a.toByteArray(instance);
                    try {
                        return com.google.android.apps.nexuslauncher.reflection.f.e.aC(byteArray);
                    }
                    catch (InvalidProtocolBufferNanoException ex) {
                        Log.e("Reflection.Situation", "error duplicating Event", (Throwable)ex);
                        final com.google.android.apps.nexuslauncher.reflection.f.e ac = null;
                    }
                }
                catch (InvalidProtocolBufferNanoException ex2) {}
            }
            catch (InvalidProtocolBufferNanoException ex3) {}
        }
        catch (InvalidProtocolBufferNanoException ex4) {}
    }
    
    private com.google.android.apps.nexuslauncher.reflection.e.d au(final Context context) {
        com.google.android.apps.nexuslauncher.reflection.e.d d;
        if (((AppOpsManager)context.getSystemService("appops")).checkOpNoThrow("android:get_usage_stats", Process.myUid(), context.getPackageName()) == 0) {
            d = new com.google.android.apps.nexuslauncher.reflection.e.d((UsageStatsManager)context.getSystemService("usagestats"));
        }
        else {
            d = null;
        }
        return d;
    }
    
    public String ap(final ComponentName componentName, final long n) {
        String s = com.google.android.apps.nexuslauncher.reflection.b.aK(componentName);
        if (n != this.R) {
            s = String.format("%s#%d", s, n);
        }
        return s;
    }
    
    public com.google.android.apps.nexuslauncher.reflection.d.b aq(final String s, final String s2, final Calendar calendar, final long n, final long n2, final String s3, final String s4) {
        this.av();
        return this.as(s, s2, calendar, n, n2, s3, s4);
    }
    
    public com.google.android.apps.nexuslauncher.reflection.d.b as(final String ar, final String as, final Calendar calendar, final long ay, final long az, final String at, final String s) {
        final com.google.android.apps.nexuslauncher.reflection.f.e at2 = this.at();
        at2.aq = calendar.getTimeInMillis();
        at2.aw = calendar.getTimeZone().getID();
        at2.ax = calendar.getTimeZone().getOffset(at2.aq);
        at2.ay = ay;
        at2.az = az;
        at2.at = at;
        at2.ar = ar;
        at2.au = new String[] { "GEL", s };
        if (as == null || as.length() == 0) {
            at2.as = "app_launch";
        }
        else {
            at2.as = as;
        }
        return new com.google.android.apps.nexuslauncher.reflection.d.b(at2);
    }
    
    public void av() {
        final Iterator iterator = this.S.iterator();
        while (iterator.hasNext()) {
            iterator.next().ao(this.Q);
        }
    }
    
    public void aw() {
        this.P.gy();
        final Iterator iterator = this.O.iterator();
        while (iterator.hasNext()) {
            iterator.next().aw();
        }
    }
}
