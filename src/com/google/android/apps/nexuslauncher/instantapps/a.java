// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.instantapps;

import android.os.Message;
import com.android.launcher3.IconCache;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import com.android.launcher3.ItemInfoWithIcon;
import com.android.launcher3.LauncherAppState;
import android.net.Uri;
import android.content.Intent;
import android.util.Log;
import android.content.pm.PackageManager$NameNotFoundException;
import java.util.List;
import android.text.TextUtils;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.util.InstantAppResolver;
import android.os.Handler;
import android.content.Context;
import com.android.launcher3.AppInfo;
import android.os.Handler$Callback;

public class a implements Handler$Callback
{
    private static a fZ;
    private AppInfo fY;
    private final Context mContext;
    private final Handler mHandler;
    private final InstantAppResolver mInstantAppResolver;
    private final Handler mWorker;
    
    private a(final Context mContext) {
        this.mContext = mContext;
        this.mInstantAppResolver = InstantAppResolver.newInstance(mContext);
        this.mWorker = new Handler(LauncherModel.getWorkerLooper(), (Handler$Callback)this);
        this.mHandler = new Handler((Handler$Callback)this);
    }
    
    public static String eC(final Context context) {
        final List instantApps = InstantAppResolver.newInstance(context).getInstantApps();
        final b value = b.get(context);
        String s = value.eH(instantApps);
        if (TextUtils.isEmpty((CharSequence)s)) {
            s = value.eI(instantApps);
        }
        return s;
    }
    
    private c eF(final String s) {
        final PackageManager packageManager = this.mContext.getPackageManager();
        try {
            final ApplicationInfo applicationInfo = packageManager.getApplicationInfo(s, 0);
            try {
                if (!this.mInstantAppResolver.isInstantApp(applicationInfo)) {
                    return null;
                }
            }
            catch (PackageManager$NameNotFoundException ex) {
                return null;
            }
        }
        catch (PackageManager$NameNotFoundException ex2) {}
        final String eg = InstantAppResolverImpl.eG(s, packageManager);
        if (eg == null) {
            Log.w("InstantApps", "no default-url available for pkg " + s);
            return null;
        }
        final c c = new c(new Intent("android.intent.action.VIEW").addCategory("android.intent.category.BROWSABLE").setData(Uri.parse(eg)), s);
        final IconCache iconCache = LauncherAppState.getInstance(this.mContext).getIconCache();
        iconCache.getTitleAndIcon(c, false);
        if (c.iconBitmap == null || iconCache.isDefaultIcon(c.iconBitmap, c.user)) {
            return null;
        }
        return c;
    }
    
    public static a get(final Context context) {
        if (a.fZ == null) {
            a.fZ = new a(context.getApplicationContext());
        }
        return a.fZ;
    }
    
    public void eD(final String s) {
        if (TextUtils.isEmpty((CharSequence)s)) {
            this.fY = null;
            return;
        }
        if (this.fY != null && this.fY.componentName.getPackageName().equals(s)) {
            return;
        }
        Message.obtain(this.mWorker, 1, (Object)s).sendToTarget();
    }
    
    public AppInfo eE(final String s) {
        AppInfo fy = null;
        if (this.fY != null && this.fY.componentName.getPackageName().equals(s)) {
            fy = this.fY;
        }
        return fy;
    }
    
    public boolean handleMessage(final Message message) {
        final int n = 2;
        if (message.what == 1) {
            Message.obtain(this.mHandler, n, (Object)this.eF((String)message.obj)).sendToTarget();
        }
        else if (message.what == n) {
            this.fY = (c)message.obj;
        }
        return false;
    }
}
