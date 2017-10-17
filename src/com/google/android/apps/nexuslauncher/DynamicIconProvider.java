// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher;

import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager$NameNotFoundException;
import android.graphics.drawable.Drawable;
import android.content.pm.LauncherActivityInfo;
import android.content.res.TypedArray;
import android.content.res.Resources$NotFoundException;
import android.content.res.Resources;
import android.os.Bundle;
import java.util.Calendar;
import android.os.Handler;
import com.android.launcher3.LauncherModel;
import android.content.IntentFilter;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.BroadcastReceiver;
import com.android.launcher3.IconProvider;

public class DynamicIconProvider extends IconProvider
{
    private final BroadcastReceiver dv;
    protected final PackageManager mPackageManager;
    
    public DynamicIconProvider(final Context context) {
        this.dv = new g(this);
        final IntentFilter intentFilter = new IntentFilter("android.intent.action.DATE_CHANGED");
        intentFilter.addAction("android.intent.action.TIME_SET");
        intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
        context.registerReceiver(this.dv, intentFilter, (String)null, new Handler(LauncherModel.getWorkerLooper()));
        this.mPackageManager = context.getPackageManager();
    }
    
    private int cS() {
        return Calendar.getInstance().get(5) - 1;
    }
    
    private int cT(final Bundle bundle, final Resources resources) {
        if (bundle == null) {
            return 0;
        }
        final int int1 = bundle.getInt("com.google.android.calendar.dynamic_icons_nexus_round", 0);
        if (int1 == 0) {
            return 0;
        }
        try {
            final TypedArray obtainTypedArray = resources.obtainTypedArray(int1);
            try {
                return obtainTypedArray.getResourceId(this.cS(), 0);
            }
            catch (Resources$NotFoundException ex) {
                return 0;
            }
        }
        catch (Resources$NotFoundException ex2) {}
    }
    
    private boolean cU(final String s) {
        return "com.google.android.calendar".equals(s);
    }
    
    public Drawable getIcon(final LauncherActivityInfo launcherActivityInfo, final int n) {
        Drawable drawable = null;
        final String packageName = launcherActivityInfo.getApplicationInfo().packageName;
        Label_0098: {
            if (!this.cU(packageName)) {
                break Label_0098;
            }
            try {
                final PackageManager mPackageManager = this.mPackageManager;
                try {
                    final ActivityInfo activityInfo = mPackageManager.getActivityInfo(launcherActivityInfo.getComponentName(), 8320);
                    try {
                        final Bundle metaData = activityInfo.metaData;
                        try {
                            final Resources resourcesForApplication = this.mPackageManager.getResourcesForApplication(packageName);
                            final int ct = this.cT(metaData, resourcesForApplication);
                            if (ct != 0) {
                                drawable = resourcesForApplication.getDrawableForDensity(ct, n);
                            }
                            if (drawable == null) {
                                drawable = super.getIcon(launcherActivityInfo, n);
                            }
                            return drawable;
                        }
                        catch (PackageManager$NameNotFoundException ex) {}
                    }
                    catch (PackageManager$NameNotFoundException ex2) {}
                }
                catch (PackageManager$NameNotFoundException ex3) {}
            }
            catch (PackageManager$NameNotFoundException ex4) {}
        }
    }
    
    public String getIconSystemState(final String s) {
        if (this.cU(s)) {
            return this.mSystemState + " " + this.cS();
        }
        return this.mSystemState;
    }
}
