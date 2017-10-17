// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection;

import com.google.android.apps.nexuslauncher.reflection.a.g;
import com.android.launcher3.userevent.nano.LauncherLogProto$LauncherEvent;
import android.os.SystemClock;
import java.util.Calendar;
import android.content.ComponentName;
import com.google.android.apps.nexuslauncher.reflection.a.j;
import com.android.launcher3.util.Preconditions;
import java.util.Iterator;
import java.util.Arrays;
import android.util.Log;
import java.util.Map;
import java.util.Collection;
import com.google.research.reflection.predictor.f;
import java.util.List;
import android.content.Context;
import java.util.ArrayList;
import com.google.android.apps.nexuslauncher.reflection.filter.d;
import com.google.android.apps.nexuslauncher.reflection.filter.b;
import com.google.android.apps.nexuslauncher.reflection.c.a;

public class e
{
    private final m cD;
    private final com.google.android.apps.nexuslauncher.reflection.c.e cE;
    private final a cF;
    private final com.google.android.apps.nexuslauncher.reflection.filter.a cG;
    private final b cH;
    private final d cI;
    private final h cJ;
    private final ArrayList cK;
    private final com.google.android.apps.nexuslauncher.reflection.d.b cL;
    private final com.google.android.apps.nexuslauncher.reflection.b cM;
    private final Context mContext;
    final i mEngine;
    
    public e(final Context mContext, final i mEngine, final com.google.android.apps.nexuslauncher.reflection.b cm, final com.google.android.apps.nexuslauncher.reflection.d.b cl, final com.google.android.apps.nexuslauncher.reflection.filter.a cg, final d ci, final b ch, final h cj, final a cf, final com.google.android.apps.nexuslauncher.reflection.c.e ce, final m cd) {
        this.cK = new ArrayList();
        this.mContext = mContext;
        this.mEngine = mEngine;
        this.cM = cm;
        this.cL = cl;
        this.cG = cg;
        this.cI = ci;
        this.cH = ch;
        this.cJ = cj;
        this.cF = cf;
        this.cE = ce;
        this.cD = cd;
    }
    
    private com.google.android.apps.nexuslauncher.reflection.a.h[] bT(final List list) {
        final com.google.android.apps.nexuslauncher.reflection.a.h[] array = new com.google.android.apps.nexuslauncher.reflection.a.h[list.size()];
        for (int i = 0; i < list.size(); ++i) {
            final com.google.android.apps.nexuslauncher.reflection.a.h h = new com.google.android.apps.nexuslauncher.reflection.a.h();
            h.aW = list.get(i).LR;
            h.aX = list.get(i).LQ;
            array[i] = h;
        }
        return array;
    }
    
    private ArrayList bV(final String s, final com.google.android.apps.nexuslauncher.reflection.b.b b, final com.google.android.apps.nexuslauncher.reflection.a.i i) {
        final int n = 12;
        final com.google.research.reflection.predictor.e cm = this.mEngine.cm(s, b);
        final double[] tw = cm.TW();
        final ArrayList ua = cm.Ua();
        this.bS(i, ua, tw);
        if (ua.size() > n) {
            return new ArrayList(ua.subList(0, n));
        }
        return ua;
    }
    
    static List stabilizePredictedAppOrder(final List list, final Map map) {
        int n = 0;
        final f[] array = new f[list.size()];
        final ArrayList<f> list2 = new ArrayList<f>();
        for (final f f : list) {
            if (map.containsKey(f.LR)) {
                final int intValue = map.get(f.LR);
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
    
    public void bQ(final String s, final long n) {
        Preconditions.assertNonUiThread();
        this.mEngine.cn("system", String.format("%s/", s));
    }
    
    public void bR(final List list) {
        this.cK.addAll(list);
    }
    
    protected void bS(final com.google.android.apps.nexuslauncher.reflection.a.i i, final ArrayList list, final double[] bg) {
        List list2 = null;
        List list3;
        List list4;
        List list5;
        if (i != null) {
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
        this.cH.bl(list, list3);
        this.cI.bl(list, list5);
        this.cG.bl(list, list2);
        if (i != null) {
            if (bg != null) {
                i.aZ = new j();
                i.aZ.bg = bg;
            }
            i.ba = this.bT(list);
            i.bb = this.bT(list4);
            i.bc = this.bT(list5);
            i.bd = this.bT(list2);
        }
    }
    
    public void bU(final boolean b) {
        synchronized (this) {
            Preconditions.assertNonUiThread();
            if (b) {
                this.cF.aL();
                this.mEngine.reset();
            }
            final Iterator iterator = this.cK.iterator();
            while (iterator.hasNext()) {
                iterator.next().be();
            }
        }
    }
    // monitorexit(this)
    
    String bW(final ComponentName componentName, final long n) {
        return this.cL.aY(componentName, n);
    }
    
    public void bX(final String s, final int n) {
        Preconditions.assertNonUiThread();
        this.predict(s, n, this.cL.aX(s, "predict", Calendar.getInstance(), this.cD.bA(), SystemClock.elapsedRealtime(), "unknown", ""));
    }
    
    public void bY(final String s, final String packageName, final String ao, final LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent) {
        Preconditions.assertNonUiThread();
        if (packageName == null) {
            Log.e("Reflection.SvcHandler", "Empty event string");
            return;
        }
        final Calendar instance = Calendar.getInstance();
        final long ba = this.cD.bA();
        final long elapsedRealtime = SystemClock.elapsedRealtime();
        String string = "";
        if (launcherLogProto$LauncherEvent.srcTarget.length > 1) {
            string = Integer.toString(launcherLogProto$LauncherEvent.srcTarget[1].containerType);
        }
        this.mEngine.cl(s, this.cL.aX(s, ao, instance, ba, elapsedRealtime, packageName, string));
        this.mEngine.ch();
        this.cH.bo();
        if (this.cE != null) {
            final com.google.android.apps.nexuslauncher.reflection.a.f f = new com.google.android.apps.nexuslauncher.reflection.a.f();
            f.aO = ao;
            f.aP = instance.getTimeInMillis();
            f.packageName = packageName;
            if (launcherLogProto$LauncherEvent != null) {
                final g aq = new g();
                if (launcherLogProto$LauncherEvent.srcTarget.length >= 2 && launcherLogProto$LauncherEvent.srcTarget[1].containerType != 0) {
                    aq.aS = Integer.toString(launcherLogProto$LauncherEvent.srcTarget[1].containerType);
                    aq.aT = Integer.toString(launcherLogProto$LauncherEvent.srcTarget[0].pageIndex);
                }
                f.aQ = aq;
            }
            this.cE.aS(f);
        }
    }
    
    void predict(final String s, final int n, final com.google.android.apps.nexuslauncher.reflection.b.b b) {
        com.google.android.apps.nexuslauncher.reflection.a.i ar = null;
        com.google.android.apps.nexuslauncher.reflection.a.f f;
        if (this.cE != null) {
            f = new com.google.android.apps.nexuslauncher.reflection.a.f();
            f.aO = "prediction_update";
            f.aP = b.ax();
            ar = new com.google.android.apps.nexuslauncher.reflection.a.i();
            f.aR = ar;
        }
        else {
            f = null;
        }
        List list = this.bV(s, b, ar);
        final Map cb = this.cJ.cb();
        if (n < list.size()) {
            list = list.subList(0, n);
        }
        if (!cb.isEmpty()) {
            list = stabilizePredictedAppOrder(list, cb);
        }
        this.cJ.cc(list);
        if (f != null) {
            this.cE.aS(f);
        }
    }
    
    void updateNewEvent(final String s, final com.google.android.apps.nexuslauncher.reflection.b.b b) {
        Preconditions.assertNonUiThread();
        this.mEngine.cl(s, b);
    }
}
