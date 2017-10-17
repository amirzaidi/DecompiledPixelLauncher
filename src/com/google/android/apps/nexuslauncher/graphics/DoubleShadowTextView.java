// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.graphics;

import android.graphics.Canvas;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.views.DoubleShadowBubbleTextView$ShadowInfo;
import android.widget.TextView;

public class DoubleShadowTextView extends TextView
{
    private final DoubleShadowBubbleTextView$ShadowInfo mShadowInfo;
    
    public DoubleShadowTextView(final Context context) {
        this(context, null);
    }
    
    public DoubleShadowTextView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public DoubleShadowTextView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.mShadowInfo = new DoubleShadowBubbleTextView$ShadowInfo(context, set, n);
        this.setShadowLayer(Math.max(this.mShadowInfo.keyShadowBlur + this.mShadowInfo.keyShadowOffset, this.mShadowInfo.ambientShadowBlur), 0.0f, 0.0f, this.mShadowInfo.keyShadowColor);
    }
    
    protected void onDraw(final Canvas canvas) {
        if (this.mShadowInfo.skipDoubleShadow(this)) {
            super.onDraw(canvas);
            return;
        }
        this.getPaint().setShadowLayer(this.mShadowInfo.ambientShadowBlur, 0.0f, 0.0f, this.mShadowInfo.ambientShadowColor);
        super.onDraw(canvas);
        this.getPaint().setShadowLayer(this.mShadowInfo.keyShadowBlur, 0.0f, this.mShadowInfo.keyShadowOffset, this.mShadowInfo.keyShadowColor);
        super.onDraw(canvas);
    }
}
