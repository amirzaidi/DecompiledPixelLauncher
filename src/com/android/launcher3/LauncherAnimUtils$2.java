// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.graphics.drawable.Drawable;
import android.util.Property;

final class LauncherAnimUtils$2 extends Property
{
    LauncherAnimUtils$2(final Class clazz, final String s) {
        super(clazz, s);
    }
    
    public Integer get(final Drawable drawable) {
        return drawable.getAlpha();
    }
    
    public void set(final Drawable drawable, final Integer n) {
        drawable.setAlpha((int)n);
    }
}
