// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import java.util.List;
import com.android.launcher3.util.PackageUserKey;
import android.content.Context;

class AppWidgetManagerCompatVO extends AppWidgetManagerCompatVL
{
    AppWidgetManagerCompatVO(final Context context) {
        super(context);
    }
    
    public List getAllProviders(final PackageUserKey packageUserKey) {
        if (packageUserKey == null) {
            return super.getAllProviders(null);
        }
        return this.mAppWidgetManager.getInstalledProvidersForPackage(packageUserKey.mPackageName, packageUserKey.mUser);
    }
}
