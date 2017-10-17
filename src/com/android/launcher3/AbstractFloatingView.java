// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.MotionEvent;
import android.view.View;
import com.android.launcher3.dragndrop.DragLayer;
import android.util.AttributeSet;
import android.content.Context;
import android.widget.LinearLayout;

public abstract class AbstractFloatingView extends LinearLayout
{
    protected boolean mIsOpen;
    
    public AbstractFloatingView(final Context context, final AttributeSet set) {
        super(context, set);
    }
    
    public AbstractFloatingView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
    }
    
    public static void closeAllOpenViews(final Launcher launcher) {
        closeAllOpenViews(launcher, true);
    }
    
    public static void closeAllOpenViews(final Launcher launcher, final boolean b) {
        final DragLayer dragLayer = launcher.getDragLayer();
        for (int i = dragLayer.getChildCount() - 1; i >= 0; --i) {
            final View child = dragLayer.getChildAt(i);
            if (child instanceof AbstractFloatingView) {
                ((AbstractFloatingView)child).close(b);
            }
        }
    }
    
    public static void closeOpenContainer(final Launcher launcher, final int n) {
        final AbstractFloatingView openView = getOpenView(launcher, n);
        if (openView != null) {
            openView.close(true);
        }
    }
    
    protected static AbstractFloatingView getOpenView(final Launcher launcher, final int n) {
        final DragLayer dragLayer = launcher.getDragLayer();
        for (int i = dragLayer.getChildCount() - 1; i >= 0; --i) {
            final View child = dragLayer.getChildAt(i);
            if (child instanceof AbstractFloatingView) {
                final AbstractFloatingView abstractFloatingView = (AbstractFloatingView)child;
                if (abstractFloatingView.isOfType(n) && abstractFloatingView.isOpen()) {
                    return abstractFloatingView;
                }
            }
        }
        return null;
    }
    
    public static AbstractFloatingView getTopOpenView(final Launcher launcher) {
        return getOpenView(launcher, 7);
    }
    
    public final void close(final boolean b) {
        this.handleClose((Utilities.isPowerSaverOn(this.getContext()) ^ true) & b);
        Launcher.getLauncher(this.getContext()).getUserEventDispatcher().resetElapsedContainerMillis();
    }
    
    public ExtendedEditText getActiveTextView() {
        return null;
    }
    
    public View getExtendedTouchView() {
        return null;
    }
    
    public abstract int getLogContainerType();
    
    protected abstract void handleClose(final boolean p0);
    
    protected abstract boolean isOfType(final int p0);
    
    public final boolean isOpen() {
        return this.mIsOpen;
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        return true;
    }
    
    protected void onWidgetsBound() {
    }
}
