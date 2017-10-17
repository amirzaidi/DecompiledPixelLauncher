// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.d;

import java.util.Iterator;
import com.google.android.apps.nexuslauncher.reflection.g;
import android.content.ComponentName;
import java.util.Calendar;
import android.app.usage.UsageStatsManager;
import android.app.AppOpsManager;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import android.util.Log;
import android.os.Process;
import com.android.launcher3.compat.UserManagerCompat;
import android.content.Context;
import java.util.List;
import com.google.android.gms.common.api.d;
import java.util.ArrayList;
import com.google.android.apps.nexuslauncher.reflection.f;

public class b implements f
{
    private final ArrayList bJ;
    private final d bK;
    private final com.google.android.apps.nexuslauncher.reflection.b.b bL;
    private final long bM;
    private final List bN;
    private final List bO;
    
    public b(final Context context) {
        final int n = 4;
        this.bJ = new ArrayList();
        this.bL = new com.google.android.apps.nexuslauncher.reflection.b.b();
        this.bN = new ArrayList(n);
        this.bO = new ArrayList(n);
        this.bK = this.aZ(context);
        this.bM = UserManagerCompat.getInstance(context).getSerialNumberForUser(Process.myUserHandle());
        this.bN.add(new e(this.bK, com.google.android.gms.location.b.Ce));
        final com.google.android.apps.nexuslauncher.reflection.d.d d = new com.google.android.apps.nexuslauncher.reflection.d.d(this.bL, context);
        this.bO.add(d);
        this.bJ.add(d);
        final a bc = this.bc(context);
        if (bc != null) {
            this.bN.add(bc);
        }
        this.bK.dv();
        this.bd();
    }
    
    b(final List bn, final List bo, final long bm) {
        this.bJ = new ArrayList();
        this.bL = new com.google.android.apps.nexuslauncher.reflection.b.b();
        this.bN = bn;
        this.bO = bo;
        this.bK = null;
        this.bM = bm;
        this.bd();
    }
    
    private d aZ(final Context context) {
        final com.google.android.gms.common.api.e e = new com.google.android.gms.common.api.e(context);
        e.dO(com.google.android.gms.location.b.Cd);
        e.dI();
        return e.build();
    }
    
    private com.google.android.apps.nexuslauncher.reflection.a.a bb() {
        try {
            final com.google.android.apps.nexuslauncher.reflection.b.b bl = this.bL;
            try {
                final com.google.android.apps.nexuslauncher.reflection.a.a ay = bl.ay();
                try {
                    final byte[] byteArray = com.google.protobuf.nano.a.toByteArray(ay);
                    try {
                        return com.google.android.apps.nexuslauncher.reflection.a.a.am(byteArray);
                    }
                    catch (InvalidProtocolBufferNanoException ex) {
                        Log.e("Reflection.Situation", "error duplicating Event", (Throwable)ex);
                        final com.google.android.apps.nexuslauncher.reflection.a.a am = null;
                    }
                }
                catch (InvalidProtocolBufferNanoException ex2) {}
            }
            catch (InvalidProtocolBufferNanoException ex3) {}
        }
        catch (InvalidProtocolBufferNanoException ex4) {}
    }
    
    private a bc(final Context context) {
        a a;
        if (((AppOpsManager)context.getSystemService("appops")).checkOpNoThrow("android:get_usage_stats", Process.myUid(), context.getPackageName()) == 0) {
            a = new a((UsageStatsManager)context.getSystemService("usagestats"));
        }
        else {
            a = null;
        }
        return a;
    }
    
    public com.google.android.apps.nexuslauncher.reflection.b.b aX(final String s, final String s2, final Calendar calendar, final long n, final long n2, final String s3, final String s4) {
        this.bd();
        return this.ba(s, s2, calendar, n, n2, s3, s4);
    }
    
    public String aY(final ComponentName componentName, final long n) {
        String s = g.bZ(componentName);
        if (n != this.bM) {
            s = String.format("%s#%d", s, n);
        }
        return s;
    }
    
    public com.google.android.apps.nexuslauncher.reflection.b.b ba(final String an, final String az, final Calendar calendar, final long am, final long ap, final String as, final String s) {
        final com.google.android.apps.nexuslauncher.reflection.a.a bb = this.bb();
        bb.aw = calendar.getTimeInMillis();
        bb.ay = calendar.getTimeZone().getID();
        bb.ax = calendar.getTimeZone().getOffset(bb.aw);
        bb.am = am;
        bb.ap = ap;
        bb.as = as;
        bb.an = an;
        bb.aq = new String[] { "GEL", s };
        if (az == null || az.length() == 0) {
            bb.az = "app_launch";
        }
        else {
            bb.az = az;
        }
        return new com.google.android.apps.nexuslauncher.reflection.b.b(bb);
    }
    
    public void bd() {
        final Iterator iterator = this.bN.iterator();
        while (iterator.hasNext()) {
            iterator.next().aW(this.bL);
        }
    }
    
    public void be() {
        this.bK.dx();
        final Iterator iterator = this.bJ.iterator();
        while (iterator.hasNext()) {
            iterator.next().be();
        }
    }
}
