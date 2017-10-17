// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.content.ComponentName;

public class PendingAddItemInfo extends ItemInfo
{
    public ComponentName componentName;
    
    protected String dumpProperties() {
        return super.dumpProperties() + " componentName=" + this.componentName;
    }
}
