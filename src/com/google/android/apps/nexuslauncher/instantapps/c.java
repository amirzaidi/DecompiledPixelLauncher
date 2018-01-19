// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.instantapps;

import com.android.launcher3.ShortcutInfo;
import android.content.ComponentName;
import android.content.Intent;
import com.android.launcher3.AppInfo;

public class c extends AppInfo
{
    public c(final Intent intent, final String s) {
        this.intent = intent;
        this.componentName = new ComponentName(s, "@instantapp");
    }
    
    public ComponentName getTargetComponent() {
        return this.componentName;
    }
    
    public ShortcutInfo makeShortcut() {
        final ShortcutInfo shortcut = super.makeShortcut();
        shortcut.itemType = 0;
        shortcut.status = 26;
        shortcut.intent.setPackage(this.componentName.getPackageName());
        return shortcut;
    }
}
