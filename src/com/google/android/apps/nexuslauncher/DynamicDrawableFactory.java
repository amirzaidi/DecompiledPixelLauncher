// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher;

import android.os.Process;
import com.android.launcher3.FastBitmapDrawable;
import com.android.launcher3.ItemInfo;
import android.graphics.Bitmap;
import android.content.Context;
import com.google.android.apps.nexuslauncher.a.c;
import com.android.launcher3.graphics.DrawableFactory;

public class DynamicDrawableFactory extends DrawableFactory
{
    private final c gN;
    
    public DynamicDrawableFactory(final Context context) {
        this.gN = new c(context);
    }
    
    public FastBitmapDrawable newIcon(final Bitmap bitmap, final ItemInfo itemInfo) {
        if (itemInfo != null && itemInfo.itemType == 0 && c.cj.equals((Object)itemInfo.getTargetComponent()) && itemInfo.user.equals((Object)Process.myUserHandle())) {
            return this.gN.bN(bitmap);
        }
        return super.newIcon(bitmap, itemInfo);
    }
}
