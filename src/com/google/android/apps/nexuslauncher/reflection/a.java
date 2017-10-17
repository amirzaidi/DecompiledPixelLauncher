// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection;

import java.util.Iterator;
import android.content.SharedPreferences;
import java.util.List;
import com.google.android.apps.nexuslauncher.reflection.filter.d;
import com.google.android.apps.nexuslauncher.reflection.c.e;
import java.io.File;
import com.google.android.apps.nexuslauncher.reflection.c.c;
import com.android.launcher3.Utilities;
import com.google.android.apps.nexuslauncher.reflection.a.b;
import java.util.ArrayList;
import android.content.Context;

public class a
{
    public static n am(final Context context) {
        final ArrayList<b> list = new ArrayList<b>();
        final k k = new k(context);
        final SharedPreferences prefs = Utilities.getPrefs(context);
        new h();
        final c c = new c(new com.google.android.apps.nexuslauncher.reflection.c.a(context, "reflection.events"));
        e e = null;
        final File file = new File(context.getCacheDir(), "client_actions");
        if (prefs.getBoolean("pre_debug", false)) {
            e = new e(file, 10485760L);
        }
        else if (file.exists()) {
            file.delete();
        }
        final b b = new b(context);
        list.add(b);
        final SharedPreferences at = g.aT(context);
        final com.google.android.apps.nexuslauncher.reflection.filter.c c2 = new com.google.android.apps.nexuslauncher.reflection.filter.c(context);
        final com.google.android.apps.nexuslauncher.reflection.filter.a a = new com.google.android.apps.nexuslauncher.reflection.filter.a(context);
        final d d = new d(b);
        final com.google.android.apps.nexuslauncher.reflection.b b2 = new com.google.android.apps.nexuslauncher.reflection.b(context, c, at, "foreground_evt_buf.properties", null);
        final File file2 = new File(context.getFilesDir(), "reflection.engine");
        final com.google.android.apps.nexuslauncher.reflection.e e2 = new com.google.android.apps.nexuslauncher.reflection.e(context, c, at, new File(context.getFilesDir(), "reflection.engine.background"), b2);
        new l().aX(at, file2, b2, c, e2);
        b2.an(file2);
        final m m = new m(at);
        final ArrayList<String> list2 = new ArrayList<String>();
        for (final String s : g.bs) {
            if (s.startsWith("/")) {
                list2.add(context.getDir(s.substring(1), 0).getAbsolutePath());
            }
            else {
                list2.add(s);
            }
        }
        final n n = new n(context, b2, e2, b, c2, a, d, m, new com.google.android.apps.nexuslauncher.reflection.c.b(at, new File(context.getApplicationInfo().dataDir), list2), e, k);
        final j j = new j(context, n, a, c2);
        list.add((b)j);
        n.bc(list);
        j.aW();
        return n;
    }
}
