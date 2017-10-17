// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.util.Comparator;

final class LauncherModel$LoaderTask$2 implements Comparator
{
    final /* synthetic */ LauncherModel$LoaderTask this$1;
    
    LauncherModel$LoaderTask$2(final LauncherModel$LoaderTask this$1) {
        this.this$1 = this$1;
    }
    
    public int compare(final ItemInfo itemInfo, final ItemInfo itemInfo2) {
        return Utilities.longCompare(itemInfo.container, itemInfo2.container);
    }
}
