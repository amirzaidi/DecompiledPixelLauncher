// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.a;

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
import com.google.android.apps.nexuslauncher.b.a;
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
    public static final ComponentName cj;
    private final Set ck;
    private b cl;
    private final Context mContext;
    
    static {
        cj = new ComponentName("com.google.android.deskclock", "com.android.deskclock.DeskClock");
    }
    
    public c(final Context mContext) {
        this.ck = Collections.newSetFromMap(new WeakHashMap<Object, Boolean>());
        this.cl = new b();
        this.mContext = mContext;
        final Handler handler = new Handler(LauncherModel.getWorkerLooper());
        mContext.registerReceiver((BroadcastReceiver)this, a.eM("com.google.android.deskclock", "android.intent.action.PACKAGE_ADDED", "android.intent.action.PACKAGE_CHANGED"), (String)null, handler);
        handler.post((Runnable)new d(this));
        mContext.registerReceiver((BroadcastReceiver)new e(this), new IntentFilter("android.intent.action.TIMEZONE_CHANGED"), (String)null, new Handler(Looper.getMainLooper()));
    }
    
    public static Drawable bM(final Context context, final int n) {
        final b clone = bO(context, n, false).clone();
        if (clone != null) {
            clone.bJ();
            return clone.ca;
        }
        return null;
    }
    
    private static b bO(final Context context, final int n, final boolean b) {
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
                    b2.ca = drawableForDensity.mutate();
                    b2.cf = metaData.getInt("com.google.android.apps.nexuslauncher.HOUR_LAYER_INDEX", -1);
                    b2.ch = metaData.getInt("com.google.android.apps.nexuslauncher.MINUTE_LAYER_INDEX", -1);
                    b2.ci = metaData.getInt("com.google.android.apps.nexuslauncher.SECOND_LAYER_INDEX", -1);
                    b2.cb = metaData.getInt("com.google.android.apps.nexuslauncher.DEFAULT_HOUR", 0);
                    b2.cc = metaData.getInt("com.google.android.apps.nexuslauncher.DEFAULT_MINUTE", 0);
                    b2.cd = metaData.getInt("com.google.android.apps.nexuslauncher.DEFAULT_SECOND", 0);
                    Label_0300: {
                        if (!b) {
                            break Label_0300;
                        }
                        final IconNormalizer instance = IconNormalizer.getInstance(context);
                        try {
                            b2.scale = instance.getScale(b2.ca, null, null, null);
                            final LayerDrawable bl = b2.bL();
                            try {
                                final int numberOfLayers = bl.getNumberOfLayers();
                                try {
                                    if (b2.cf < 0 || b2.cf >= numberOfLayers) {
                                        b2.cf = -1;
                                    }
                                    if (b2.ch < 0 || b2.ch >= numberOfLayers) {
                                        b2.ch = -1;
                                    }
                                    if (b2.ci < 0 || b2.ci >= numberOfLayers) {
                                        b2.ci = -1;
                                    }
                                    else {
                                        bl.setDrawable(b2.ci, (Drawable)null);
                                        b2.ci = -1;
                                    }
                                    return b2;
                                }
                                catch (Exception ex) {
                                    b2.ca = null;
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
    
    private void bP(final String s) {
        TimeZone timeZone;
        if (s == null) {
            timeZone = TimeZone.getDefault();
        }
        else {
            timeZone = TimeZone.getTimeZone(s);
        }
        final Iterator iterator = this.ck.iterator();
        while (iterator.hasNext()) {
            iterator.next().bI(timeZone);
        }
    }
    
    private void bQ() {
        new MainThreadExecutor().execute(new f(this, bO(this.mContext, LauncherAppState.getIDP(this.mContext).fillResIconDpi, true)));
    }
    
    private void bR(final b cl) {
        this.cl = cl;
        final Iterator iterator = this.ck.iterator();
        while (iterator.hasNext()) {
            iterator.next().bH(this.cl.clone());
        }
    }
    
    public com.google.android.apps.nexuslauncher.a.a bN(final Bitmap bitmap) {
        final com.google.android.apps.nexuslauncher.a.a a = new com.google.android.apps.nexuslauncher.a.a(bitmap, this.cl.clone());
        this.ck.add(a);
        return a;
    }
    
    public void onReceive(final Context context, final Intent intent) {
        this.bQ();
    }
}
