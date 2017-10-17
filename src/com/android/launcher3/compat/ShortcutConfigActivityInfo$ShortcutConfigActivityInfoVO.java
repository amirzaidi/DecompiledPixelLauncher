// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import java.lang.reflect.Method;
import android.util.Log;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.LauncherApps;
import android.os.Process;
import android.app.Activity;
import android.graphics.drawable.Drawable;
import com.android.launcher3.IconCache;
import android.content.pm.LauncherActivityInfo;

class ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO extends ShortcutConfigActivityInfo
{
    private final LauncherActivityInfo mInfo;
    
    public ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO(final LauncherActivityInfo mInfo) {
        super(mInfo.getComponentName(), mInfo.getUser());
        this.mInfo = mInfo;
    }
    
    public Drawable getFullResIcon(final IconCache iconCache) {
        return iconCache.getFullResIcon(this.mInfo);
    }
    
    public CharSequence getLabel() {
        return this.mInfo.getLabel();
    }
    
    public boolean startConfigActivity(final Activity activity, final int n) {
        final boolean b = true;
        if (this.getUser().equals((Object)Process.myUserHandle())) {
            return super.startConfigActivity(activity, n);
        }
        final Class<LauncherApps> clazz = LauncherApps.class;
        final String s = "getShortcutConfigActivityIntent";
        final int n2 = 1;
        try {
            final Class[] array = new Class[n2];
            array[0] = LauncherActivityInfo.class;
            final Method declaredMethod = clazz.getDeclaredMethod(s, (Class[])array);
            final Object systemService = activity.getSystemService((Class)LauncherApps.class);
            final Object[] array2 = { null };
            try {
                array2[0] = this.mInfo;
                final Object invoke = declaredMethod.invoke(systemService, array2);
                try {
                    activity.startIntentSenderForResult((IntentSender)invoke, n, (Intent)null, 0, 0, 0);
                    return b;
                }
                catch (Exception ex) {
                    Log.e("SCActivityInfo", "Error calling new API", (Throwable)ex);
                    return false;
                }
            }
            catch (Exception ex2) {}
        }
        catch (Exception ex3) {}
    }
}
