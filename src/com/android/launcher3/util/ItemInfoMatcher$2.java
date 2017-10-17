// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import android.content.ComponentName;
import com.android.launcher3.ItemInfo;
import android.os.UserHandle;
import java.util.HashSet;

final class ItemInfoMatcher$2 extends ItemInfoMatcher
{
    final /* synthetic */ HashSet val$components;
    final /* synthetic */ UserHandle val$user;
    
    ItemInfoMatcher$2(final HashSet val$components, final UserHandle val$user) {
        this.val$components = val$components;
        this.val$user = val$user;
    }
    
    public boolean matches(final ItemInfo itemInfo, final ComponentName componentName) {
        return this.val$components.contains(componentName) && itemInfo.user.equals((Object)this.val$user);
    }
}
