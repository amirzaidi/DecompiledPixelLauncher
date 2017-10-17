// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.filter;

import android.content.pm.LauncherActivityInfo;
import java.util.Iterator;
import java.util.List;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.content.Intent;
import com.google.android.apps.nexuslauncher.reflection.g;
import android.content.ComponentName;
import com.google.research.reflection.predictor.f;
import java.util.ArrayList;
import android.os.Process;
import java.util.HashMap;
import android.content.Context;
import java.util.Map;
import java.util.HashSet;
import android.content.pm.PackageManager;
import android.os.UserHandle;

public class a
{
    public static final String[] o;
    private final UserHandle mMyUserHandle;
    private final PackageManager mPackageManager;
    private final b[] p;
    private final HashSet q;
    private final Map r;
    
    static {
        o = new String[] { "com.google.android.apps.photos", "com.google.android.apps.maps", "com.google.android.gm", "com.google.android.deskclock", "com.android.settings", "com.whatsapp", "com.facebook.katana", "com.facebook.orca", "com.google.android.youtube", "com.yodo1.crossyroad", "com.spotify.music", "com.android.chrome", "com.instagram.android", "com.skype.raider", "com.snapchat.android", "com.viber.voip", "com.twitter.android", "com.android.phone", "com.google.android.music", "com.google.android.calendar", "com.google.android.apps.genie.geniewidget", "com.netflix.mediaclient", "bbc.iplayer.android", "com.google.android.videos", "com.amazon.mShop.android.shopping", "com.microsoft.office.word", "com.google.android.apps.docs", "com.google.android.keep", "com.google.android.apps.plus", "com.google.android.talk" };
    }
    
    public a(final Context context) {
        this.p = new b[a.o.length];
        this.r = new HashMap();
        this.q = new HashSet();
        this.mPackageManager = context.getPackageManager();
        this.mMyUserHandle = Process.myUserHandle();
        for (int i = 0; i < a.o.length; ++i) {
            final b b = new b(a.o[i], "", i, -1);
            this.p[i] = b;
            this.r.put(a.o[i], b);
        }
    }
    
    private ArrayList o(final float n) {
        final ArrayList<f> list = new ArrayList<f>(a.o.length);
        for (int i = 0; i < a.o.length; ++i) {
            if (this.p[i].state == -1) {
                this.p(i);
            }
            if (this.p[i].state == 1) {
                list.add(new f(g.aU(new ComponentName(this.p[i].packageName, this.p[i].s)), n - list.size()));
            }
        }
        return list;
    }
    
    private void p(final int n) {
        final Intent launchIntentForPackage = this.mPackageManager.getLaunchIntentForPackage(a.o[n]);
        while (true) {
            Label_0164: {
                if (launchIntentForPackage == null) {
                    break Label_0164;
                }
                final ResolveInfo resolveActivity = this.mPackageManager.resolveActivity(launchIntentForPackage, 0);
                if (resolveActivity == null) {
                    break Label_0164;
                }
                final ActivityInfo activityInfo = resolveActivity.activityInfo;
                if (activityInfo != null) {
                    String s = activityInfo.name;
                    if (s.startsWith(".")) {
                        s = activityInfo.packageName + s;
                    }
                    this.p[n].state = 1;
                    this.p[n].s = s;
                }
                else {
                    this.p[n].state = 0;
                    this.p[n].s = "";
                }
                return;
            }
            final ActivityInfo activityInfo = null;
            continue;
        }
    }
    
    public void n(final List list, final List list2) {
        final float n = 1.0f;
        float n2;
        if (list.size() > 0) {
            n2 = list.get(list.size() - 1).MK - n;
        }
        else {
            n2 = n;
        }
        final ArrayList o = this.o(n2);
        this.q.clear();
        final Iterator<f> iterator = list.iterator();
        while (iterator.hasNext()) {
            this.q.add(iterator.next().ML);
        }
        for (final f f : o) {
            if (!this.q.contains(f.ML)) {
                list.add(f);
                if (list2 == null) {
                    continue;
                }
                list2.add(f);
            }
        }
    }
    
    public void q(final int n, final String[] array, final UserHandle userHandle) {
        for (int i = 0; i < array.length; ++i) {
            this.r(n, array[i], userHandle);
        }
    }
    
    public void r(final int state, final String s, final UserHandle userHandle) {
        if (this.mMyUserHandle.equals((Object)userHandle)) {
            final b b = this.r.get(s);
            if (b != null) {
                b.state = state;
            }
        }
    }
    
    public void s(final int state, final LauncherActivityInfo launcherActivityInfo, final UserHandle userHandle) {
        if (this.mMyUserHandle.equals((Object)userHandle)) {
            final b b = this.r.get(launcherActivityInfo.getComponentName().getPackageName());
            if (b != null) {
                b.state = state;
                b.s = launcherActivityInfo.getComponentName().getClassName();
            }
        }
    }
}
