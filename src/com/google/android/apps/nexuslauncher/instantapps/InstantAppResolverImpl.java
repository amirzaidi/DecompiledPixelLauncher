// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.instantapps;

import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Iterator;
import android.content.pm.ResolveInfo;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.Context;
import android.content.pm.PackageManager;
import java.lang.reflect.Method;
import com.android.launcher3.util.InstantAppResolver;

public class InstantAppResolverImpl extends InstantAppResolver
{
    private final Method ga;
    private final Method gb;
    private final Method gc;
    private final PackageManager gd;
    
    public InstantAppResolverImpl(final Context context) {
        this.gd = context.getPackageManager();
        this.gb = this.gd.getClass().getDeclaredMethod("getInstantApps", (Class[])new Class[0]);
        this.ga = Class.forName("android.content.pm.InstantAppInfo").getDeclaredMethod("getApplicationInfo", (Class<?>[])new Class[0]);
        this.gc = ApplicationInfo.class.getDeclaredMethod("isInstantApp", (Class<?>[])new Class[0]);
    }
    
    public static String eG(final String package1, final PackageManager packageManager) {
        final Iterator iterator = packageManager.queryIntentActivities(new Intent().setAction("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER").setPackage(package1), 8388736).iterator();
        String s = null;
        while (iterator.hasNext()) {
            final ResolveInfo resolveInfo = iterator.next();
            String string;
            if (resolveInfo.activityInfo.metaData != null) {
                if (resolveInfo.activityInfo.metaData.containsKey("default-url")) {
                    string = resolveInfo.activityInfo.metaData.getString("default-url");
                }
                else {
                    string = s;
                }
            }
            else {
                string = s;
            }
            s = string;
        }
        return s;
    }
    
    public List getInstantApps() {
        ArrayList<ApplicationInfo> list = null;
        try {
            try {
                list = new ArrayList<ApplicationInfo>();
                final Method gb = this.gb;
                try {
                    final Object invoke = gb.invoke(this.gd, new Object[0]);
                    try {
                        final List<Object> list2 = (List<Object>)invoke;
                        try {
                            final Iterator<Object> iterator = list2.iterator();
                            try {
                                while (iterator.hasNext()) {
                                    final Object next = iterator.next();
                                    try {
                                        final Object invoke2 = this.ga.invoke(next, new Object[0]);
                                        try {
                                            final ApplicationInfo applicationInfo = (ApplicationInfo)invoke2;
                                            if (applicationInfo != null) {
                                                list.add(applicationInfo);
                                                continue;
                                            }
                                            continue;
                                        }
                                        catch (Exception ex) {
                                            Log.d("InstantAppResolverImpl", "Error calling API: getInstantApps", (Throwable)ex);
                                            return super.getInstantApps();
                                        }
                                    }
                                    catch (Exception ex2) {}
                                }
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
        return list;
    }
    
    public boolean isInstantApp(final ApplicationInfo applicationInfo) {
        try {
            final Object invoke = this.gc.invoke(applicationInfo, new Object[0]);
            try {
                final Boolean b = (Boolean)invoke;
                try {
                    return b;
                }
                catch (Exception ex) {
                    Log.d("InstantAppResolverImpl", "Error calling API: isInstantApp", (Throwable)ex);
                    return super.isInstantApp(applicationInfo);
                }
            }
            catch (Exception ex2) {}
        }
        catch (Exception ex3) {}
    }
}
