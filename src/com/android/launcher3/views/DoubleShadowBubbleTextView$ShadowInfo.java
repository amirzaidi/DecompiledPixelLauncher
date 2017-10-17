// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.views;

import android.support.v4.b.a;
import android.graphics.Color;
import android.widget.TextView;
import android.content.res.TypedArray;
import com.android.launcher3.R$styleable;
import android.util.AttributeSet;
import android.content.Context;

public class DoubleShadowBubbleTextView$ShadowInfo
{
    public final float ambientShadowBlur;
    public final int ambientShadowColor;
    public final float keyShadowBlur;
    public final int keyShadowColor;
    public final float keyShadowOffset;
    
    public DoubleShadowBubbleTextView$ShadowInfo(final Context context, final AttributeSet set, final int n) {
        final TypedArray obtainStyledAttributes = context.obtainStyledAttributes(set, R$styleable.ShadowInfo, n, 0);
        this.ambientShadowBlur = obtainStyledAttributes.getDimension(1, 0.0f);
        this.ambientShadowColor = obtainStyledAttributes.getColor(0, 0);
        this.keyShadowBlur = obtainStyledAttributes.getDimension(3, 0.0f);
        this.keyShadowOffset = obtainStyledAttributes.getDimension(4, 0.0f);
        this.keyShadowColor = obtainStyledAttributes.getColor(2, 0);
        obtainStyledAttributes.recycle();
    }
    
    public boolean skipDoubleShadow(final TextView textView) {
        final boolean b = true;
        final int alpha = Color.alpha(textView.getCurrentTextColor());
        final int alpha2 = Color.alpha(this.keyShadowColor);
        final int alpha3 = Color.alpha(this.ambientShadowColor);
        if (alpha == 0 || (alpha2 == 0 && alpha3 == 0)) {
            textView.getPaint().clearShadowLayer();
            return b;
        }
        if (alpha3 > 0) {
            textView.getPaint().setShadowLayer(this.ambientShadowBlur, 0.0f, 0.0f, a.asb(this.ambientShadowColor, alpha));
            return b;
        }
        if (alpha2 > 0) {
            textView.getPaint().setShadowLayer(this.keyShadowBlur, 0.0f, this.keyShadowOffset, a.asb(this.keyShadowColor, alpha));
            return b;
        }
        return false;
    }
}
