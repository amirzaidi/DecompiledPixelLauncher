// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view;

import android.view.View;
import android.view.ViewParent;

class w
{
    public void ahi(final ViewParent viewParent, final View view, final View view2, final int n) {
        if (viewParent instanceof C) {
            ((C)viewParent).onNestedScrollAccepted(view, view2, n);
        }
    }
    
    public void ahj(final ViewParent viewParent, final View view, final int n, final int n2, final int n3, final int n4) {
        if (viewParent instanceof C) {
            ((C)viewParent).onNestedScroll(view, n, n2, n3, n4);
        }
    }
    
    public boolean ahk(final ViewParent viewParent, final View view, final float n, final float n2, final boolean b) {
        return viewParent instanceof C && ((C)viewParent).onNestedFling(view, n, n2, b);
    }
    
    public boolean ahl(final ViewParent viewParent, final View view, final float n, final float n2) {
        return viewParent instanceof C && ((C)viewParent).onNestedPreFling(view, n, n2);
    }
    
    public void ahm(final ViewParent viewParent, final View view, final int n, final int n2, final int[] array) {
        if (viewParent instanceof C) {
            ((C)viewParent).onNestedPreScroll(view, n, n2, array);
        }
    }
    
    public boolean ahn(final ViewParent viewParent, final View view, final View view2, final int n) {
        return viewParent instanceof C && ((C)viewParent).onStartNestedScroll(view, view2, n);
    }
    
    public void aho(final ViewParent viewParent, final View view) {
        if (viewParent instanceof C) {
            ((C)viewParent).onStopNestedScroll(view);
        }
    }
}
