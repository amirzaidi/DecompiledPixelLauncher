// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import android.graphics.Canvas;
import android.content.res.TypedArray;
import com.android.launcher3.R$styleable;
import android.util.AttributeSet;
import android.content.Context;
import android.widget.TextClock;

public class DoubleShadowTextClock extends TextClock
{
    private final int A;
    private final float B;
    private final int C;
    private final float D;
    private final float z;
    
    public DoubleShadowTextClock(final Context context) {
        this(context, null);
    }
    
    public DoubleShadowTextClock(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public DoubleShadowTextClock(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        final TypedArray obtainStyledAttributes = context.obtainStyledAttributes(set, R$styleable.DoubleShadowTextClock, n, 0);
        this.z = obtainStyledAttributes.getDimension(2, 0.0f);
        this.B = obtainStyledAttributes.getDimension(3, 0.0f);
        this.D = obtainStyledAttributes.getDimension(4, 0.0f);
        this.A = obtainStyledAttributes.getColor(0, 0);
        this.C = obtainStyledAttributes.getColor(1, 0);
        obtainStyledAttributes.recycle();
        this.setShadowLayer(Math.max(this.B + this.D, this.z), 0.0f, 0.0f, this.C);
    }
    
    public void F(final CharSequence charSequence) {
        this.setFormat24Hour(charSequence);
        this.setFormat12Hour(charSequence);
    }
    
    protected void onDraw(final Canvas canvas) {
        this.getPaint().setShadowLayer(this.B, 0.0f, this.D, this.C);
        super.onDraw(canvas);
        this.getPaint().setShadowLayer(this.z, 0.0f, 0.0f, this.A);
        super.onDraw(canvas);
    }
}
