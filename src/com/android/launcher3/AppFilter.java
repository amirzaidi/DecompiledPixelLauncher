// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.content.ComponentName;
import android.content.Context;

public class AppFilter
{
    public static AppFilter newInstance(final Context context) {
        return (AppFilter)Utilities.getOverrideObject(AppFilter.class, context, 2131492888);
    }
    
    public boolean shouldShowApp(final ComponentName componentName) {
        return true;
    }
}
