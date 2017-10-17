// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import com.android.launcher3.ItemInfoWithIcon;

public class PackageItemInfo extends ItemInfoWithIcon
{
    public String packageName;
    
    public PackageItemInfo(final String packageName) {
        this.packageName = packageName;
    }
    
    protected String dumpProperties() {
        return super.dumpProperties() + " packageName=" + this.packageName;
    }
}
