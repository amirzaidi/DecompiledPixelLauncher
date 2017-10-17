// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.clearcut;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.util.Log;
import java.util.Iterator;
import java.util.ArrayList;
import com.google.android.gms.internal.av;
import com.google.android.gms.common.a.m;
import com.google.android.gms.internal.az;
import android.content.Context;
import com.google.android.gms.common.api.r;
import com.google.android.gms.common.api.l;
import com.google.android.gms.common.api.h;

public final class a
{
    public static final h Gc;
    public static final l Gf;
    public static final r Gh;
    public static final g Gi;
    private String Ga;
    private String Gb;
    private final boolean Gd;
    private final d Ge;
    private final f Gg;
    private int Gj;
    private final com.google.android.gms.common.a.a Gk;
    private int Gl;
    private final int Gm;
    private String Gn;
    private final g Go;
    private c Gp;
    private final Context mContext;
    private final String mPackageName;
    
    static {
        Gh = new r();
        Gf = new com.google.android.gms.clearcut.h();
        Gc = new h("ClearcutLogger.API", a.Gf, a.Gh);
        Gi = new az();
    }
    
    public a(final Context context, final int gl, final String gb, final String ga, final String gn, final boolean gd, final g go, final com.google.android.gms.common.a.a gk, c gp, final f gg, final d ge) {
        this.Gl = -1;
        this.Gj = 0;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            applicationContext = context;
        }
        this.mContext = applicationContext;
        this.mPackageName = context.getPackageName();
        this.Gm = this.Lx(context);
        this.Gl = gl;
        this.Gb = gb;
        this.Ga = ga;
        this.Gn = gn;
        this.Gd = gd;
        this.Go = go;
        this.Gk = gk;
        if (gp == null) {
            gp = new c();
        }
        this.Gp = gp;
        this.Gg = gg;
        this.Gj = 0;
        this.Ge = ge;
        if (this.Gd) {
            com.google.android.gms.common.internal.l.hq(this.Ga == null, "can't be anonymous with an upload account");
        }
    }
    
    public a(final Context context, final String s, final String s2) {
        this(context, -1, s, s2, null, false, a.Gi, m.jR(), null, f.GG, new av(context));
    }
    
    private static String[] Lj(final ArrayList list) {
        if (list != null) {
            return list.toArray(new String[0]);
        }
        return null;
    }
    
    private static byte[][] Lq(final ArrayList list) {
        if (list != null) {
            return list.toArray(new byte[0][]);
        }
        return null;
    }
    
    private static int[] Lu(final ArrayList list) {
        int n = 0;
        if (list != null) {
            final int[] array = new int[list.size()];
            final Iterator<Integer> iterator = list.iterator();
            while (true) {
                final int n2 = n;
                if (!iterator.hasNext()) {
                    break;
                }
                final int intValue = iterator.next();
                n = n2 + 1;
                array[n2] = intValue;
            }
            return array;
        }
        return null;
    }
    
    private int Lx(final Context context) {
        int versionCode = 0;
        try {
            final PackageManager packageManager = context.getPackageManager();
            try {
                final PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
                try {
                    versionCode = packageInfo.versionCode;
                    return versionCode;
                }
                catch (PackageManager$NameNotFoundException ex) {
                    Log.wtf("ClearcutLogger", "This can't happen.");
                }
            }
            catch (PackageManager$NameNotFoundException ex2) {}
        }
        catch (PackageManager$NameNotFoundException ex3) {}
    }
    
    public b Ls(final byte[] array) {
        return new b(this, array, (com.google.android.gms.clearcut.h)null);
    }
}
