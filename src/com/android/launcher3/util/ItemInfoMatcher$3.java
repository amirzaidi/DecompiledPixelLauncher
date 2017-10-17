// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import android.content.ComponentName;
import com.android.launcher3.ItemInfo;
import android.os.UserHandle;
import java.util.HashSet;

final class ItemInfoMatcher$3 extends ItemInfoMatcher
{
    final /* synthetic */ HashSet val$packageNames;
    final /* synthetic */ UserHandle val$user;
    
    ItemInfoMatcher$3(final HashSet val$packageNames, final UserHandle val$user) {
        this.val$packageNames = val$packageNames;
        this.val$user = val$user;
    }
    
    public boolean matches(final ItemInfo itemInfo, final ComponentName componentName) {
        return this.val$packageNames.contains(componentName.getPackageName()) && itemInfo.user.equals((Object)this.val$user);
    }
}
