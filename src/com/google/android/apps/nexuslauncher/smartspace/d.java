// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace;

import android.text.TextUtils$TruncateAt;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.Launcher;
import android.view.View;
import android.graphics.Canvas;
import android.graphics.Bitmap$Config;
import android.graphics.ColorFilter;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuff$Mode;
import android.graphics.Paint;
import com.google.android.apps.nexuslauncher.smartspace.b.c;
import com.google.android.apps.nexuslauncher.smartspace.b.e;
import android.content.res.Resources;
import com.google.android.apps.nexuslauncher.smartspace.b.g;
import android.util.Log;
import android.graphics.BlurMaskFilter;
import android.graphics.BlurMaskFilter$Blur;
import com.android.launcher3.graphics.ShadowGenerator;
import com.android.launcher3.Utilities;
import com.android.launcher3.dynamicui.WallpaperColorInfo;
import android.graphics.BitmapFactory$Options;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import com.google.android.apps.nexuslauncher.smartspace.b.i;
import android.content.Intent;
import android.graphics.Bitmap;
import android.content.Context;
import com.google.android.apps.nexuslauncher.smartspace.b.b;

public class d
{
    private final b dI;
    private final long dJ;
    private final int dK;
    private final boolean dL;
    private final boolean dM;
    private final long dN;
    private final Context mContext;
    private Bitmap mIcon;
    private final Intent mIntent;
    
    public d(final Context context, final b di, final Intent mIntent, final boolean dm, final Bitmap mIcon, final boolean dl, final long dn, final long dj, final int dk) {
        this.mContext = context.getApplicationContext();
        this.dI = di;
        this.dM = dm;
        this.mIntent = mIntent;
        this.mIcon = mIcon;
        this.dN = dn;
        this.dJ = dj;
        this.dK = dk;
        this.dL = dl;
    }
    
    static d cD(final Context context, final i i, final boolean b) {
        if (i == null) {
            return null;
        }
    Label_0234_Outer:
        while (true) {
            while (true) {
                Bitmap decodeByteArray = null;
                try {
                    final b de = i.de;
                    try {
                        final g cg = de.cG;
                        try {
                            final String cz = cg.cZ;
                            try {
                                Label_0299: {
                                    if (TextUtils.isEmpty((CharSequence)cz)) {
                                        break Label_0299;
                                    }
                                    final b de2 = i.de;
                                    try {
                                        final g cg2 = de2.cG;
                                        try {
                                            Intent uri = Intent.parseUri(cg2.cZ, 0);
                                        Label_0062:
                                            while (true) {
                                                Label_0313: {
                                                    if (i.dd == null) {
                                                        break Label_0313;
                                                    }
                                                    final byte[] dd = i.dd;
                                                    try {
                                                        final byte[] dd2 = i.dd;
                                                        try {
                                                            decodeByteArray = BitmapFactory.decodeByteArray(dd, 0, dd2.length, (BitmapFactory$Options)null);
                                                        Label_0103:
                                                            while (true) {
                                                                Label_0333: {
                                                                    if (decodeByteArray == null) {
                                                                        break Label_0333;
                                                                    }
                                                                    Label_0145: {
                                                                        if (b) {
                                                                            break Label_0145;
                                                                        }
                                                                        Label_0322: {
                                                                            if (!i.dc) {
                                                                                break Label_0322;
                                                                            }
                                                                            final WallpaperColorInfo instance = WallpaperColorInfo.getInstance(context);
                                                                            try {
                                                                                int supportsDarkText = instance.supportsDarkText() ? 1 : 0;
                                                                                while ((supportsDarkText ^ 0x1) != 0x0) {
                                                                                    final float n = 3.0f;
                                                                                    final Resources resources = context.getResources();
                                                                                    try {
                                                                                        final int pxFromDp = Utilities.pxFromDp(n, resources.getDisplayMetrics());
                                                                                        try {
                                                                                            Bitmap recreateIcon = ShadowGenerator.getInstance(context).recreateIcon(decodeByteArray, false, new BlurMaskFilter((float)pxFromDp, BlurMaskFilter$Blur.NORMAL), 20, 55);
                                                                                            while (true) {
                                                                                                try {
                                                                                                    final b de3 = i.de;
                                                                                                    try {
                                                                                                        final boolean dc = i.dc;
                                                                                                        try {
                                                                                                            final long df = i.df;
                                                                                                            try {
                                                                                                                final long dh = i.dh;
                                                                                                                try {
                                                                                                                    return new d(context, de3, uri, b, recreateIcon, dc, df, dh, i.dg);
                                                                                                                    uri = null;
                                                                                                                    continue Label_0062;
                                                                                                                    decodeByteArray = null;
                                                                                                                    continue Label_0103;
                                                                                                                    recreateIcon = decodeByteArray;
                                                                                                                    continue Label_0234_Outer;
                                                                                                                    supportsDarkText = 0;
                                                                                                                }
                                                                                                                catch (Exception ex) {
                                                                                                                    Log.e("SmartspaceCard", "from proto", (Throwable)ex);
                                                                                                                    return null;
                                                                                                                }
                                                                                                            }
                                                                                                            catch (Exception ex2) {}
                                                                                                        }
                                                                                                        catch (Exception ex3) {}
                                                                                                    }
                                                                                                    catch (Exception ex4) {}
                                                                                                }
                                                                                                catch (Exception ex5) {}
                                                                                            }
                                                                                        }
                                                                                        catch (Exception ex6) {}
                                                                                    }
                                                                                    catch (Exception ex7) {}
                                                                                }
                                                                            }
                                                                            catch (Exception ex8) {}
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        catch (Exception ex9) {}
                                                    }
                                                    catch (Exception ex10) {}
                                                }
                                            }
                                        }
                                        catch (Exception ex11) {}
                                    }
                                    catch (Exception ex12) {}
                                }
                            }
                            catch (Exception ex13) {}
                        }
                        catch (Exception ex14) {}
                    }
                    catch (Exception ex15) {}
                }
                catch (Exception ex16) {}
                Bitmap recreateIcon = decodeByteArray;
                continue;
            }
        }
    }
    
    private String cE(final e e) {
        final int n = 1;
        final int cj = this.cJ(e);
        String s;
        if (cj >= 60) {
            final int round = Math.round(cj / 60.0f);
            final Resources resources = this.mContext.getResources();
            final Object[] array = new Object[n];
            array[0] = round;
            s = resources.getQuantityString(2131951617, round, array);
        }
        else {
            final Resources resources2 = this.mContext.getResources();
            final Object[] array2 = new Object[n];
            array2[0] = cj;
            s = resources2.getQuantityString(2131951616, cj, array2);
        }
        return s;
    }
    
    private com.google.android.apps.nexuslauncher.smartspace.b.d cG(final boolean b) {
        final c ch = this.cH();
        if (ch != null) {
            com.google.android.apps.nexuslauncher.smartspace.b.d d;
            if (b) {
                d = ch.cL;
            }
            else {
                d = ch.cM;
            }
            return d;
        }
        return null;
    }
    
    private c cH() {
        final long currentTimeMillis = System.currentTimeMillis();
        final long cd = this.dI.cD;
        final long n = this.dI.cD + this.dI.cE;
        if (currentTimeMillis < cd && this.dI.cB != null) {
            return this.dI.cB;
        }
        if (currentTimeMillis > n && this.dI.cH != null) {
            return this.dI.cH;
        }
        if (this.dI.cC != null) {
            return this.dI.cC;
        }
        return null;
    }
    
    private int cJ(final e e) {
        return (int)Math.ceil(this.cI(e) / 60000.0);
    }
    
    private String[] cK(final e[] array, final String s) {
        int i;
        String[] array2;
        String cr;
        for (i = 0, array2 = new String[array.length]; i < array2.length; ++i) {
            switch (array[i].cQ) {
                default: {
                    array2[i] = "";
                    break;
                }
                case 3: {
                    if (s != null && array[i].cS != 0) {
                        array2[i] = s;
                        break;
                    }
                    if (array[i].cR != null) {
                        cr = array[i].cR;
                    }
                    else {
                        cr = "";
                    }
                    array2[i] = cr;
                    break;
                }
                case 1:
                case 2: {
                    array2[i] = this.cE(array[i]);
                    break;
                }
            }
        }
        return array2;
    }
    
    private boolean cL(final com.google.android.apps.nexuslauncher.smartspace.b.d d) {
        boolean b = false;
        if (d != null && d.cN != null && d.cO != null && d.cO.length > 0) {
            b = true;
        }
        return b;
    }
    
    private String cN(final boolean b) {
        return this.cO(b, null);
    }
    
    private String cO(final boolean b, final String s) {
        final com.google.android.apps.nexuslauncher.smartspace.b.d cg = this.cG(b);
        if (cg == null || cg.cN == null) {
            return "";
        }
        String cn = cg.cN;
        if (this.cL(cg)) {
            return String.format(cn, (Object[])this.cK(cg.cO, s));
        }
        if (cn == null) {
            cn = "";
        }
        return cn;
    }
    
    private static Bitmap cP(final Bitmap bitmap, final int n) {
        final Paint paint = new Paint();
        paint.setColorFilter((ColorFilter)new PorterDuffColorFilter(n, PorterDuff$Mode.SRC_IN));
        final Bitmap bitmap2 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap$Config.ARGB_8888);
        new Canvas(bitmap2).drawBitmap(bitmap, 0.0f, 0.0f, paint);
        return bitmap2;
    }
    
    static i cQ(final Context context, final a a) {
        if (a == null) {
            return null;
        }
        final i i = new i();
        final Bitmap ci = a.ci(context);
        Bitmap cp;
        if (ci != null && i.dc) {
            if (a.dj) {
                cp = cP(ci, -1);
            }
            else {
                cp = ci;
            }
        }
        else {
            cp = ci;
        }
        byte[] flattenBitmap;
        if (cp != null) {
            flattenBitmap = Utilities.flattenBitmap(cp);
        }
        else {
            flattenBitmap = new byte[0];
        }
        i.dd = flattenBitmap;
        i.dc = (cp != null && new com.google.android.apps.nexuslauncher.a.c().dB(cp));
        i.de = a.di;
        i.df = a.dl;
        if (a.dk != null) {
            i.dg = a.dk.versionCode;
            i.dh = a.dk.lastUpdateTime;
        }
        return i;
    }
    
    public String cA(final boolean b) {
        return this.cO(b, "");
    }
    
    public String cB(final boolean b) {
        int i = 0;
        final e[] co = this.cG(b).cO;
        if (co != null) {
            while (i < co.length) {
                if (co[i].cS != 0) {
                    return co[i].cR;
                }
                ++i;
            }
        }
        return "";
    }
    
    public String cC(final String s) {
        return this.cO(true, s);
    }
    
    public long cF() {
        return this.dI.cF.da;
    }
    
    long cI(final e e) {
        long cd;
        if (e.cQ == 2) {
            cd = this.dI.cD + this.dI.cE;
        }
        else {
            cd = this.dI.cD;
        }
        return Math.abs(System.currentTimeMillis() - cd);
    }
    
    public boolean cM() {
        return System.currentTimeMillis() > this.cF();
    }
    
    void cu(final View view) {
        if (this.dI.cG == null) {
            Log.e("SmartspaceCard", "no tap action available: " + this);
            return;
        }
        final Intent intent = new Intent(this.getIntent());
        final Launcher launcher = Launcher.getLauncher(view.getContext());
        switch (this.dI.cG.cY) {
            default: {
                Log.w("SmartspaceCard", "unrecognized tap action: " + this);
                break;
            }
            case 1: {
                intent.addFlags(268435456);
                intent.setSourceBounds(launcher.getViewBounds(view));
                view.getContext().sendBroadcast(intent);
                break;
            }
            case 2: {
                launcher.startActivitySafely(view, intent, null);
                break;
            }
        }
    }
    
    public boolean cv() {
        final c ch = this.cH();
        return ch != null && (this.cL(ch.cL) || this.cL(ch.cM));
    }
    
    long cw() {
        final c ch = this.cH();
        if (ch != null && this.cL(ch.cL)) {
            final e[] co = ch.cL.cO;
            for (int i = 0; i < co.length; ++i) {
                final e e = co[i];
                if (e.cQ == 1 || e.cQ == 2) {
                    return this.cI(e);
                }
            }
        }
        return 0L;
    }
    
    public TextUtils$TruncateAt cx(final boolean b) {
        final c ch = this.cH();
        if (ch != null) {
            int n = 0;
            if (b && ch.cL != null) {
                n = ch.cL.cP;
            }
            else if (!b && ch.cM != null) {
                n = ch.cM.cP;
            }
            switch (n) {
                case 1: {
                    return TextUtils$TruncateAt.START;
                }
                case 2: {
                    return TextUtils$TruncateAt.MIDDLE;
                }
            }
        }
        return TextUtils$TruncateAt.END;
    }
    
    public String cy() {
        return this.cN(false);
    }
    
    public boolean cz() {
        return this.dL;
    }
    
    public Bitmap getIcon() {
        return this.mIcon;
    }
    
    public Intent getIntent() {
        return this.mIntent;
    }
    
    public String getTitle() {
        return this.cN(true);
    }
    
    public String toString() {
        return "title:" + this.getTitle() + " expires:" + this.cF() + " published:" + this.dN + " gsaVersion:" + this.dK + " gsaUpdateTime: " + this.dJ;
    }
}
