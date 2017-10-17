// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.util.Comparator;

final class LauncherModel$LoaderTask$3 implements Comparator
{
    final /* synthetic */ LauncherModel$LoaderTask this$1;
    final /* synthetic */ int val$screenCellCount;
    final /* synthetic */ int val$screenCols;
    
    LauncherModel$LoaderTask$3(final LauncherModel$LoaderTask this$1, final int val$screenCellCount, final int val$screenCols) {
        this.this$1 = this$1;
        this.val$screenCellCount = val$screenCellCount;
        this.val$screenCols = val$screenCols;
    }
    
    public int compare(final ItemInfo itemInfo, final ItemInfo itemInfo2) {
        if (itemInfo.container != itemInfo2.container) {
            return Utilities.longCompare(itemInfo.container, itemInfo2.container);
        }
        switch ((int)itemInfo.container) {
            default: {
                return 0;
            }
            case -100: {
                return Utilities.longCompare(itemInfo.screenId * this.val$screenCellCount + itemInfo.cellY * this.val$screenCols + itemInfo.cellX, itemInfo2.screenId * this.val$screenCellCount + itemInfo2.cellY * this.val$screenCols + itemInfo2.cellX);
            }
            case -101: {
                return Utilities.longCompare(itemInfo.screenId, itemInfo2.screenId);
            }
        }
    }
}
