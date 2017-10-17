// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.graphics;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;

class LauncherIcons$FixedSizeBitmapDrawable extends BitmapDrawable
{
    public LauncherIcons$FixedSizeBitmapDrawable(final Bitmap bitmap) {
        super((Resources)null, bitmap);
    }
    
    public int getIntrinsicHeight() {
        return this.getBitmap().getWidth();
    }
    
    public int getIntrinsicWidth() {
        return this.getBitmap().getWidth();
    }
}
