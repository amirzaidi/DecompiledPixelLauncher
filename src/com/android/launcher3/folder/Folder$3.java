// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import com.android.launcher3.ItemInfo;
import java.util.Comparator;

final class Folder$3 implements Comparator
{
    public int compare(final ItemInfo itemInfo, final ItemInfo itemInfo2) {
        if (itemInfo.rank != itemInfo2.rank) {
            return itemInfo.rank - itemInfo2.rank;
        }
        if (itemInfo.cellY != itemInfo2.cellY) {
            return itemInfo.cellY - itemInfo2.cellY;
        }
        return itemInfo.cellX - itemInfo2.cellX;
    }
}
