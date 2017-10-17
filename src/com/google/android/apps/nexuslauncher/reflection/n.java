// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection;

import java.util.Iterator;
import android.content.SharedPreferences;
import android.os.UserHandle;
import com.android.launcher3.compat.UserManagerCompat;
import com.android.launcher3.compat.LauncherAppsCompat;
import java.util.List;
import com.google.android.apps.nexuslauncher.reflection.filter.d;
import java.io.File;
import com.google.android.apps.nexuslauncher.reflection.c.c;
import com.android.launcher3.Utilities;
import com.google.android.apps.nexuslauncher.reflection.d.b;
import java.util.ArrayList;
import android.content.Context;

public class n
{
    public static e cw(final Context context) {
        final ArrayList<b> list = new ArrayList<b>();
        final a a = new a(context);
        final SharedPreferences prefs = Utilities.getPrefs(context);
        new k();
        final c c = new c(new com.google.android.apps.nexuslauncher.reflection.c.b(context, "reflection.events"));
        com.google.android.apps.nexuslauncher.reflection.c.e e = null;
        final File file = new File(context.getCacheDir(), "client_actions");
        if (prefs.getBoolean("pre_debug", false)) {
            e = new com.google.android.apps.nexuslauncher.reflection.c.e(file, 10485760L);
        }
        else if (file.exists()) {
            file.delete();
        }
        final b b = new b(context);
        list.add(b);
        final SharedPreferences ca = g.ca(context);
        final com.google.android.apps.nexuslauncher.reflection.filter.a a2 = new com.google.android.apps.nexuslauncher.reflection.filter.a(context);
        final d d = new d(context);
        final com.google.android.apps.nexuslauncher.reflection.filter.b b2 = new com.google.android.apps.nexuslauncher.reflection.filter.b(b);
        final i i = new i(context, c, ca, "foreground_evt_buf.properties", null);
        final File file2 = new File(context.getFilesDir(), "reflection.engine");
        final com.google.android.apps.nexuslauncher.reflection.b b3 = new com.google.android.apps.nexuslauncher.reflection.b(context, c, ca, new File(context.getFilesDir(), "reflection.engine.background"), i);
        new j().cp(ca, file2, i, c, b3);
        i.ci(file2);
        final h h = new h(ca);
        final ArrayList<String> list2 = new ArrayList<String>();
        for (final String s : g.cN) {
            if (s.startsWith("/")) {
                list2.add(context.getDir(s.substring(1), 0).getAbsolutePath());
            }
            else {
                list2.add(s);
            }
        }
        final e e2 = new e(context, i, b3, b, a2, d, b2, h, new com.google.android.apps.nexuslauncher.reflection.c.a(ca, new File(context.getApplicationInfo().dataDir), list2), e, a);
        final com.google.android.apps.nexuslauncher.reflection.d d2 = new com.google.android.apps.nexuslauncher.reflection.d(context, e2, d, a2, b2);
        list.add((b)d2);
        e2.bR(list);
        final LauncherAppsCompat instance = LauncherAppsCompat.getInstance(context);
        for (final UserHandle userHandle : UserManagerCompat.getInstance(context).getUserProfiles()) {
            d2.processUserApps(instance.getActivityList(null, userHandle), userHandle);
        }
        return e2;
    }
}
