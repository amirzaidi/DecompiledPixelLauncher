// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher;

import com.google.android.apps.nexuslauncher.a.b;
import com.android.launcher3.FastBitmapDrawable;
import com.android.launcher3.ItemInfo;
import android.graphics.Bitmap;
import android.content.Context;
import com.google.android.apps.nexuslauncher.a.a;
import com.android.launcher3.graphics.DrawableFactory;

public class DynamicDrawableFactory extends DrawableFactory
{
    a du;
    
    public DynamicDrawableFactory(final Context context) {
        this.du = a.getInstance(context);
    }
    
    public FastBitmapDrawable newIcon(final Bitmap bitmap, final ItemInfo itemInfo) {
        if (itemInfo != null && itemInfo.itemType == 0 && a.dl.equals((Object)itemInfo.getTargetComponent())) {
            final b b = new b(bitmap, this.du);
            b.setFilterBitmap(true);
            return b;
        }
        return super.newIcon(bitmap, itemInfo);
    }
}
