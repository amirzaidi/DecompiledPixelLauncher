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
import com.google.android.apps.nexuslauncher.reflection.b;
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
    public static final String[] B;
    private final e[] C;
    private final HashSet D;
    private final Map E;
    private final UserHandle mMyUserHandle;
    private final PackageManager mPackageManager;
    
    static {
        B = new String[] { "com.google.android.apps.photos", "com.google.android.apps.maps", "com.google.android.gm", "com.google.android.deskclock", "com.android.settings", "com.whatsapp", "com.facebook.katana", "com.facebook.orca", "com.google.android.youtube", "com.yodo1.crossyroad", "com.spotify.music", "com.android.chrome", "com.instagram.android", "com.skype.raider", "com.snapchat.android", "com.viber.voip", "com.twitter.android", "com.android.phone", "com.google.android.music", "com.google.android.calendar", "com.google.android.apps.genie.geniewidget", "com.netflix.mediaclient", "bbc.iplayer.android", "com.google.android.videos", "com.amazon.mShop.android.shopping", "com.microsoft.office.word", "com.google.android.apps.docs", "com.google.android.keep", "com.google.android.apps.plus", "com.google.android.talk" };
    }
    
    public d(final Context context) {
        this.C = new e[d.B.length];
        this.E = new HashMap();
        this.D = new HashSet();
        this.mPackageManager = context.getPackageManager();
        this.mMyUserHandle = Process.myUserHandle();
        for (int i = 0; i < d.B.length; ++i) {
            final e e = new e(d.B[i], "", i, -1);
            this.C[i] = e;
            this.E.put(d.B[i], e);
        }
    }
    
    private ArrayList Q(final float n) {
        final ArrayList<f> list = new ArrayList<f>(d.B.length);
        for (int i = 0; i < d.B.length; ++i) {
            if (this.C[i].state == -1) {
                this.R(i);
            }
            if (this.C[i].state == 1) {
                list.add(new f(b.aK(new ComponentName(this.C[i].packageName, this.C[i].F)), n - list.size()));
            }
        }
        return list;
    }
    
    private void R(final int n) {
        final Intent launchIntentForPackage = this.mPackageManager.getLaunchIntentForPackage(d.B[n]);
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
                    String f = activityInfo.name;
                    if (f.startsWith(".")) {
                        f = activityInfo.packageName + f;
                    }
                    this.C[n].state = 1;
                    this.C[n].F = f;
                }
                else {
                    this.C[n].state = 0;
                    this.C[n].F = "";
                }
                return;
            }
            final ActivityInfo activityInfo = null;
            continue;
        }
    }
    
    public void H(final List list, final List list2) {
        final float n = 1.0f;
        float n2;
        if (list.size() > 0) {
            n2 = list.get(list.size() - 1).Pc - n;
        }
        else {
            n2 = n;
        }
        final ArrayList q = this.Q(n2);
        this.D.clear();
        final Iterator<f> iterator = list.iterator();
        while (iterator.hasNext()) {
            this.D.add(iterator.next().Pd);
        }
        for (final f f : q) {
            if (!this.D.contains(f.Pd)) {
                list.add(f);
                if (list2 == null) {
                    continue;
                }
                list2.add(f);
            }
        }
    }
    
    public void N(final int state, final LauncherActivityInfo launcherActivityInfo, final UserHandle userHandle) {
        if (this.mMyUserHandle.equals((Object)userHandle)) {
            final e e = this.E.get(launcherActivityInfo.getComponentName().getPackageName());
            if (e != null) {
                e.state = state;
                e.F = launcherActivityInfo.getComponentName().getClassName();
            }
        }
    }
    
    public void O(final int state, final String s, final UserHandle userHandle) {
        if (this.mMyUserHandle.equals((Object)userHandle)) {
            final e e = this.E.get(s);
            if (e != null) {
                e.state = state;
            }
        }
    }
    
    public void P(final int n, final String[] array, final UserHandle userHandle) {
        for (int i = 0; i < array.length; ++i) {
            this.O(n, array[i], userHandle);
        }
    }
}
