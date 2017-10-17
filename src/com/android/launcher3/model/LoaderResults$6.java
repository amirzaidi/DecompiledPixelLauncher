// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import com.android.launcher3.Utilities;
import com.android.launcher3.ItemInfo;
import java.util.Comparator;

final class LoaderResults$6 implements Comparator
{
    final /* synthetic */ LoaderResults this$0;
    
    LoaderResults$6(final LoaderResults this$0) {
        this.this$0 = this$0;
    }
    
    public int compare(final ItemInfo itemInfo, final ItemInfo itemInfo2) {
        return Utilities.longCompare(itemInfo.container, itemInfo2.container);
    }
}
