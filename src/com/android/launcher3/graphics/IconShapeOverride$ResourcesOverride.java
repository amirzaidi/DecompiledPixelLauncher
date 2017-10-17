// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.graphics;

import android.content.res.Resources;

class IconShapeOverride$ResourcesOverride extends Resources
{
    private final int mOverrideId;
    private final String mOverrideValue;
    
    public IconShapeOverride$ResourcesOverride(final Resources resources, final int mOverrideId, final String mOverrideValue) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.mOverrideId = mOverrideId;
        this.mOverrideValue = mOverrideValue;
    }
    
    public String getString(final int n) {
        if (n == this.mOverrideId) {
            return this.mOverrideValue;
        }
        return super.getString(n);
    }
}
