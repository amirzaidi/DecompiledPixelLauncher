// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import com.android.launcher3.shortcuts.ShortcutKey;
import android.content.ComponentName;
import com.android.launcher3.ItemInfo;
import java.util.HashSet;

final class ItemInfoMatcher$4 extends ItemInfoMatcher
{
    final /* synthetic */ HashSet val$keys;
    
    ItemInfoMatcher$4(final HashSet val$keys) {
        this.val$keys = val$keys;
    }
    
    public boolean matches(final ItemInfo itemInfo, final ComponentName componentName) {
        return itemInfo.itemType == 6 && this.val$keys.contains(ShortcutKey.fromItemInfo(itemInfo));
    }
}
