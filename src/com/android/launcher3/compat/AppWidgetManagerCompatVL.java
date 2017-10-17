// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import android.content.ActivityNotFoundException;
import android.widget.Toast;
import android.appwidget.AppWidgetHost;
import android.app.Activity;
import com.android.launcher3.util.ComponentKey;
import java.util.HashMap;
import java.util.Collection;
import java.util.ArrayList;
import java.util.List;
import com.android.launcher3.util.PackageUserKey;
import java.util.Iterator;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import android.os.UserHandle;
import android.content.ComponentName;
import android.os.Bundle;
import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.os.UserManager;

class AppWidgetManagerCompatVL extends AppWidgetManagerCompat
{
    private final UserManager mUserManager;
    
    AppWidgetManagerCompatVL(final Context context) {
        super(context);
        this.mUserManager = (UserManager)context.getSystemService("user");
    }
    
    public boolean bindAppWidgetIdIfAllowed(final int n, final AppWidgetProviderInfo appWidgetProviderInfo, final Bundle bundle) {
        return this.mAppWidgetManager.bindAppWidgetIdIfAllowed(n, appWidgetProviderInfo.getProfile(), appWidgetProviderInfo.provider, bundle);
    }
    
    public LauncherAppWidgetProviderInfo findProvider(final ComponentName componentName, final UserHandle userHandle) {
        for (final AppWidgetProviderInfo appWidgetProviderInfo : this.mAppWidgetManager.getInstalledProvidersForProfile(userHandle)) {
            if (appWidgetProviderInfo.provider.equals((Object)componentName)) {
                return LauncherAppWidgetProviderInfo.fromProviderInfo(this.mContext, appWidgetProviderInfo);
            }
        }
        return null;
    }
    
    public List getAllProviders(final PackageUserKey packageUserKey) {
        if (packageUserKey == null) {
            final ArrayList list = new ArrayList();
            final Iterator iterator = this.mUserManager.getUserProfiles().iterator();
            while (iterator.hasNext()) {
                list.addAll(this.mAppWidgetManager.getInstalledProvidersForProfile((UserHandle)iterator.next()));
            }
            return list;
        }
        final ArrayList<AppWidgetProviderInfo> list2 = new ArrayList<AppWidgetProviderInfo>(this.mAppWidgetManager.getInstalledProvidersForProfile(packageUserKey.mUser));
        final Iterator<Object> iterator2 = list2.iterator();
        while (iterator2.hasNext()) {
            if (!iterator2.next().provider.getPackageName().equals(packageUserKey.mPackageName)) {
                iterator2.remove();
            }
        }
        return list2;
    }
    
    public HashMap getAllProvidersMap() {
        final HashMap<ComponentKey, AppWidgetProviderInfo> hashMap = new HashMap<ComponentKey, AppWidgetProviderInfo>();
        for (final UserHandle userHandle : this.mUserManager.getUserProfiles()) {
            for (final AppWidgetProviderInfo appWidgetProviderInfo : this.mAppWidgetManager.getInstalledProvidersForProfile(userHandle)) {
                hashMap.put(new ComponentKey(appWidgetProviderInfo.provider, userHandle), appWidgetProviderInfo);
            }
        }
        return hashMap;
    }
    
    public void startConfigActivity(final AppWidgetProviderInfo appWidgetProviderInfo, final int n, final Activity activity, final AppWidgetHost appWidgetHost, final int n2) {
        final int n3 = 0;
        try {
            appWidgetHost.startAppWidgetConfigureActivityForResult(activity, n, n3, n2, (Bundle)null);
        }
        catch (ActivityNotFoundException | SecurityException ex) {
            Toast.makeText((Context)activity, 2131492895, 0).show();
        }
    }
}
