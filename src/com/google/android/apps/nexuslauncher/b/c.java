// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.b;

import android.content.Intent;
import android.graphics.Bitmap;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.MainThreadExecutor;
import java.util.Iterator;
import java.util.TimeZone;
import android.graphics.drawable.LayerDrawable;
import android.os.Bundle;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Path;
import android.graphics.RectF;
import com.android.launcher3.graphics.IconNormalizer;
import com.android.launcher3.util.Preconditions;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.content.IntentFilter;
import android.os.Handler;
import com.android.launcher3.LauncherModel;
import java.util.Map;
import java.util.Collections;
import java.util.WeakHashMap;
import android.content.Context;
import java.util.Set;
import android.content.ComponentName;
import android.content.BroadcastReceiver;

public class c extends BroadcastReceiver
{
    public static final ComponentName fk;
    private final Set fl;
    private b fm;
    private final Context mContext;
    
    static {
        fk = new ComponentName("com.google.android.deskclock", "com.android.deskclock.DeskClock");
    }
    
    public c(final Context mContext) {
        this.fl = Collections.newSetFromMap(new WeakHashMap<Object, Boolean>());
        this.fm = new b();
        this.mContext = mContext;
        final Handler handler = new Handler(LauncherModel.getWorkerLooper());
        mContext.registerReceiver((BroadcastReceiver)this, com.google.android.apps.nexuslauncher.a.b.dy("com.google.android.deskclock", "android.intent.action.PACKAGE_ADDED", "android.intent.action.PACKAGE_CHANGED"), (String)null, handler);
        handler.post((Runnable)new d(this));
        mContext.registerReceiver((BroadcastReceiver)new e(this), new IntentFilter("android.intent.action.TIMEZONE_CHANGED"), (String)null, new Handler(Looper.getMainLooper()));
    }
    
    public static Drawable dK(final Context context, final int n) {
        final b clone = dL(context, n, false).clone();
        if (clone != null) {
            clone.dG();
            return clone.fb;
        }
        return null;
    }
    
    private static b dL(final Context context, final int n, final boolean b) {
        Preconditions.assertWorkerThread();
        final b b2 = new b();
        try {
            final PackageManager packageManager = context.getPackageManager();
            final ApplicationInfo applicationInfo = packageManager.getApplicationInfo("com.google.android.deskclock", 8320);
            try {
                final Bundle metaData = applicationInfo.metaData;
                if (metaData == null) {
                    return b2;
                }
                final int int1 = metaData.getInt("com.google.android.apps.nexuslauncher.LEVEL_PER_TICK_ICON_ROUND", 0);
                if (int1 == 0) {
                    return b2;
                }
                final Drawable drawableForDensity = packageManager.getResourcesForApplication(applicationInfo).getDrawableForDensity(int1, n);
                try {
                    b2.fb = drawableForDensity.mutate();
                    b2.fg = metaData.getInt("com.google.android.apps.nexuslauncher.HOUR_LAYER_INDEX", -1);
                    b2.fi = metaData.getInt("com.google.android.apps.nexuslauncher.MINUTE_LAYER_INDEX", -1);
                    b2.fj = metaData.getInt("com.google.android.apps.nexuslauncher.SECOND_LAYER_INDEX", -1);
                    b2.fc = metaData.getInt("com.google.android.apps.nexuslauncher.DEFAULT_HOUR", 0);
                    b2.fd = metaData.getInt("com.google.android.apps.nexuslauncher.DEFAULT_MINUTE", 0);
                    b2.fe = metaData.getInt("com.google.android.apps.nexuslauncher.DEFAULT_SECOND", 0);
                    Label_0300: {
                        if (!b) {
                            break Label_0300;
                        }
                        final IconNormalizer instance = IconNormalizer.getInstance(context);
                        try {
                            b2.scale = instance.getScale(b2.fb, null, null, null);
                            final LayerDrawable di = b2.dI();
                            try {
                                final int numberOfLayers = di.getNumberOfLayers();
                                try {
                                    if (b2.fg < 0 || b2.fg >= numberOfLayers) {
                                        b2.fg = -1;
                                    }
                                    if (b2.fi < 0 || b2.fi >= numberOfLayers) {
                                        b2.fi = -1;
                                    }
                                    if (b2.fj < 0 || b2.fj >= numberOfLayers) {
                                        b2.fj = -1;
                                    }
                                    else {
                                        di.setDrawable(b2.fj, (Drawable)null);
                                        b2.fj = -1;
                                    }
                                    return b2;
                                }
                                catch (Exception ex) {
                                    b2.fb = null;
                                    return b2;
                                }
                            }
                            catch (Exception ex2) {}
                        }
                        catch (Exception ex3) {}
                    }
                }
                catch (Exception ex4) {}
            }
            catch (Exception ex5) {}
        }
        catch (Exception ex6) {}
    }
    
    private void dM(final String s) {
        TimeZone timeZone;
        if (s == null) {
            timeZone = TimeZone.getDefault();
        }
        else {
            timeZone = TimeZone.getTimeZone(s);
        }
        final Iterator iterator = this.fl.iterator();
        while (iterator.hasNext()) {
            iterator.next().dF(timeZone);
        }
    }
    
    private void dN() {
        new MainThreadExecutor().execute(new f(this, dL(this.mContext, LauncherAppState.getIDP(this.mContext).fillResIconDpi, true)));
    }
    
    private void dO(final b fm) {
        this.fm = fm;
        final Iterator iterator = this.fl.iterator();
        while (iterator.hasNext()) {
            iterator.next().dE(this.fm.clone());
        }
    }
    
    public a dJ(final Bitmap bitmap) {
        final a a = new a(bitmap, this.fm.clone());
        this.fl.add(a);
        return a;
    }
    
    public void onReceive(final Context context, final Intent intent) {
        this.dN();
    }
}
