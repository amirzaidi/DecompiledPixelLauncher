// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.graphics;

import android.graphics.drawable.Drawable;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable$ConstantState;

class ShadowDrawable$ShadowDrawableState extends Drawable$ConstantState
{
    int mChangingConfigurations;
    Drawable$ConstantState mChildState;
    int mDarkTintColor;
    int mIntrinsicHeight;
    int mIntrinsicWidth;
    boolean mIsDark;
    Bitmap mLastDrawnBitmap;
    int mShadowColor;
    int mShadowSize;
    
    public boolean canApplyTheme() {
        return true;
    }
    
    public int getChangingConfigurations() {
        return this.mChangingConfigurations;
    }
    
    public Drawable newDrawable() {
        return new ShadowDrawable(this, null);
    }
}
