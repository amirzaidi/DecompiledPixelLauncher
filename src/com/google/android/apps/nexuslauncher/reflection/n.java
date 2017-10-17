// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection;

import java.util.Collections;
import com.android.launcher3.compat.UserManagerCompat;
import android.content.pm.LauncherActivityInfo;
import com.android.launcher3.compat.LauncherAppsCompat;
import com.android.launcher3.util.PackageUserKey;
import com.google.android.apps.nexuslauncher.reflection.d.k;
import com.google.android.apps.nexuslauncher.reflection.d.j;
import android.os.SystemClock;
import java.util.Calendar;
import com.android.launcher3.userevent.nano.LauncherLogProto$LauncherEvent;
import android.content.ComponentName;
import com.android.launcher3.util.Preconditions;
import java.util.Iterator;
import java.util.Arrays;
import android.util.Log;
import java.util.Map;
import java.util.Collection;
import com.google.research.reflection.predictor.f;
import com.google.android.apps.nexuslauncher.reflection.d.l;
import java.util.List;
import android.content.Context;
import java.util.ArrayList;
import com.google.android.apps.nexuslauncher.reflection.filter.a;
import com.google.android.apps.nexuslauncher.reflection.filter.c;
import com.google.android.apps.nexuslauncher.reflection.c.b;
import com.google.android.apps.nexuslauncher.reflection.c.e;

public class n
{
    private final d bA;
    private final e bB;
    private final b bC;
    private final c bD;
    private final com.google.android.apps.nexuslauncher.reflection.filter.d bE;
    private final a bF;
    private final m bG;
    private final ArrayList bH;
    private final com.google.android.apps.nexuslauncher.reflection.a.b bI;
    private final com.google.android.apps.nexuslauncher.reflection.e bJ;
    private final Context mContext;
    final com.google.android.apps.nexuslauncher.reflection.b mEngine;
    
    public n(final Context mContext, final com.google.android.apps.nexuslauncher.reflection.b mEngine, final com.google.android.apps.nexuslauncher.reflection.e bj, final com.google.android.apps.nexuslauncher.reflection.a.b bi, final c bd, final a bf, final com.google.android.apps.nexuslauncher.reflection.filter.d be, final m bg, final b bc, final e bb, final d ba) {
        this.bH = new ArrayList();
        this.mContext = mContext;
        this.mEngine = mEngine;
        this.bJ = bj;
        this.bI = bi;
        this.bD = bd;
        this.bF = bf;
        this.bE = be;
        this.bG = bg;
        this.bC = bc;
        this.bB = bb;
        this.bA = ba;
    }
    
    private l[] bk(final List list) {
        final l[] array = new l[list.size()];
        for (int i = 0; i < list.size(); ++i) {
            final l l = new l();
            l.aR = list.get(i).ML;
            l.aT = list.get(i).MK;
            array[i] = l;
        }
        return array;
    }
    
    private ArrayList bl(final String s, final com.google.android.apps.nexuslauncher.reflection.b.b b, final com.google.android.apps.nexuslauncher.reflection.d.m m) {
        final int n = 12;
        final com.google.research.reflection.predictor.e au = this.mEngine.au(s, b);
        final double[] sj = au.SJ();
        final ArrayList sn = au.SN();
        this.bj(m, sn, sj);
        if (sn.size() > n) {
            return new ArrayList(sn.subList(0, n));
        }
        return sn;
    }
    
    static List stabilizePredictedAppOrder(final List list, final Map map) {
        int n = 0;
        final f[] array = new f[list.size()];
        final ArrayList<f> list2 = new ArrayList<f>();
        for (final f f : list) {
            if (map.containsKey(f.ML)) {
                final int intValue = map.get(f.ML);
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
    
    public void bc(final List list) {
        this.bH.addAll(list);
    }
    
    public void bd(final boolean b) {
        synchronized (this) {
            Preconditions.assertNonUiThread();
            if (b) {
                this.bC.T();
                this.mEngine.reset();
            }
            final Iterator iterator = this.bH.iterator();
            while (iterator.hasNext()) {
                iterator.next().c();
            }
        }
    }
    // monitorexit(this)
    
    String be(final ComponentName componentName, final long n) {
        return this.bI.i(componentName, n);
    }
    
    public void bf(final String s, final String packageName, final String ak, final LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent) {
        Preconditions.assertNonUiThread();
        if (packageName == null) {
            Log.e("Reflection.SvcHandler", "Empty event string");
            return;
        }
        final Calendar instance = Calendar.getInstance();
        final long ae = this.bA.aE();
        final long elapsedRealtime = SystemClock.elapsedRealtime();
        String string = "";
        if (launcherLogProto$LauncherEvent.srcTarget.length > 1) {
            string = Integer.toString(launcherLogProto$LauncherEvent.srcTarget[1].containerType);
        }
        this.mEngine.av(s, this.bI.g(s, ak, instance, ae, elapsedRealtime, packageName, string));
        this.mEngine.aw();
        this.bE.x();
        if (this.bB != null) {
            final j j = new j();
            j.aK = ak;
            j.aJ = instance.getTimeInMillis();
            j.packageName = packageName;
            if (launcherLogProto$LauncherEvent != null) {
                final k am = new k();
                if (launcherLogProto$LauncherEvent.srcTarget.length >= 2 && launcherLogProto$LauncherEvent.srcTarget[1].containerType != 0) {
                    am.aN = Integer.toString(launcherLogProto$LauncherEvent.srcTarget[1].containerType);
                    am.aO = Integer.toString(launcherLogProto$LauncherEvent.srcTarget[0].pageIndex);
                }
                j.aM = am;
            }
            this.bB.aa(j);
        }
    }
    
    public void bg(final String s, final int n) {
        Preconditions.assertNonUiThread();
        this.predict(s, n, this.bI.g(s, "predict", Calendar.getInstance(), this.bA.aE(), SystemClock.elapsedRealtime(), "unknown", ""));
    }
    
    public void bh(final PackageUserKey packageUserKey) {
        final List activityList = LauncherAppsCompat.getInstance(this.mContext).getActivityList(packageUserKey.mPackageName, packageUserKey.mUser);
        if (activityList.isEmpty()) {
            return;
        }
        this.bE.y(activityList.get(0).getComponentName(), UserManagerCompat.getInstance(this.mContext).getSerialNumberForUser(packageUserKey.mUser), System.currentTimeMillis());
    }
    
    public void bi(final String s, final long n) {
        Preconditions.assertNonUiThread();
        this.mEngine.ap("system", String.format("%s/", s));
    }
    
    protected void bj(final com.google.android.apps.nexuslauncher.reflection.d.m m, final ArrayList list, final double[] bb) {
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
        this.bE.n(list, list3);
        this.bF.n(list, list5);
        this.bD.n(list, list2);
        if (m != null) {
            if (bb != null) {
                m.aW = new com.google.android.apps.nexuslauncher.reflection.d.n();
                m.aW.bb = bb;
            }
            m.ba = this.bk(list);
            m.aV = this.bk(list4);
            m.aY = this.bk(list5);
            m.aZ = this.bk(list2);
        }
    }
    
    void predict(final String s, final int n, final com.google.android.apps.nexuslauncher.reflection.b.b b) {
        com.google.android.apps.nexuslauncher.reflection.d.m al = null;
        j j;
        if (this.bB != null) {
            j = new j();
            j.aK = "prediction_update";
            j.aJ = b.F();
            al = new com.google.android.apps.nexuslauncher.reflection.d.m();
            j.aL = al;
        }
        else {
            j = null;
        }
        final ArrayList bl = this.bl(s, b, al);
        final Map ay = this.bG.aY();
        List<Object> list;
        List<Object> list2;
        if (bl.size() > n) {
            list = bl.subList(0, n);
            list2 = bl.subList(n, bl.size());
        }
        else {
            list2 = Collections.emptyList();
            list = (List<Object>)bl;
        }
        if (!ay.isEmpty()) {
            list = (List<Object>)stabilizePredictedAppOrder(list, ay);
        }
        this.bG.bb(list, list2);
        if (j != null) {
            this.bB.aa(j);
        }
    }
    
    void updateNewEvent(final String s, final com.google.android.apps.nexuslauncher.reflection.b.b b) {
        Preconditions.assertNonUiThread();
        this.mEngine.av(s, b);
    }
}
