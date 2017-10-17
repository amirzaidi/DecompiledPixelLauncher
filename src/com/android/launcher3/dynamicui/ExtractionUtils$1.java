// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dynamicui;

import java.util.Iterator;
import android.support.v7.a.d;
import java.util.List;
import android.support.v4.b.a;
import com.android.launcher3.Utilities;
import android.app.WallpaperManager;
import android.content.Context;

final class ExtractionUtils$1 implements Runnable
{
    final /* synthetic */ Context val$context;
    
    ExtractionUtils$1(final Context val$context) {
        this.val$context = val$context;
    }
    
    public void run() {
        if (hasWallpaperIdChanged(this.val$context)) {
            ExtractionUtils.startColorExtractionService(this.val$context);
        }
    }
}
