// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.a;

import android.content.Intent;
import java.util.Calendar;
import android.os.Bundle;
import android.content.pm.ApplicationInfo;
import android.graphics.Path;
import android.graphics.RectF;
import com.android.launcher3.graphics.IconNormalizer;
import com.android.launcher3.LauncherAppState;
import android.graphics.drawable.Drawable;
import android.content.res.Resources;
import android.os.Handler;
import com.android.launcher3.LauncherModel;
import android.content.Context;
import android.graphics.drawable.LayerDrawable;
import android.content.ComponentName;
import android.content.BroadcastReceiver;

public class a extends BroadcastReceiver
{
    private static final Object LOCK;
    public static final ComponentName dl;
    private static a dp;
    LayerDrawable dm;
    private int dn;
    private int do;
    private int dq;
    private final Context mContext;
    private float mScale;
    
    static {
        LOCK = new Object();
        dl = new ComponentName("com.google.android.deskclock", "com.android.deskclock.DeskClock");
    }
    
    private a(final Context mContext) {
        this.mContext = mContext;
        final Handler handler = new Handler(LauncherModel.getWorkerLooper());
        mContext.registerReceiver((BroadcastReceiver)this, com.google.android.apps.nexuslauncher.util.a.cC("com.google.android.deskclock", "android.intent.action.PACKAGE_ADDED", "android.intent.action.PACKAGE_CHANGED"), (String)null, handler);
        handler.post((Runnable)new c(this));
    }
    
    private static Drawable cL(final Context context, final Resources resources, final int n) {
        if (n != 0) {
            return resources.getDrawableForDensity(n, LauncherAppState.getInstance(context).getInvariantDeviceProfile().fillResIconDpi);
        }
        return null;
    }
    
    private void cP() {
        try {
            final Context mContext = this.mContext;
            try {
                final ApplicationInfo applicationInfo = mContext.getPackageManager().getApplicationInfo("com.google.android.deskclock", 8320);
                try {
                    final Bundle metaData = applicationInfo.metaData;
                    if (metaData == null) {
                        return;
                    }
                    final Context mContext2 = this.mContext;
                    try {
                        final Resources resourcesForApplication = mContext2.getPackageManager().getResourcesForApplication("com.google.android.deskclock");
                        try {
                            final Drawable cl = cL(this.mContext, resourcesForApplication, metaData.getInt("com.google.android.apps.nexuslauncher.LEVEL_PER_TICK_ICON", 0));
                            try {
                                this.dm = (LayerDrawable)cl;
                                this.dn = metaData.getInt("com.google.android.apps.nexuslauncher.HOUR_LAYER_INDEX", -1);
                                this.do = metaData.getInt("com.google.android.apps.nexuslauncher.MINUTE_LAYER_INDEX", -1);
                                this.dq = metaData.getInt("com.google.android.apps.nexuslauncher.SECOND_LAYER_INDEX", -1);
                                if (this.dm == null) {
                                    return;
                                }
                                final Context mContext3 = this.mContext;
                                try {
                                    final IconNormalizer instance = IconNormalizer.getInstance(mContext3);
                                    try {
                                        this.mScale = instance.getScale((Drawable)this.dm, null, null, null);
                                    }
                                    catch (Exception ex) {}
                                }
                                catch (Exception ex2) {}
                            }
                            catch (Exception ex3) {}
                        }
                        catch (Exception ex4) {}
                    }
                    catch (Exception ex5) {}
                }
                catch (Exception ex6) {}
            }
            catch (Exception ex7) {}
        }
        catch (Exception ex8) {}
    }
    
    public static a getInstance(final Context context) {
        synchronized (a.LOCK) {
            if (a.dp == null) {
                a.dp = new a(context.getApplicationContext());
            }
            return a.dp;
        }
    }
    
    public Drawable cM(final Calendar calendar) {
        final int n = 12;
        final int n2 = 10;
        final int n3 = -1;
        if (this.dn != n3) {
            this.dm.getDrawable(this.dn).setLevel(calendar.get(n2) * 60 + calendar.get(n));
        }
        if (this.do != n3) {
            this.dm.getDrawable(this.do).setLevel(calendar.get(n2) * 60 + calendar.get(n));
        }
        if (this.dq != n3) {
            this.dm.getDrawable(this.dq).setLevel(calendar.get(13) * 10 + calendar.get(14) / 100);
        }
        return (Drawable)this.dm;
    }
    
    public float cN() {
        return this.mScale;
    }
    
    public boolean cO() {
        return this.dm != null;
    }
    
    public void onReceive(final Context context, final Intent intent) {
        this.cP();
    }
}
