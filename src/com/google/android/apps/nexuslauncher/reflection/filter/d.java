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
import android.content.pm.PackageManager;
import android.os.UserHandle;
import java.util.Map;
import java.util.HashSet;

public class d
{
    public static final String[] cj;
    private final e[] ck;
    private final HashSet cl;
    private final Map cm;
    private final UserHandle mMyUserHandle;
    private final PackageManager mPackageManager;
    
    static {
        cj = new String[] { "com.whatsapp", "com.facebook.katana", "com.facebook.orca", "com.google.android.youtube", "com.yodo1.crossyroad", "com.spotify.music", "com.android.chrome", "com.instagram.android", "com.google.android.gm", "com.skype.raider", "com.snapchat.android", "com.viber.voip", "com.twitter.android", "com.android.phone", "com.google.android.music", "com.google.android.calendar", "com.google.android.apps.genie.geniewidget", "com.netflix.mediaclient", "bbc.iplayer.android", "com.google.android.videos", "com.android.settings", "com.amazon.mShop.android.shopping", "com.microsoft.office.word", "com.google.android.apps.docs", "com.google.android.keep", "com.google.android.apps.plus", "com.google.android.talk" };
    }
    
    public d(final Context context) {
        this.ck = new e[d.cj.length];
        this.cm = new HashMap();
        this.cl = new HashSet();
        this.mPackageManager = context.getPackageManager();
        this.mMyUserHandle = Process.myUserHandle();
        for (int i = 0; i < d.cj.length; ++i) {
            final e e = new e(d.cj[i], "", i, -1);
            this.ck[i] = e;
            this.cm.put(d.cj[i], e);
        }
    }
    
    private ArrayList bu(final float n) {
        final ArrayList<f> list = new ArrayList<f>(d.cj.length);
        for (int i = 0; i < d.cj.length; ++i) {
            if (this.ck[i].state == -1) {
                this.bv(i);
            }
            if (this.ck[i].state == 1) {
                list.add(new f(g.bZ(new ComponentName(this.ck[i].packageName, this.ck[i].cn)), n - list.size()));
            }
        }
        return list;
    }
    
    private void bv(final int n) {
        final Intent launchIntentForPackage = this.mPackageManager.getLaunchIntentForPackage(d.cj[n]);
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
                    String cn = activityInfo.name;
                    if (cn.startsWith(".")) {
                        cn = activityInfo.packageName + cn;
                    }
                    this.ck[n].state = 1;
                    this.ck[n].cn = cn;
                }
                else {
                    this.ck[n].state = 0;
                    this.ck[n].cn = "";
                }
                return;
            }
            final ActivityInfo activityInfo = null;
            continue;
        }
    }
    
    public void bl(final List list, final List list2) {
        final float n = 1.0f;
        float n2;
        if (list.size() > 0) {
            n2 = list.get(list.size() - 1).LQ - n;
        }
        else {
            n2 = n;
        }
        final ArrayList bu = this.bu(n2);
        this.cl.clear();
        final Iterator<f> iterator = list.iterator();
        while (iterator.hasNext()) {
            this.cl.add(iterator.next().LR);
        }
        for (final f f : bu) {
            if (!this.cl.contains(f.LR)) {
                list.add(f);
                if (list2 == null) {
                    continue;
                }
                list2.add(f);
            }
        }
    }
    
    public void br(final int state, final LauncherActivityInfo launcherActivityInfo, final UserHandle userHandle) {
        if (this.mMyUserHandle.equals((Object)userHandle)) {
            final e e = this.cm.get(launcherActivityInfo.getComponentName().getPackageName());
            if (e != null) {
                e.state = state;
                e.cn = launcherActivityInfo.getComponentName().getClassName();
            }
        }
    }
    
    public void bs(final int state, final String s, final UserHandle userHandle) {
        if (this.mMyUserHandle.equals((Object)userHandle)) {
            final e e = this.cm.get(s);
            if (e != null) {
                e.state = state;
            }
        }
    }
    
    public void bt(final int n, final String[] array, final UserHandle userHandle) {
        for (int i = 0; i < array.length; ++i) {
            this.bs(n, array[i], userHandle);
        }
    }
}
