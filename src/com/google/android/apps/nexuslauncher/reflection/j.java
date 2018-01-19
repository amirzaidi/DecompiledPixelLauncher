// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection;

import java.util.Iterator;
import android.content.SharedPreferences;
import java.util.List;
import com.google.android.apps.nexuslauncher.reflection.filter.a;
import com.google.android.apps.nexuslauncher.reflection.filter.d;
import com.google.android.apps.nexuslauncher.reflection.filter.f;
import java.io.File;
import com.google.android.apps.nexuslauncher.reflection.c.c;
import com.google.android.apps.nexuslauncher.reflection.c.e;
import com.android.launcher3.Utilities;
import com.google.android.apps.nexuslauncher.reflection.e.b;
import java.util.ArrayList;
import android.content.Context;

public class j
{
    public static k ba(final Context context) {
        final ArrayList<b> list = new ArrayList<b>();
        final g g = new g(context);
        final SharedPreferences prefs = Utilities.getPrefs(context);
        new i();
        final c c = new c(new e(context, "reflection.events"));
        com.google.android.apps.nexuslauncher.reflection.c.b b = null;
        final File file = new File(context.getCacheDir(), "client_actions");
        if (prefs.getBoolean("pre_debug", false)) {
            b = new com.google.android.apps.nexuslauncher.reflection.c.b(file, 10485760L);
        }
        else if (file.exists()) {
            file.delete();
        }
        final b b2 = new b(context);
        list.add(b2);
        final SharedPreferences al = com.google.android.apps.nexuslauncher.reflection.b.aL(context);
        final f f = new f(context);
        final d d = new d(context);
        final a a = new a(context);
        final com.google.android.apps.nexuslauncher.reflection.filter.b b3 = new com.google.android.apps.nexuslauncher.reflection.filter.b(b2);
        final com.google.android.apps.nexuslauncher.reflection.c c2 = new com.google.android.apps.nexuslauncher.reflection.c(context, c, al, "foreground_evt_buf.properties", null);
        final File file2 = new File(context.getFilesDir(), "reflection.engine");
        final m m = new m(context, c, al, new File(context.getFilesDir(), "reflection.engine.background"), c2);
        new h().aZ(al, file2, c2, c, m);
        c2.aV(file2);
        final com.google.android.apps.nexuslauncher.reflection.a a2 = new com.google.android.apps.nexuslauncher.reflection.a(al);
        final ArrayList<String> list2 = new ArrayList<String>();
        for (final String s : com.google.android.apps.nexuslauncher.reflection.b.bo) {
            if (s.startsWith("/")) {
                list2.add(context.getDir(s.substring(1), 0).getAbsolutePath());
            }
            else {
                list2.add(s);
            }
        }
        final k k = new k(context, c2, m, b2, f, d, b3, a, a2, new com.google.android.apps.nexuslauncher.reflection.c.a(al, new File(context.getApplicationInfo().dataDir), list2), b, g);
        final com.google.android.apps.nexuslauncher.reflection.f f2 = new com.google.android.apps.nexuslauncher.reflection.f(context, k, d, f);
        list.add((b)f2);
        k.bc(list);
        f2.aY();
        return k;
    }
}
