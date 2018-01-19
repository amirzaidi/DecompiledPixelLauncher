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
import com.google.android.apps.nexuslauncher.smartspace.b.d;
import android.content.res.Resources;
import com.google.android.apps.nexuslauncher.smartspace.b.g;
import android.util.Log;
import android.graphics.BlurMaskFilter;
import android.graphics.BlurMaskFilter$Blur;
import com.android.launcher3.graphics.ShadowGenerator;
import com.android.launcher3.dynamicui.WallpaperColorInfo;
import android.graphics.BitmapFactory$Options;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import com.google.android.apps.nexuslauncher.b.c;
import com.android.launcher3.Utilities;
import com.google.android.apps.nexuslauncher.smartspace.b.i;
import android.content.Intent;
import android.graphics.Bitmap;
import android.content.Context;
import com.google.android.apps.nexuslauncher.smartspace.b.b;

public class f
{
    private final b eJ;
    private final long eK;
    private final int eL;
    private final boolean eM;
    private final boolean eN;
    private final long eO;
    private final Context mContext;
    private Bitmap mIcon;
    private final Intent mIntent;
    
    public f(final Context context, final b ej, final Intent mIntent, final boolean en, final Bitmap mIcon, final boolean em, final long eo, final long ek, final int el) {
        this.mContext = context.getApplicationContext();
        this.eJ = ej;
        this.eN = en;
        this.mIntent = mIntent;
        this.mIcon = mIcon;
        this.eO = eo;
        this.eK = ek;
        this.eL = el;
        this.eM = em;
    }
    
    static i dN(final Context context, final e e) {
        if (e == null) {
            return null;
        }
        final i i = new i();
        final Bitmap dm = e.dM(context);
        Bitmap ei;
        if (dm != null && i.dX) {
            if (e.eF) {
                ei = ei(dm, -1);
            }
            else {
                ei = dm;
            }
        }
        else {
            ei = dm;
        }
        byte[] flattenBitmap;
        if (ei != null) {
            flattenBitmap = Utilities.flattenBitmap(ei);
        }
        else {
            flattenBitmap = new byte[0];
        }
        i.dW = flattenBitmap;
        i.dX = (ei != null && new c().eQ(ei));
        i.dT = e.eG;
        i.dY = e.eI;
        if (e.eH != null) {
            i.dV = e.eH.versionCode;
            i.dU = e.eH.lastUpdateTime;
        }
        return i;
    }
    
    static f dO(final Context context, final i i, final boolean b) {
        if (i == null) {
            return null;
        }
    Label_0234_Outer:
        while (true) {
            while (true) {
                Bitmap decodeByteArray = null;
                try {
                    final b dt = i.dT;
                    try {
                        final g da = dt.dA;
                        try {
                            final String dq = da.dQ;
                            try {
                                Label_0299: {
                                    if (TextUtils.isEmpty((CharSequence)dq)) {
                                        break Label_0299;
                                    }
                                    final b dt2 = i.dT;
                                    try {
                                        final g da2 = dt2.dA;
                                        try {
                                            Intent uri = Intent.parseUri(da2.dQ, 0);
                                        Label_0062:
                                            while (true) {
                                                Label_0313: {
                                                    if (i.dW == null) {
                                                        break Label_0313;
                                                    }
                                                    final byte[] dw = i.dW;
                                                    try {
                                                        final byte[] dw2 = i.dW;
                                                        try {
                                                            decodeByteArray = BitmapFactory.decodeByteArray(dw, 0, dw2.length, (BitmapFactory$Options)null);
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
                                                                            if (!i.dX) {
                                                                                break Label_0322;
                                                                            }
                                                                            final WallpaperColorInfo instance = WallpaperColorInfo.getInstance(context);
                                                                            try {
                                                                                int supportsDarkText = instance.supportsDarkText() ? 1 : 0;
                                                                            Label_0134:
                                                                                while ((supportsDarkText ^ 0x1) != 0x0) {
                                                                                    final float n = 3.0f;
                                                                                    final Resources resources = context.getResources();
                                                                                    try {
                                                                                        final int pxFromDp = Utilities.pxFromDp(n, resources.getDisplayMetrics());
                                                                                        try {
                                                                                            Bitmap recreateIcon = ShadowGenerator.getInstance(context).recreateIcon(decodeByteArray, false, new BlurMaskFilter((float)pxFromDp, BlurMaskFilter$Blur.NORMAL), 20, 55);
                                                                                            while (true) {
                                                                                                try {
                                                                                                    final b dt3 = i.dT;
                                                                                                    try {
                                                                                                        final boolean dx = i.dX;
                                                                                                        try {
                                                                                                            final long dy = i.dY;
                                                                                                            try {
                                                                                                                final long du = i.dU;
                                                                                                                try {
                                                                                                                    return new f(context, dt3, uri, b, recreateIcon, dx, dy, du, i.dV);
                                                                                                                    recreateIcon = decodeByteArray;
                                                                                                                    continue Label_0234_Outer;
                                                                                                                    uri = null;
                                                                                                                    continue Label_0062;
                                                                                                                    supportsDarkText = 0;
                                                                                                                    continue Label_0134;
                                                                                                                    decodeByteArray = null;
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
    
    private String ea(final com.google.android.apps.nexuslauncher.smartspace.b.e e) {
        final int n = 2131951616;
        final int n2 = 1;
        final int ed = this.ed(e);
        String s;
        if (ed >= 60) {
            final int n3 = ed / 60;
            final int n4 = ed % 60;
            final Resources resources = this.mContext.getResources();
            final Object[] array = new Object[n2];
            array[0] = n3;
            s = resources.getQuantityString(2131951617, n3, array);
            if (n4 > 0) {
                final Resources resources2 = this.mContext.getResources();
                final Object[] array2 = new Object[n2];
                array2[0] = n4;
                final String quantityString = resources2.getQuantityString(n, n4, array2);
                final Context mContext = this.mContext;
                final Object[] array3 = { s, null };
                array3[n2] = quantityString;
                s = mContext.getString(2131493025, array3);
            }
        }
        else {
            final Resources resources3 = this.mContext.getResources();
            final Object[] array4 = new Object[n2];
            array4[0] = ed;
            s = resources3.getQuantityString(n, ed, array4);
        }
        return s;
    }
    
    private d eb(final boolean b) {
        final com.google.android.apps.nexuslauncher.smartspace.b.c message = this.getMessage();
        if (message != null) {
            d d;
            if (b) {
                d = message.dD;
            }
            else {
                d = message.dC;
            }
            return d;
        }
        return null;
    }
    
    private int ed(final com.google.android.apps.nexuslauncher.smartspace.b.e e) {
        return (int)Math.ceil(this.ec(e) / 60000.0);
    }
    
    private String[] ee(final com.google.android.apps.nexuslauncher.smartspace.b.e[] array, final String s) {
        int i;
        String[] array2;
        String dj;
        for (i = 0, array2 = new String[array.length]; i < array2.length; ++i) {
            switch (array[i].dI) {
                default: {
                    array2[i] = "";
                    break;
                }
                case 3: {
                    if (s != null && array[i].dK != 0) {
                        array2[i] = s;
                        break;
                    }
                    if (array[i].dJ != null) {
                        dj = array[i].dJ;
                    }
                    else {
                        dj = "";
                    }
                    array2[i] = dj;
                    break;
                }
                case 1:
                case 2: {
                    array2[i] = this.ea(array[i]);
                    break;
                }
            }
        }
        return array2;
    }
    
    private boolean ef(final d d) {
        boolean b = false;
        if (d != null && d.dF != null && d.dE != null && d.dE.length > 0) {
            b = true;
        }
        return b;
    }
    
    private String eg(final boolean b) {
        return this.eh(b, null);
    }
    
    private String eh(final boolean b, final String s) {
        final d eb = this.eb(b);
        if (eb == null || eb.dF == null) {
            return "";
        }
        String df = eb.dF;
        if (this.ef(eb)) {
            return String.format(df, (Object[])this.ee(eb.dE, s));
        }
        if (df == null) {
            df = "";
        }
        return df;
    }
    
    private static Bitmap ei(final Bitmap bitmap, final int n) {
        final Paint paint = new Paint();
        paint.setColorFilter((ColorFilter)new PorterDuffColorFilter(n, PorterDuff$Mode.SRC_IN));
        final Bitmap bitmap2 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap$Config.ARGB_8888);
        new Canvas(bitmap2).drawBitmap(bitmap, 0.0f, 0.0f, paint);
        return bitmap2;
    }
    
    private com.google.android.apps.nexuslauncher.smartspace.b.c getMessage() {
        final long currentTimeMillis = System.currentTimeMillis();
        final long du = this.eJ.du;
        final long n = this.eJ.du + this.eJ.dt;
        if (currentTimeMillis < du && this.eJ.dy != null) {
            return this.eJ.dy;
        }
        if (currentTimeMillis > n && this.eJ.dx != null) {
            return this.eJ.dx;
        }
        if (this.eJ.ds != null) {
            return this.eJ.ds;
        }
        return null;
    }
    
    void dP(final View view) {
        if (this.eJ.dA == null) {
            Log.e("SmartspaceCard", "no tap action available: " + this);
            return;
        }
        final Intent intent = new Intent(this.getIntent());
        final Launcher launcher = Launcher.getLauncher(view.getContext());
        switch (this.eJ.dA.dP) {
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
    
    public boolean dQ() {
        final com.google.android.apps.nexuslauncher.smartspace.b.c message = this.getMessage();
        return message != null && (this.ef(message.dD) || this.ef(message.dC));
    }
    
    long dR() {
        final com.google.android.apps.nexuslauncher.smartspace.b.c message = this.getMessage();
        if (message != null && this.ef(message.dD)) {
            final com.google.android.apps.nexuslauncher.smartspace.b.e[] de = message.dD.dE;
            for (int i = 0; i < de.length; ++i) {
                final com.google.android.apps.nexuslauncher.smartspace.b.e e = de[i];
                if (e.dI == 1 || e.dI == 2) {
                    return this.ec(e);
                }
            }
        }
        return 0L;
    }
    
    public TextUtils$TruncateAt dS(final boolean b) {
        final com.google.android.apps.nexuslauncher.smartspace.b.c message = this.getMessage();
        if (message != null) {
            int n = 0;
            if (b && message.dD != null) {
                n = message.dD.dG;
            }
            else if (!b && message.dC != null) {
                n = message.dC.dG;
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
    
    public String dT() {
        return this.eg(false);
    }
    
    public boolean dU() {
        return this.eM;
    }
    
    public String dV(final boolean b) {
        return this.eh(b, "");
    }
    
    public String dW(final boolean b) {
        int i = 0;
        final com.google.android.apps.nexuslauncher.smartspace.b.e[] de = this.eb(b).dE;
        if (de != null) {
            while (i < de.length) {
                if (de[i].dK != 0) {
                    return de[i].dJ;
                }
                ++i;
            }
        }
        return "";
    }
    
    public String dX(final String s) {
        return this.eh(true, s);
    }
    
    public long dY() {
        return this.eJ.dv.dR;
    }
    
    public boolean dZ() {
        return System.currentTimeMillis() > this.dY();
    }
    
    long ec(final com.google.android.apps.nexuslauncher.smartspace.b.e e) {
        long du;
        if (e.dI == 2) {
            du = this.eJ.du + this.eJ.dt;
        }
        else {
            du = this.eJ.du;
        }
        return Math.abs(System.currentTimeMillis() - du);
    }
    
    public Bitmap getIcon() {
        return this.mIcon;
    }
    
    public Intent getIntent() {
        return this.mIntent;
    }
    
    public String getTitle() {
        return this.eg(true);
    }
    
    public String toString() {
        return "title:" + this.getTitle() + " expires:" + this.dY() + " published:" + this.eO + " gsaVersion:" + this.eL + " gsaUpdateTime: " + this.eK;
    }
}
