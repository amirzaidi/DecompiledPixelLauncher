// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.pageindicators;

import android.graphics.Rect;
import android.graphics.Canvas;
import android.view.View$OnFocusChangeListener;
import android.view.View$OnLongClickListener;
import android.view.View$OnClickListener;
import com.android.launcher3.Launcher;
import android.util.AttributeSet;
import android.content.Context;

public class PageIndicatorCaretLandscape extends PageIndicator
{
    public PageIndicatorCaretLandscape(final Context context) {
        this(context, null);
    }
    
    public PageIndicatorCaretLandscape(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public PageIndicatorCaretLandscape(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        final int dimensionPixelSize = context.getResources().getDimensionPixelSize(2131427387);
        final CaretDrawable caretDrawable = new CaretDrawable(context);
        caretDrawable.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
        this.setCaretDrawable(caretDrawable);
        final Launcher launcher = Launcher.getLauncher(context);
        this.setOnTouchListener(launcher.getHapticFeedbackTouchListener());
        this.setOnClickListener((View$OnClickListener)launcher);
        this.setOnLongClickListener((View$OnLongClickListener)launcher);
        this.setOnFocusChangeListener((View$OnFocusChangeListener)launcher.mFocusHandler);
    }
    
    protected void onDraw(final Canvas canvas) {
        final Rect bounds = this.getCaretDrawable().getBounds();
        final int save = canvas.save();
        canvas.translate((float)(this.getWidth() - bounds.width()), (float)(this.getHeight() - bounds.height()));
        this.getCaretDrawable().draw(canvas);
        canvas.restoreToCount(save);
    }
}
