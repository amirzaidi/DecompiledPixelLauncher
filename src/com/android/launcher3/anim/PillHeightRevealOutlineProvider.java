// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.anim;

import android.graphics.Rect;
import com.android.launcher3.util.PillRevealOutlineProvider;

public class PillHeightRevealOutlineProvider extends PillRevealOutlineProvider
{
    private final int mNewHeight;
    
    public PillHeightRevealOutlineProvider(final Rect rect, final float n, final int mNewHeight) {
        super(0, 0, rect, n);
        this.mOutline.set(rect);
        this.mNewHeight = mNewHeight;
    }
    
    public void setProgress(final float n) {
        this.mOutline.top = 0;
        this.mOutline.bottom = (int)(this.mPillRect.bottom - (this.mPillRect.height() - this.mNewHeight) * (1.0f - n));
    }
}
