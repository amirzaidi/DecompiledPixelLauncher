// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.graphics;

import android.graphics.Bitmap;
import com.android.launcher3.util.Provider;

final class LauncherIcons$1 extends Provider
{
    final /* synthetic */ Bitmap val$fallbackIcon;
    
    LauncherIcons$1(final Bitmap val$fallbackIcon) {
        this.val$fallbackIcon = val$fallbackIcon;
    }
    
    public Bitmap get() {
        return this.val$fallbackIcon;
    }
}
