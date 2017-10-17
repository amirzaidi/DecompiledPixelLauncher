// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.discovery;

import android.graphics.drawable.ClipDrawable;
import android.graphics.Canvas;
import android.content.res.Resources$Theme;
import android.util.AttributeSet;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;

public class RatingView extends View
{
    private final int mColorGray;
    private final int mColorHighlight;
    private final Drawable mStarDrawable;
    private float rating;
    
    public RatingView(final Context context) {
        this(context, null);
    }
    
    public RatingView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public RatingView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.mStarDrawable = this.getResources().getDrawable(2130837572, (Resources$Theme)null);
        this.mColorGray = 503316480;
        this.mColorHighlight = -1979711488;
    }
    
    private void drawStars(final Canvas canvas, final float n, final int n2) {
        final int n3 = this.getLayoutParams().width / 5;
        final int n4 = (int)(n3 * 0.9f);
        final int n5 = n3 - n4;
        final int n6 = (int)n;
        final float n7 = n - n6;
        for (int i = 0; i < n6; ++i) {
            final int n8 = i * n3 + n5;
            final Drawable mutate = this.mStarDrawable.getConstantState().newDrawable().mutate();
            mutate.setTint(n2);
            mutate.setBounds(n8, n5, n8 + n4, n5 + n4);
            mutate.draw(canvas);
        }
        if (n7 > 0.0f) {
            final int n9 = n6 * n3 + n5;
            final ClipDrawable clipDrawable = new ClipDrawable(this.mStarDrawable, 3, 1);
            clipDrawable.setTint(n2);
            clipDrawable.setLevel((int)(10000.0f * n7));
            clipDrawable.setBounds(n9, n5, n9 + n4, n4 + n5);
            clipDrawable.draw(canvas);
        }
    }
    
    protected void onDraw(final Canvas canvas) {
        this.drawStars(canvas, 5.0f, this.mColorGray);
        this.drawStars(canvas, this.rating, this.mColorHighlight);
    }
    
    public void setRating(final float n) {
        this.rating = Math.min(Math.max(n, 0.0f), 5.0f);
    }
}
