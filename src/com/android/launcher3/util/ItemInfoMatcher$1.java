// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import android.content.ComponentName;
import com.android.launcher3.ItemInfo;
import android.os.UserHandle;

final class ItemInfoMatcher$1 extends ItemInfoMatcher
{
    final /* synthetic */ UserHandle val$user;
    
    ItemInfoMatcher$1(final UserHandle val$user) {
        this.val$user = val$user;
    }
    
    public boolean matches(final ItemInfo itemInfo, final ComponentName componentName) {
        return itemInfo.user.equals((Object)this.val$user);
    }
}
