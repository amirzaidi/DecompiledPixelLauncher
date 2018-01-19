// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.instantapps;

import com.android.launcher3.AppInfo;
import java.util.Map;
import com.android.launcher3.util.ComponentKey;
import android.content.Context;
import com.android.launcher3.util.ComponentKeyMapper;

public class d extends ComponentKeyMapper
{
    private final Context mContext;
    
    public d(final Context context, final ComponentKey componentKey) {
        super(componentKey);
        this.mContext = context.getApplicationContext();
    }
    
    public AppInfo getItem(final Map map) {
        final AppInfo appInfo = (AppInfo)super.getItem(map);
        if (appInfo != null) {
            return appInfo;
        }
        return a.get(this.mContext).eE(this.mComponentKey.componentName.getPackageName());
    }
}
