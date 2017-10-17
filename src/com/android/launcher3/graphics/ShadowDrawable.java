// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.graphics;

import android.graphics.ColorFilter;
import org.xmlpull.v1.XmlPullParserException;
import com.android.launcher3.R$styleable;
import android.util.AttributeSet;
import org.xmlpull.v1.XmlPullParser;
import android.content.res.Resources;
import android.graphics.drawable.Drawable$ConstantState;
import android.graphics.Rect;
import android.content.res.TypedArray;
import android.content.res.Resources$Theme;
import com.android.launcher3.Utilities;
import android.graphics.MaskFilter;
import android.graphics.BlurMaskFilter;
import android.graphics.BlurMaskFilter$Blur;
import android.graphics.Canvas;
import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;

public class ShadowDrawable extends Drawable
{
    private final Paint mPaint;
    private final ShadowDrawable$ShadowDrawableState mState;
    
    public ShadowDrawable() {
        this(new ShadowDrawable$ShadowDrawableState(null));
    }
    
    private ShadowDrawable(final ShadowDrawable$ShadowDrawableState mState) {
        this.mPaint = new Paint(3);
        this.mState = mState;
    }
    
    private void regenerateBitmapCache() {
        final Bitmap bitmap = Bitmap.createBitmap(this.mState.mIntrinsicWidth, this.mState.mIntrinsicHeight, Bitmap$Config.ARGB_8888);
        final Canvas canvas = new Canvas(bitmap);
        final Drawable mutate = this.mState.mChildState.newDrawable().mutate();
        mutate.setBounds(this.mState.mShadowSize, this.mState.mShadowSize, this.mState.mIntrinsicWidth - this.mState.mShadowSize, this.mState.mIntrinsicHeight - this.mState.mShadowSize);
        int mDarkTintColor;
        if (this.mState.mIsDark) {
            mDarkTintColor = this.mState.mDarkTintColor;
        }
        else {
            mDarkTintColor = -1;
        }
        mutate.setTint(mDarkTintColor);
        mutate.draw(canvas);
        if (!this.mState.mIsDark) {
            final Paint paint = new Paint(3);
            paint.setMaskFilter((MaskFilter)new BlurMaskFilter((float)this.mState.mShadowSize, BlurMaskFilter$Blur.NORMAL));
            final int[] array = new int[2];
            final Bitmap alpha = bitmap.extractAlpha(paint, array);
            paint.setMaskFilter((MaskFilter)null);
            paint.setColor(this.mState.mShadowColor);
            bitmap.eraseColor(0);
            canvas.drawBitmap(alpha, (float)array[0], (float)array[1], paint);
            mutate.draw(canvas);
        }
        Bitmap copy;
        if (Utilities.isAtLeastO()) {
            copy = bitmap.copy(Bitmap$Config.HARDWARE, false);
        }
        else {
            copy = bitmap;
        }
        this.mState.mLastDrawnBitmap = copy;
    }
    
    public void applyTheme(final Resources$Theme resources$Theme) {
        final TypedArray obtainStyledAttributes = resources$Theme.obtainStyledAttributes(new int[] { 2130772011 });
        final boolean boolean1 = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        if (this.mState.mIsDark != boolean1) {
            this.mState.mIsDark = boolean1;
            this.mState.mLastDrawnBitmap = null;
            this.invalidateSelf();
        }
    }
    
    public boolean canApplyTheme() {
        return this.mState.canApplyTheme();
    }
    
    public void draw(final Canvas canvas) {
        final Rect bounds = this.getBounds();
        if (bounds.isEmpty()) {
            return;
        }
        if (this.mState.mLastDrawnBitmap == null) {
            this.regenerateBitmapCache();
        }
        canvas.drawBitmap(this.mState.mLastDrawnBitmap, (Rect)null, bounds, this.mPaint);
    }
    
    public Drawable$ConstantState getConstantState() {
        return this.mState;
    }
    
    public int getIntrinsicHeight() {
        return this.mState.mIntrinsicHeight;
    }
    
    public int getIntrinsicWidth() {
        return this.mState.mIntrinsicWidth;
    }
    
    public int getOpacity() {
        return -3;
    }
    
    public void inflate(final Resources resources, final XmlPullParser xmlPullParser, final AttributeSet set, final Resources$Theme resources$Theme) {
        super.inflate(resources, xmlPullParser, set, resources$Theme);
        while (true) {
            Label_0080: {
                if (resources$Theme != null) {
                    break Label_0080;
                }
                final TypedArray typedArray = resources.obtainAttributes(set, R$styleable.ShadowDrawable);
                final TypedArray typedArray2 = typedArray;
                Label_0104: {
                    try {
                        if (typedArray2.getDrawable(0) == null) {
                            throw new XmlPullParserException("missing src attribute");
                        }
                        break Label_0104;
                    }
                    finally {
                        typedArray.recycle();
                    }
                    break Label_0080;
                }
                this.mState.mShadowColor = typedArray.getColor(1, -16777216);
                this.mState.mShadowSize = typedArray.getDimensionPixelSize(2, 0);
                this.mState.mDarkTintColor = typedArray.getColor(3, -16777216);
                final Drawable drawable;
                this.mState.mIntrinsicHeight = drawable.getIntrinsicHeight() + this.mState.mShadowSize * 2;
                this.mState.mIntrinsicWidth = drawable.getIntrinsicWidth() + this.mState.mShadowSize * 2;
                this.mState.mChangingConfigurations = drawable.getChangingConfigurations();
                this.mState.mChildState = drawable.getConstantState();
                typedArray.recycle();
                return;
            }
            final TypedArray typedArray = resources$Theme.obtainStyledAttributes(set, R$styleable.ShadowDrawable, 0, 0);
            continue;
        }
    }
    
    public void setAlpha(final int alpha) {
        this.mPaint.setAlpha(alpha);
        this.invalidateSelf();
    }
    
    public void setColorFilter(final ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
        this.invalidateSelf();
    }
}
