// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.graphics.Bitmap;

public abstract class ItemInfoWithIcon extends ItemInfo
{
    public Bitmap iconBitmap;
    public boolean usingLowResIcon;
    
    protected ItemInfoWithIcon() {
    }
    
    protected ItemInfoWithIcon(final ItemInfoWithIcon itemInfoWithIcon) {
        super(itemInfoWithIcon);
        this.iconBitmap = itemInfoWithIcon.iconBitmap;
        this.usingLowResIcon = itemInfoWithIcon.usingLowResIcon;
    }
}
