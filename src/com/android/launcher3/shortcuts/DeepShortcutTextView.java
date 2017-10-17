// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.shortcuts;

import android.view.MotionEvent;
import com.android.launcher3.Utilities;
import android.graphics.drawable.Drawable;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.content.Context;
import android.graphics.Rect;
import com.android.launcher3.BubbleTextView;

public class DeepShortcutTextView extends BubbleTextView
{
    private final Rect mDragHandleBounds;
    private final int mDragHandleWidth;
    private boolean mShouldPerformClick;
    
    public DeepShortcutTextView(final Context context) {
        this(context, null, 0);
    }
    
    public DeepShortcutTextView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public DeepShortcutTextView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.mDragHandleBounds = new Rect();
        this.mShouldPerformClick = true;
        final Resources resources = this.getResources();
        this.mDragHandleWidth = resources.getDimensionPixelSize(2131427450) / 2 + (resources.getDimensionPixelSize(2131427453) + resources.getDimensionPixelSize(2131427451));
    }
    
    protected void applyCompoundDrawables(final Drawable drawable) {
    }
    
    protected void onMeasure(final int n, final int n2) {
        super.onMeasure(n, n2);
        this.mDragHandleBounds.set(0, 0, this.mDragHandleWidth, this.getMeasuredHeight());
        if (!Utilities.isRtl(this.getResources())) {
            this.mDragHandleBounds.offset(this.getMeasuredWidth() - this.mDragHandleBounds.width(), 0);
        }
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.mShouldPerformClick = (this.mDragHandleBounds.contains((int)motionEvent.getX(), (int)motionEvent.getY()) ^ true);
        }
        return super.onTouchEvent(motionEvent);
    }
    
    public boolean performClick() {
        return this.mShouldPerformClick && super.performClick();
    }
}
