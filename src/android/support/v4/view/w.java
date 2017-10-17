// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view;

import android.view.View;
import android.view.ViewParent;

class w
{
    public void afZ(final ViewParent viewParent, final View view, final View view2, final int n) {
        if (viewParent instanceof B) {
            ((B)viewParent).onNestedScrollAccepted(view, view2, n);
        }
    }
    
    public void aga(final ViewParent viewParent, final View view, final int n, final int n2, final int n3, final int n4) {
        if (viewParent instanceof B) {
            ((B)viewParent).onNestedScroll(view, n, n2, n3, n4);
        }
    }
    
    public boolean agb(final ViewParent viewParent, final View view, final float n, final float n2, final boolean b) {
        return viewParent instanceof B && ((B)viewParent).onNestedFling(view, n, n2, b);
    }
    
    public boolean agc(final ViewParent viewParent, final View view, final float n, final float n2) {
        return viewParent instanceof B && ((B)viewParent).onNestedPreFling(view, n, n2);
    }
    
    public void agd(final ViewParent viewParent, final View view, final int n, final int n2, final int[] array) {
        if (viewParent instanceof B) {
            ((B)viewParent).onNestedPreScroll(view, n, n2, array);
        }
    }
    
    public boolean age(final ViewParent viewParent, final View view, final View view2, final int n) {
        return viewParent instanceof B && ((B)viewParent).onStartNestedScroll(view, view2, n);
    }
    
    public void agf(final ViewParent viewParent, final View view) {
        if (viewParent instanceof B) {
            ((B)viewParent).onStopNestedScroll(view);
        }
    }
}
