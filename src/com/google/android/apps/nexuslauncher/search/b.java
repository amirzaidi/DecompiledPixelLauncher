// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.search;

import android.util.Log;
import com.google.android.apps.nexuslauncher.instantapps.a;
import android.content.Context;
import com.android.launcher3.util.ComponentKey;
import android.content.Intent;
import com.android.launcher3.AppInfo;

public class b extends AppInfo
{
    private final Intent mIntent;
    
    private b(final ComponentKey componentKey) {
        this.mIntent = AppInfo.makeLaunchIntent(componentKey.componentName);
        this.user = componentKey.user;
        this.itemType = 0;
    }
    
    public static AppInfo ep(final Context context, final ComponentKey componentKey) {
        if ("@instantapp".equals(componentKey.componentName.getClassName())) {
            final AppInfo ee = a.get(context).eE(componentKey.componentName.getPackageName());
            if (ee != null) {
                return ee;
            }
            Log.e("SimpleItemInfo", "instant app info not available for " + componentKey);
        }
        return new b(componentKey);
    }
    
    public Intent getIntent() {
        return this.mIntent;
    }
}
