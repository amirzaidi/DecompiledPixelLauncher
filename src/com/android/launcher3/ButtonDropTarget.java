// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.ViewGroup;
import android.graphics.ColorFilter;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.dragndrop.DragLayer;
import android.view.View;
import android.graphics.Rect;
import android.animation.ObjectAnimator;
import android.animation.Animator;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.animation.FloatArrayEvaluator;
import com.android.launcher3.util.Themes;
import android.content.res.TypedArray;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.ColorMatrix;
import android.animation.AnimatorSet;
import android.view.View$OnClickListener;
import com.android.launcher3.dragndrop.DragController$DragListener;
import android.widget.TextView;

public abstract class ButtonDropTarget extends TextView implements DropTarget, DragController$DragListener, View$OnClickListener
{
    private boolean mAccessibleDrag;
    protected boolean mActive;
    private int mBottomDragPadding;
    private AnimatorSet mCurrentColorAnim;
    ColorMatrix mCurrentFilter;
    private final int mDragDistanceThreshold;
    protected Drawable mDrawable;
    protected DropTargetBar mDropTargetBar;
    ColorMatrix mDstFilter;
    private final boolean mHideParentOnDisable;
    protected int mHoverColor;
    protected final Launcher mLauncher;
    protected ColorStateList mOriginalTextColor;
    ColorMatrix mSrcFilter;
    
    public ButtonDropTarget(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public ButtonDropTarget(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.mHoverColor = 0;
        this.mLauncher = Launcher.getLauncher(context);
        final Resources resources = this.getResources();
        this.mBottomDragPadding = resources.getDimensionPixelSize(2131427419);
        final TypedArray obtainStyledAttributes = context.obtainStyledAttributes(set, R$styleable.ButtonDropTarget, n, 0);
        this.mHideParentOnDisable = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        this.mDragDistanceThreshold = resources.getDimensionPixelSize(2131427422);
    }
    
    private void animateTextColor(final int n) {
        final int n2 = 1;
        if (this.mCurrentColorAnim != null) {
            this.mCurrentColorAnim.cancel();
        }
        (this.mCurrentColorAnim = new AnimatorSet()).setDuration((long)120);
        if (this.mSrcFilter == null) {
            this.mSrcFilter = new ColorMatrix();
            this.mDstFilter = new ColorMatrix();
            this.mCurrentFilter = new ColorMatrix();
        }
        Themes.setColorScaleOnMatrix(this.getTextColor(), this.mSrcFilter);
        Themes.setColorScaleOnMatrix(n, this.mDstFilter);
        final FloatArrayEvaluator floatArrayEvaluator = new FloatArrayEvaluator(this.mCurrentFilter.getArray());
        final Object[] array = { this.mSrcFilter.getArray(), null };
        array[n2] = this.mDstFilter.getArray();
        final ValueAnimator ofObject = ValueAnimator.ofObject((TypeEvaluator)floatArrayEvaluator, array);
        ofObject.addUpdateListener((ValueAnimator$AnimatorUpdateListener)new ButtonDropTarget$1(this));
        this.mCurrentColorAnim.play((Animator)ofObject);
        final AnimatorSet mCurrentColorAnim = this.mCurrentColorAnim;
        final int[] array2 = new int[n2];
        array2[0] = n;
        mCurrentColorAnim.play((Animator)ObjectAnimator.ofArgb((Object)this, "textColor", array2));
        this.mCurrentColorAnim.start();
    }
    
    public final boolean acceptDrop(final DropTarget$DragObject dropTarget$DragObject) {
        return this.supportsDrop(dropTarget$DragObject.dragSource, dropTarget$DragObject.dragInfo);
    }
    
    public abstract void completeDrop(final DropTarget$DragObject p0);
    
    public void getHitRectRelativeToDragLayer(final Rect rect) {
        super.getHitRect(rect);
        rect.bottom += this.mBottomDragPadding;
        final int[] array = new int[2];
        this.mLauncher.getDragLayer().getDescendantCoordRelativeToSelf((View)this, array);
        rect.offsetTo(array[0], array[1]);
    }
    
    public Rect getIconRect(final DropTarget$DragObject dropTarget$DragObject) {
        final int measuredWidth = dropTarget$DragObject.dragView.getMeasuredWidth();
        final int measuredHeight = dropTarget$DragObject.dragView.getMeasuredHeight();
        final int intrinsicWidth = this.mDrawable.getIntrinsicWidth();
        final int intrinsicHeight = this.mDrawable.getIntrinsicHeight();
        final DragLayer dragLayer = this.mLauncher.getDragLayer();
        final Rect rect = new Rect();
        dragLayer.getViewRectRelativeToSelf((View)this, rect);
        int n;
        int n2;
        if (Utilities.isRtl(this.getResources())) {
            n = rect.right - this.getPaddingRight();
            n2 = n - intrinsicWidth;
        }
        else {
            n2 = rect.left + this.getPaddingLeft();
            n = n2 + intrinsicWidth;
        }
        final int n3 = rect.top + (this.getMeasuredHeight() - intrinsicHeight) / 2;
        rect.set(n2, n3, n, n3 + intrinsicHeight);
        rect.offset(-(measuredWidth - intrinsicWidth) / 2, -(measuredHeight - intrinsicHeight) / 2);
        return rect;
    }
    
    public int getTextColor() {
        return this.getTextColors().getDefaultColor();
    }
    
    public boolean isDropEnabled() {
        boolean b = true;
        if (this.mActive) {
            if (this.mAccessibleDrag && this.mLauncher.getDragController().getDistanceDragged() < this.mDragDistanceThreshold) {
                b = false;
            }
        }
        else {
            b = false;
        }
        return b;
    }
    
    public void onClick(final View view) {
        this.mLauncher.getAccessibilityDelegate().handleAccessibleDrop((View)this, null, null);
    }
    
    public void onDragEnd() {
        this.mActive = false;
        this.setOnClickListener((View$OnClickListener)null);
    }
    
    public final void onDragEnter(final DropTarget$DragObject dropTarget$DragObject) {
        dropTarget$DragObject.dragView.setColor(this.mHoverColor);
        this.animateTextColor(this.mHoverColor);
        if (dropTarget$DragObject.stateAnnouncer != null) {
            dropTarget$DragObject.stateAnnouncer.cancel();
        }
        this.sendAccessibilityEvent(4);
    }
    
    public final void onDragExit(final DropTarget$DragObject dropTarget$DragObject) {
        if (!dropTarget$DragObject.dragComplete) {
            dropTarget$DragObject.dragView.setColor(0);
            this.resetHoverColor();
        }
        else {
            dropTarget$DragObject.dragView.setColor(this.mHoverColor);
        }
    }
    
    public void onDragOver(final DropTarget$DragObject dropTarget$DragObject) {
    }
    
    public void onDragStart(final DropTarget$DragObject dropTarget$DragObject, final DragOptions dragOptions) {
        this.mActive = this.supportsDrop(dropTarget$DragObject.dragSource, dropTarget$DragObject.dragInfo);
        this.mDrawable.setColorFilter((ColorFilter)null);
        if (this.mCurrentColorAnim != null) {
            this.mCurrentColorAnim.cancel();
            this.mCurrentColorAnim = null;
        }
        this.setTextColor(this.mOriginalTextColor);
        Object o;
        if (this.mHideParentOnDisable) {
            o = this.getParent();
        }
        else {
            o = this;
        }
        int visibility;
        if (this.mActive) {
            visibility = 0;
        }
        else {
            visibility = 8;
        }
        ((View)o).setVisibility(visibility);
        this.mAccessibleDrag = dragOptions.isAccessibleDrag;
        Object onClickListener;
        if (this.mAccessibleDrag) {
            onClickListener = this;
        }
        else {
            onClickListener = null;
        }
        this.setOnClickListener((View$OnClickListener)onClickListener);
    }
    
    public void onDrop(final DropTarget$DragObject dropTarget$DragObject) {
        final DragLayer dragLayer = this.mLauncher.getDragLayer();
        final Rect rect = new Rect();
        dragLayer.getViewRectRelativeToSelf((View)dropTarget$DragObject.dragView, rect);
        final Rect iconRect = this.getIconRect(dropTarget$DragObject);
        final float n = iconRect.width() / rect.width();
        this.mDropTargetBar.deferOnDragEnd();
        dragLayer.animateView(dropTarget$DragObject.dragView, rect, iconRect, n, 1.0f, 1.0f, 0.1f, 0.1f, 285, (Interpolator)new DecelerateInterpolator(2.0f), (Interpolator)new LinearInterpolator(), new ButtonDropTarget$2(this, dropTarget$DragObject), 0, null);
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mOriginalTextColor = this.getTextColors();
    }
    
    public void prepareAccessibilityDrop() {
    }
    
    protected void resetHoverColor() {
        this.animateTextColor(this.mOriginalTextColor.getDefaultColor());
    }
    
    protected void setDrawable(final int n) {
        this.setCompoundDrawablesRelativeWithIntrinsicBounds(n, 0, 0, 0);
        this.mDrawable = this.getCompoundDrawablesRelative()[0];
    }
    
    public void setDropTargetBar(final DropTargetBar mDropTargetBar) {
        this.mDropTargetBar = mDropTargetBar;
    }
    
    protected abstract boolean supportsDrop(final DragSource p0, final ItemInfo p1);
}
