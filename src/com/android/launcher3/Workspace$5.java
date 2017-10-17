// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.graphics.Point;

final class Workspace$5 implements Runnable
{
    final /* synthetic */ Workspace this$0;
    
    Workspace$5(final Workspace this$0) {
        this.this$0 = this$0;
    }
    
    public void run() {
        final Point defaultWallpaperSize = LauncherAppState.getIDP(this.this$0.getContext()).defaultWallpaperSize;
        if (defaultWallpaperSize.x != this.this$0.mWallpaperManager.getDesiredMinimumWidth() || defaultWallpaperSize.y != this.this$0.mWallpaperManager.getDesiredMinimumHeight()) {
            this.this$0.mWallpaperManager.suggestDesiredDimensions(defaultWallpaperSize.x, defaultWallpaperSize.y);
        }
    }
}
