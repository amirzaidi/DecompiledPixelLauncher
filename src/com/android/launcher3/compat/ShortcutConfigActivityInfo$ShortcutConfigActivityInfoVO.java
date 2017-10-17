// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import android.content.Intent;
import android.content.IntentSender;
import android.content.IntentSender$SendIntentException;
import android.content.Context;
import android.widget.Toast;
import android.content.pm.LauncherApps;
import android.os.Process;
import android.app.Activity;
import android.graphics.drawable.Drawable;
import com.android.launcher3.IconCache;
import android.content.pm.LauncherActivityInfo;

public class ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO extends ShortcutConfigActivityInfo
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
        if (this.getUser().equals((Object)Process.myUserHandle())) {
            return super.startConfigActivity(activity, n);
        }
        final IntentSender shortcutConfigActivityIntent = ((LauncherApps)activity.getSystemService((Class)LauncherApps.class)).getShortcutConfigActivityIntent(this.mInfo);
        final Intent intent = null;
        final int n2 = 0;
        final int n3 = 0;
        try {
            activity.startIntentSenderForResult(shortcutConfigActivityIntent, n, intent, n2, n3, 0);
            return true;
        }
        catch (IntentSender$SendIntentException ex) {
            Toast.makeText((Context)activity, 2131492897, 0).show();
            return false;
        }
    }
}
