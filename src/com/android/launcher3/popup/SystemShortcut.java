// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.popup;

import android.view.View$OnClickListener;
import com.android.launcher3.Launcher;
import android.graphics.drawable.Drawable;
import android.content.Context;
import com.android.launcher3.ItemInfo;

public abstract class SystemShortcut extends ItemInfo
{
    private final int mIconResId;
    private final int mLabelResId;
    
    public SystemShortcut(final int mIconResId, final int mLabelResId) {
        this.mIconResId = mIconResId;
        this.mLabelResId = mLabelResId;
    }
    
    public Drawable getIcon(final Context context) {
        return context.getResources().getDrawable(this.mIconResId, context.getTheme());
    }
    
    public String getLabel(final Context context) {
        return context.getString(this.mLabelResId);
    }
    
    public abstract View$OnClickListener getOnClickListener(final Launcher p0, final ItemInfo p1);
}
