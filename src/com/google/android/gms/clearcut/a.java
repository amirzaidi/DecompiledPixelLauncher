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
import com.google.android.gms.internal.aq;
import com.google.android.gms.common.a.m;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.internal.at;
import android.content.Context;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.api.j;
import com.google.android.gms.common.api.e;

public final class a
{
    public static final e HH;
    public static final j HK;
    public static final q HM;
    public static final g HN;
    private String HF;
    private String HG;
    private final boolean HI;
    private final d HJ;
    private final f HL;
    private int HO;
    private final com.google.android.gms.common.a.a HP;
    private int HQ;
    private final int HR;
    private String HS;
    private final g HT;
    private c HU;
    private final Context mContext;
    private final String mPackageName;
    
    static {
        HM = new q();
        HK = new h();
        HH = new e("ClearcutLogger.API", a.HK, a.HM);
        HN = new at();
    }
    
    public a(final Context context, final int hq, final String hg, final String hf, final String hs, final boolean hi, final g ht, final com.google.android.gms.common.a.a hp, c hu, final f hl, final d hj) {
        this.HQ = -1;
        this.HO = 0;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            applicationContext = context;
        }
        this.mContext = applicationContext;
        this.mPackageName = context.getPackageName();
        this.HR = this.Mq(context);
        this.HQ = hq;
        this.HG = hg;
        this.HF = hf;
        this.HS = hs;
        this.HI = hi;
        this.HT = ht;
        this.HP = hp;
        if (hu == null) {
            hu = new c();
        }
        this.HU = hu;
        this.HL = hl;
        this.HO = 0;
        this.HJ = hj;
        if (this.HI) {
            l.ke(this.HF == null, "can't be anonymous with an upload account");
        }
    }
    
    public a(final Context context, final String s, final String s2) {
        this(context, -1, s, s2, null, false, a.HN, m.mF(), null, f.Il, new aq(context));
    }
    
    private static String[] Mc(final ArrayList list) {
        if (list != null) {
            return list.toArray(new String[0]);
        }
        return null;
    }
    
    private static byte[][] Mj(final ArrayList list) {
        if (list != null) {
            return list.toArray(new byte[0][]);
        }
        return null;
    }
    
    private static int[] Mn(final ArrayList list) {
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
    
    private int Mq(final Context context) {
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
    
    public b Ml(final byte[] array) {
        return new b(this, array, (h)null);
    }
}
