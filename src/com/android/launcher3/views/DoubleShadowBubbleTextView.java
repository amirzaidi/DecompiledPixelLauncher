// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.views;

import android.graphics.Region$Op;
import android.support.v4.b.a;
import android.graphics.Color;
import android.widget.TextView;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.BubbleTextView;

public class DoubleShadowBubbleTextView extends BubbleTextView
{
    private final DoubleShadowBubbleTextView$ShadowInfo mShadowInfo;
    
    public DoubleShadowBubbleTextView(final Context context) {
        this(context, null);
    }
    
    public DoubleShadowBubbleTextView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public DoubleShadowBubbleTextView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.mShadowInfo = new DoubleShadowBubbleTextView$ShadowInfo(context, set, n);
        this.setShadowLayer(this.mShadowInfo.ambientShadowBlur, 0.0f, 0.0f, this.mShadowInfo.ambientShadowColor);
    }
    
    public void onDraw(final Canvas canvas) {
        if (this.mShadowInfo.skipDoubleShadow(this)) {
            super.onDraw(canvas);
            return;
        }
        final int alpha = Color.alpha(this.getCurrentTextColor());
        this.getPaint().setShadowLayer(this.mShadowInfo.ambientShadowBlur, 0.0f, 0.0f, a.asb(this.mShadowInfo.ambientShadowColor, alpha));
        this.drawWithoutBadge(canvas);
        canvas.save(2);
        canvas.clipRect((float)this.getScrollX(), (float)(this.getScrollY() + this.getExtendedPaddingTop()), (float)(this.getScrollX() + this.getWidth()), (float)(this.getScrollY() + this.getHeight()), Region$Op.INTERSECT);
        this.getPaint().setShadowLayer(this.mShadowInfo.keyShadowBlur, 0.0f, this.mShadowInfo.keyShadowOffset, a.asb(this.mShadowInfo.keyShadowColor, alpha));
        this.drawWithoutBadge(canvas);
        canvas.restore();
        this.drawBadgeIfNecessary(canvas);
    }
}
