// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.Canvas;
import com.android.launcher3.LauncherAnimUtils;
import android.content.res.Resources;
import android.view.ContextThemeWrapper;
import com.android.launcher3.util.Themes;
import android.content.Context;
import android.animation.ObjectAnimator;
import android.graphics.drawable.Drawable;

public class AllAppsBackgroundDrawable extends Drawable
{
    private ObjectAnimator mBackgroundAnim;
    protected final AllAppsBackgroundDrawable$TransformedImageDrawable mHand;
    private final int mHeight;
    protected final AllAppsBackgroundDrawable$TransformedImageDrawable[] mIcons;
    private final int mWidth;
    
    public AllAppsBackgroundDrawable(final Context context) {
        final int n = 1;
        final Resources resources = context.getResources();
        this.mWidth = resources.getDimensionPixelSize(2131427392);
        this.mHeight = resources.getDimensionPixelSize(2131427393);
        int n2;
        if (Themes.getAttrBoolean(context, 2130772010)) {
            n2 = 2131886098;
        }
        else {
            n2 = 2131886097;
        }
        final ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, n2);
        this.mHand = new AllAppsBackgroundDrawable$TransformedImageDrawable((Context)contextThemeWrapper, 2130837557, 0.575f, 0.0f, n);
        (this.mIcons = new AllAppsBackgroundDrawable$TransformedImageDrawable[4])[0] = new AllAppsBackgroundDrawable$TransformedImageDrawable((Context)contextThemeWrapper, 2130837558, 0.375f, 0.0f, n);
        this.mIcons[n] = new AllAppsBackgroundDrawable$TransformedImageDrawable((Context)contextThemeWrapper, 2130837559, 0.3125f, 0.2f, n);
        this.mIcons[2] = new AllAppsBackgroundDrawable$TransformedImageDrawable((Context)contextThemeWrapper, 2130837560, 0.475f, 0.26f, n);
        this.mIcons[3] = new AllAppsBackgroundDrawable$TransformedImageDrawable((Context)contextThemeWrapper, 2130837561, 0.7f, 0.125f, n);
    }
    
    private ObjectAnimator cancelAnimator(final ObjectAnimator objectAnimator) {
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        return null;
    }
    
    public void animateBgAlpha(final float n, final int n2) {
        final int n3 = (int)(255.0f * n);
        if (this.getAlpha() != n3) {
            this.mBackgroundAnim = this.cancelAnimator(this.mBackgroundAnim);
            (this.mBackgroundAnim = ObjectAnimator.ofInt((Object)this, LauncherAnimUtils.DRAWABLE_ALPHA, new int[] { n3 })).setDuration((long)n2);
            this.mBackgroundAnim.start();
        }
    }
    
    public void draw(final Canvas canvas) {
        this.mHand.draw(canvas);
        for (int i = 0; i < this.mIcons.length; ++i) {
            this.mIcons[i].draw(canvas);
        }
    }
    
    public int getAlpha() {
        return this.mHand.getAlpha();
    }
    
    public int getIntrinsicHeight() {
        return this.mHeight;
    }
    
    public int getIntrinsicWidth() {
        return this.mWidth;
    }
    
    public int getOpacity() {
        return -3;
    }
    
    protected void onBoundsChange(final Rect rect) {
        super.onBoundsChange(rect);
        this.mHand.updateBounds(rect);
        for (int i = 0; i < this.mIcons.length; ++i) {
            this.mIcons[i].updateBounds(rect);
        }
        this.invalidateSelf();
    }
    
    public void setAlpha(final int n) {
        this.mHand.setAlpha(n);
        for (int i = 0; i < this.mIcons.length; ++i) {
            this.mIcons[i].setAlpha(n);
        }
        this.invalidateSelf();
    }
    
    public void setBgAlpha(final float n) {
        final int alpha = (int)(255.0f * n);
        if (this.getAlpha() != alpha) {
            this.mBackgroundAnim = this.cancelAnimator(this.mBackgroundAnim);
            this.setAlpha(alpha);
        }
    }
    
    public void setColorFilter(final ColorFilter colorFilter) {
    }
}
