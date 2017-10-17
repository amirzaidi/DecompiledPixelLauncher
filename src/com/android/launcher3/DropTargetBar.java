// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.dragndrop.DragOptions;
import android.view.ViewGroup;
import com.android.launcher3.dragndrop.DragController;
import android.view.View;
import android.util.AttributeSet;
import android.content.Context;
import android.view.animation.AccelerateInterpolator;
import android.view.ViewPropertyAnimator;
import android.animation.TimeInterpolator;
import com.android.launcher3.dragndrop.DragController$DragListener;
import android.widget.LinearLayout;

public class DropTargetBar extends LinearLayout implements DragController$DragListener
{
    protected static final TimeInterpolator DEFAULT_INTERPOLATOR;
    private ViewPropertyAnimator mCurrentAnimation;
    protected boolean mDeferOnDragEnd;
    private final Runnable mFadeAnimationEndRunnable;
    protected boolean mVisible;
    
    static {
        DEFAULT_INTERPOLATOR = (TimeInterpolator)new AccelerateInterpolator();
    }
    
    public DropTargetBar(final Context context, final AttributeSet set) {
        super(context, set);
        this.mFadeAnimationEndRunnable = new DropTargetBar$1(this);
        this.mVisible = false;
    }
    
    public DropTargetBar(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.mFadeAnimationEndRunnable = new DropTargetBar$1(this);
        this.mVisible = false;
    }
    
    private void animateToVisibility(final boolean mVisible) {
        if (this.mVisible != mVisible) {
            this.mVisible = mVisible;
            if (this.mCurrentAnimation != null) {
                this.mCurrentAnimation.cancel();
                this.mCurrentAnimation = null;
            }
            boolean b;
            if (this.mVisible) {
                b = true;
            }
            else {
                b = false;
            }
            final float n = (float)(b ? 1 : 0);
            if (Float.compare(this.getAlpha(), n) != 0) {
                this.setVisibility(0);
                this.mCurrentAnimation = this.animate().alpha(n).setInterpolator(DropTargetBar.DEFAULT_INTERPOLATOR).setDuration(175L).withEndAction(this.mFadeAnimationEndRunnable);
            }
        }
    }
    
    private void setupButtonDropTarget(final View view, final DragController dragController) {
        if (view instanceof ButtonDropTarget) {
            final ButtonDropTarget buttonDropTarget = (ButtonDropTarget)view;
            buttonDropTarget.setDropTargetBar(this);
            dragController.addDragListener(buttonDropTarget);
            dragController.addDropTarget(buttonDropTarget);
        }
        else if (view instanceof ViewGroup) {
            final ViewGroup viewGroup = (ViewGroup)view;
            for (int i = viewGroup.getChildCount() - 1; i >= 0; --i) {
                this.setupButtonDropTarget(viewGroup.getChildAt(i), dragController);
            }
        }
    }
    
    protected void deferOnDragEnd() {
        this.mDeferOnDragEnd = true;
    }
    
    public void onDragEnd() {
        if (!this.mDeferOnDragEnd) {
            this.animateToVisibility(false);
        }
        else {
            this.mDeferOnDragEnd = false;
        }
    }
    
    public void onDragStart(final DropTarget$DragObject dropTarget$DragObject, final DragOptions dragOptions) {
        this.animateToVisibility(true);
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.setAlpha(0.0f);
    }
    
    public void setup(final DragController dragController) {
        dragController.addDragListener(this);
        this.setupButtonDropTarget((View)this, dragController);
    }
}
