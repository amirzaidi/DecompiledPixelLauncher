// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.search;

import com.android.launcher3.util.ComponentKey;
import android.content.Intent;
import com.android.launcher3.ItemInfoWithIcon;

public class d extends ItemInfoWithIcon
{
    private Intent mIntent;
    
    public d(final ComponentKey componentKey) {
        this.mIntent = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER").setComponent(componentKey.componentName).addFlags(270532608);
        this.user = componentKey.user;
        this.itemType = 0;
    }
    
    public Intent getIntent() {
        return this.mIntent;
    }
}
