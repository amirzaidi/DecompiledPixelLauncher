// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection;

import java.util.Collections;
import com.google.android.apps.nexuslauncher.reflection.f.j;
import com.android.launcher3.userevent.nano.LauncherLogProto$LauncherEvent;
import android.os.SystemClock;
import java.util.Calendar;
import com.android.launcher3.compat.UserManagerCompat;
import android.content.pm.LauncherActivityInfo;
import com.android.launcher3.compat.LauncherAppsCompat;
import com.android.launcher3.util.PackageUserKey;
import android.content.ComponentName;
import com.google.android.apps.nexuslauncher.reflection.f.n;
import com.android.launcher3.util.Preconditions;
import java.util.Iterator;
import java.util.Arrays;
import android.util.Log;
import java.util.Map;
import java.util.Collection;
import com.google.android.apps.nexuslauncher.reflection.f.l;
import java.util.List;
import android.content.Context;
import java.util.ArrayList;
import com.google.android.apps.nexuslauncher.reflection.filter.d;
import com.google.android.apps.nexuslauncher.reflection.filter.f;
import com.google.android.apps.nexuslauncher.reflection.c.a;
import com.google.android.apps.nexuslauncher.reflection.c.b;

public class k
{
    private final e bB;
    private final b bC;
    private final a bD;
    private final com.google.android.apps.nexuslauncher.reflection.filter.a bE;
    private final f bF;
    private final com.google.android.apps.nexuslauncher.reflection.filter.b bG;
    private final d bH;
    private final com.google.android.apps.nexuslauncher.reflection.a bI;
    private final ArrayList bJ;
    private final com.google.android.apps.nexuslauncher.reflection.e.b bK;
    private final m bL;
    private final Context mContext;
    final c mEngine;
    
    public k(final Context mContext, final c mEngine, final m bl, final com.google.android.apps.nexuslauncher.reflection.e.b bk, final f bf, final d bh, final com.google.android.apps.nexuslauncher.reflection.filter.b bg, final com.google.android.apps.nexuslauncher.reflection.filter.a be, final com.google.android.apps.nexuslauncher.reflection.a bi, final a bd, final b bc, final e bb) {
        this.bJ = new ArrayList();
        this.mContext = mContext;
        this.mEngine = mEngine;
        this.bL = bl;
        this.bK = bk;
        this.bF = bf;
        this.bH = bh;
        this.bG = bg;
        this.bE = be;
        this.bI = bi;
        this.bD = bd;
        this.bC = bc;
        this.bB = bb;
    }
    
    private l[] be(final List list) {
        final l[] array = new l[list.size()];
        for (int i = 0; i < list.size(); ++i) {
            final l l = new l();
            l.bb = list.get(i).Pd;
            l.bc = list.get(i).Pc;
            array[i] = l;
        }
        return array;
    }
    
    private ArrayList bg(final String s, final com.google.android.apps.nexuslauncher.reflection.d.b b, final com.google.android.apps.nexuslauncher.reflection.f.m m) {
        final int n = 12;
        final com.google.research.reflection.predictor.e as = this.mEngine.aS(s, b);
        final double[] hn = as.Hn();
        final ArrayList hr = as.Hr();
        this.bd(m, hr, hn);
        if (hr.size() > n) {
            return new ArrayList(hr.subList(0, n));
        }
        return hr;
    }
    
    static List stabilizePredictedAppOrder(final List list, final Map map) {
        int n = 0;
        final com.google.research.reflection.predictor.f[] array = new com.google.research.reflection.predictor.f[list.size()];
        final ArrayList<com.google.research.reflection.predictor.f> list2 = new ArrayList<com.google.research.reflection.predictor.f>();
        for (final com.google.research.reflection.predictor.f f : list) {
            if (map.containsKey(f.Pd)) {
                final int intValue = map.get(f.Pd);
                if (intValue < array.length) {
                    array[intValue] = f;
                }
                else {
                    Log.e("Reflection.SvcHandler", "Previous app index:" + intValue + " larger than current array size" + array.length);
                    list2.add(f);
                }
            }
            else {
                list2.add(f);
            }
        }
        map.clear();
        for (int i = 0; i < array.length; ++i) {
            if (array[i] == null) {
                final int n2 = n + 1;
                array[i] = list2.get(n);
                n = n2;
            }
        }
        return Arrays.asList(array);
    }
    
    public void bb(final String s, final long n) {
        Preconditions.assertNonUiThread();
        this.mEngine.aN("system", String.format("%s/", s));
    }
    
    public void bc(final List list) {
        this.bJ.addAll(list);
    }
    
    protected void bd(final com.google.android.apps.nexuslauncher.reflection.f.m m, final ArrayList list, final double[] bl) {
        List list2 = null;
        List list3;
        List list4;
        List list5;
        if (m != null) {
            list3 = new ArrayList();
            list4 = new ArrayList(list);
            list5 = new ArrayList();
            list2 = new ArrayList();
        }
        else {
            list5 = null;
            list3 = null;
            list4 = null;
        }
        this.bG.H(list, list3);
        this.bH.H(list, list5);
        this.bF.H(list, list2);
        this.bE.G(list);
        if (m != null) {
            if (bl != null) {
                m.be = new n();
                m.be.bl = bl;
            }
            m.bf = this.be(list);
            m.bg = this.be(list4);
            m.bh = this.be(list5);
            m.bi = this.be(list2);
        }
    }
    
    public void bf(final boolean b) {
        synchronized (this) {
            Preconditions.assertNonUiThread();
            if (b) {
                this.bD.w();
                this.mEngine.reset();
            }
            final Iterator iterator = this.bJ.iterator();
            while (iterator.hasNext()) {
                iterator.next().aw();
            }
        }
    }
    // monitorexit(this)
    
    String bh(final ComponentName componentName, final long n) {
        return this.bK.ap(componentName, n);
    }
    
    public void bi(final PackageUserKey packageUserKey) {
        final List activityList = LauncherAppsCompat.getInstance(this.mContext).getActivityList(packageUserKey.mPackageName, packageUserKey.mUser);
        if (activityList.isEmpty()) {
            return;
        }
        this.bG.L(activityList.get(0).getComponentName(), UserManagerCompat.getInstance(this.mContext).getSerialNumberForUser(packageUserKey.mUser), System.currentTimeMillis());
    }
    
    public void bj(final String s, final int n) {
        Preconditions.assertNonUiThread();
        this.predict(s, n, this.bK.aq(s, "predict", Calendar.getInstance(), this.bB.aX(), SystemClock.elapsedRealtime(), "unknown", ""));
    }
    
    public void bk(final String s, final String packageName, final String at, final LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent) {
        Preconditions.assertNonUiThread();
        if (packageName == null) {
            Log.e("Reflection.SvcHandler", "Empty event string");
            return;
        }
        final Calendar instance = Calendar.getInstance();
        final long ax = this.bB.aX();
        final long elapsedRealtime = SystemClock.elapsedRealtime();
        String string = "";
        if (launcherLogProto$LauncherEvent.srcTarget.length > 1) {
            string = Integer.toString(launcherLogProto$LauncherEvent.srcTarget[1].containerType);
        }
        this.mEngine.aT(s, this.bK.aq(s, at, instance, ax, elapsedRealtime, packageName, string));
        this.mEngine.aU();
        this.bG.K();
        if (this.bC != null) {
            final j j = new j();
            j.aT = at;
            j.aU = instance.getTimeInMillis();
            j.packageName = packageName;
            if (launcherLogProto$LauncherEvent != null) {
                final com.google.android.apps.nexuslauncher.reflection.f.k av = new com.google.android.apps.nexuslauncher.reflection.f.k();
                if (launcherLogProto$LauncherEvent.srcTarget.length >= 2 && launcherLogProto$LauncherEvent.srcTarget[1].containerType != 0) {
                    av.aX = Integer.toString(launcherLogProto$LauncherEvent.srcTarget[1].containerType);
                    av.aY = Integer.toString(launcherLogProto$LauncherEvent.srcTarget[0].pageIndex);
                }
                j.aV = av;
            }
            this.bC.A(j);
        }
    }
    
    void predict(final String s, final int n, final com.google.android.apps.nexuslauncher.reflection.d.b b) {
        com.google.android.apps.nexuslauncher.reflection.f.m aw = null;
        j j;
        if (this.bC != null) {
            j = new j();
            j.aT = "prediction_update";
            j.aU = b.aa();
            aw = new com.google.android.apps.nexuslauncher.reflection.f.m();
            j.aW = aw;
        }
        else {
            j = null;
        }
        this.bE.I(n);
        final ArrayList bg = this.bg(s, b, aw);
        final Map ag = this.bI.aG();
        List<Object> list;
        List<Object> list2;
        if (bg.size() > n) {
            list = bg.subList(0, n);
            list2 = bg.subList(n, bg.size());
        }
        else {
            list2 = Collections.emptyList();
            list = (List<Object>)bg;
        }
        if (!ag.isEmpty()) {
            list = (List<Object>)stabilizePredictedAppOrder(list, ag);
        }
        this.bI.aJ(list, list2);
        if (j != null) {
            this.bC.A(j);
        }
    }
    
    void updateNewEvent(final String s, final com.google.android.apps.nexuslauncher.reflection.d.b b) {
        Preconditions.assertNonUiThread();
        this.mEngine.aT(s, b);
    }
}
