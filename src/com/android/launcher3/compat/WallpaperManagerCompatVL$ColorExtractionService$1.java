// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import android.util.Pair;
import java.util.Comparator;

final class WallpaperManagerCompatVL$ColorExtractionService$1 implements Comparator
{
    final /* synthetic */ WallpaperManagerCompatVL$ColorExtractionService this$1;
    
    WallpaperManagerCompatVL$ColorExtractionService$1(final WallpaperManagerCompatVL$ColorExtractionService this$1) {
        this.this$1 = this$1;
    }
    
    public int compare(final Pair pair, final Pair pair2) {
        return (int)pair2.second - (int)pair.second;
    }
}
