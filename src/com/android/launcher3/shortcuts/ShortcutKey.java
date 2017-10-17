// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.shortcuts;

import com.android.launcher3.ItemInfo;
import android.content.Intent;
import android.content.ComponentName;
import android.os.UserHandle;
import com.android.launcher3.util.ComponentKey;

public class ShortcutKey extends ComponentKey
{
    public ShortcutKey(final String s, final UserHandle userHandle, final String s2) {
        super(new ComponentName(s, s2), userHandle);
    }
    
    public static ShortcutKey fromInfo(final ShortcutInfoCompat shortcutInfoCompat) {
        return new ShortcutKey(shortcutInfoCompat.getPackage(), shortcutInfoCompat.getUserHandle(), shortcutInfoCompat.getId());
    }
    
    public static ShortcutKey fromIntent(final Intent intent, final UserHandle userHandle) {
        return new ShortcutKey(intent.getPackage(), userHandle, intent.getStringExtra("shortcut_id"));
    }
    
    public static ShortcutKey fromItemInfo(final ItemInfo itemInfo) {
        return fromIntent(itemInfo.getIntent(), itemInfo.user);
    }
    
    public String getId() {
        return this.componentName.getClassName();
    }
}
