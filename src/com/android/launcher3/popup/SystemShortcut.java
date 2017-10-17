// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.popup;

import android.view.View$OnClickListener;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.Launcher;
import com.android.launcher3.util.Themes;
import android.graphics.drawable.Drawable;
import android.content.Context;

public abstract class SystemShortcut
{
    private final int mIconResId;
    private final int mLabelResId;
    
    public SystemShortcut(final int mIconResId, final int mLabelResId) {
        this.mIconResId = mIconResId;
        this.mLabelResId = mLabelResId;
    }
    
    public Drawable getIcon(final Context context, final int n) {
        final Drawable mutate = context.getResources().getDrawable(this.mIconResId, context.getTheme()).mutate();
        mutate.setTint(Themes.getAttrColor(context, n));
        return mutate;
    }
    
    public String getLabel(final Context context) {
        return context.getString(this.mLabelResId);
    }
    
    public abstract View$OnClickListener getOnClickListener(final Launcher p0, final ItemInfo p1);
}
