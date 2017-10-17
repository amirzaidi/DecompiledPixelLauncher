// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.keyboard;

import com.android.launcher3.PagedView;
import android.graphics.Rect;
import android.view.View;

public class ViewGroupFocusHelper extends FocusIndicatorHelper
{
    private final View mContainer;
    
    public ViewGroupFocusHelper(final View mContainer) {
        super(mContainer);
        this.mContainer = mContainer;
    }
    
    private void computeLocationRelativeToContainer(final View view, final Rect rect) {
        final View view2 = (View)view.getParent();
        rect.left += view.getLeft();
        rect.top += view.getTop();
        if (view2 != this.mContainer) {
            if (view2 instanceof PagedView) {
                final PagedView pagedView = (PagedView)view2;
                rect.left -= pagedView.getScrollForPage(pagedView.indexOfChild(view));
            }
            this.computeLocationRelativeToContainer(view2, rect);
        }
    }
    
    public void viewToRect(final View view, final Rect rect) {
        final float n = 2.0f;
        final float n2 = 1.0f;
        rect.left = 0;
        rect.top = 0;
        this.computeLocationRelativeToContainer(view, rect);
        rect.left += (int)((n2 - view.getScaleX()) * view.getWidth() / n);
        rect.top += (int)((n2 - view.getScaleY()) * view.getHeight() / n);
        rect.right = rect.left + (int)(view.getScaleX() * view.getWidth());
        rect.bottom = rect.top + (int)(view.getScaleY() * view.getHeight());
    }
}
