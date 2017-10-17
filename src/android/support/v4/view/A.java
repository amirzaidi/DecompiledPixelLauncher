// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view;

import android.view.View;
import android.view.ViewParent;

public class a
{
    private ViewParent VQ;
    private ViewParent VR;
    private boolean VS;
    private int[] VT;
    private final View mView;
    
    public a(final View mView) {
        this.mView = mView;
    }
    
    private ViewParent agm(final int n) {
        switch (n) {
            default: {
                return null;
            }
            case 0: {
                return this.VQ;
            }
            case 1: {
                return this.VR;
            }
        }
    }
    
    private void agn(final int n, final ViewParent viewParent) {
        switch (n) {
            case 0: {
                this.VQ = viewParent;
                break;
            }
            case 1: {
                this.VR = viewParent;
                break;
            }
        }
    }
    
    public boolean dispatchNestedFling(final float n, final float n2, final boolean b) {
        if (this.isNestedScrollingEnabled()) {
            final ViewParent agm = this.agm(0);
            if (agm != null) {
                return D.ahG(agm, this.mView, n, n2, b);
            }
        }
        return false;
    }
    
    public boolean dispatchNestedPreFling(final float n, final float n2) {
        if (this.isNestedScrollingEnabled()) {
            final ViewParent agm = this.agm(0);
            if (agm != null) {
                return D.ahB(agm, this.mView, n, n2);
            }
        }
        return false;
    }
    
    public boolean dispatchNestedPreScroll(final int n, final int n2, final int[] array, final int[] array2) {
        return this.dispatchNestedPreScroll(n, n2, array, array2, 0);
    }
    
    public boolean dispatchNestedPreScroll(final int n, final int n2, final int[] array, final int[] array2, final int n3) {
        final int n4 = 1;
        if (this.isNestedScrollingEnabled()) {
            final ViewParent agm = this.agm(n3);
            if (agm == null) {
                return false;
            }
            if (n != 0 || n2 != 0) {
                int n5;
                int n6;
                if (array2 == null) {
                    n5 = 0;
                    n6 = 0;
                }
                else {
                    this.mView.getLocationInWindow(array2);
                    final int n7 = array2[0];
                    n5 = array2[n4];
                    n6 = n7;
                }
                int[] vt;
                if (array != null) {
                    vt = array;
                }
                else {
                    if (this.VT == null) {
                        this.VT = new int[2];
                    }
                    vt = this.VT;
                }
                vt[n4] = (vt[0] = 0);
                D.ahD(agm, this.mView, n, n2, vt, n3);
                if (array2 != null) {
                    this.mView.getLocationInWindow(array2);
                    array2[0] -= n6;
                    array2[n4] -= n5;
                }
                boolean b;
                if (vt[0] == 0 && vt[n4] == 0) {
                    b = false;
                }
                else {
                    b = (n4 != 0);
                }
                return b;
            }
            if (array2 != null) {
                array2[n4] = (array2[0] = 0);
            }
        }
        return false;
    }
    
    public boolean dispatchNestedScroll(final int n, final int n2, final int n3, final int n4, final int[] array) {
        return this.dispatchNestedScroll(n, n2, n3, n4, array, 0);
    }
    
    public boolean dispatchNestedScroll(final int n, final int n2, final int n3, final int n4, final int[] array, final int n5) {
        if (this.isNestedScrollingEnabled()) {
            final ViewParent agm = this.agm(n5);
            if (agm == null) {
                return false;
            }
            if (n != 0 || n2 != 0 || n3 != 0 || n4 != 0) {
                int n6;
                int n7;
                if (array == null) {
                    n6 = 0;
                    n7 = 0;
                }
                else {
                    this.mView.getLocationInWindow(array);
                    final int n8 = array[0];
                    n6 = array[1];
                    n7 = n8;
                }
                D.ahE(agm, this.mView, n, n2, n3, n4, n5);
                if (array != null) {
                    this.mView.getLocationInWindow(array);
                    array[0] -= n7;
                    array[1] -= n6;
                }
                return true;
            }
            if (array != null) {
                array[1] = (array[0] = 0);
            }
        }
        return false;
    }
    
    public boolean hasNestedScrollingParent() {
        return this.hasNestedScrollingParent(0);
    }
    
    public boolean hasNestedScrollingParent(final int n) {
        return this.agm(n) != null;
    }
    
    public boolean isNestedScrollingEnabled() {
        return this.VS;
    }
    
    public void setNestedScrollingEnabled(final boolean vs) {
        if (this.VS) {
            f.agt(this.mView);
        }
        this.VS = vs;
    }
    
    public boolean startNestedScroll(final int n) {
        return this.startNestedScroll(n, 0);
    }
    
    public boolean startNestedScroll(final int n, final int n2) {
        final boolean b = true;
        if (!this.hasNestedScrollingParent(n2)) {
            if (this.isNestedScrollingEnabled()) {
                ViewParent viewParent = this.mView.getParent();
                View mView = this.mView;
                while (viewParent != null) {
                    if (D.ahI(viewParent, mView, this.mView, n, n2)) {
                        this.agn(n2, viewParent);
                        D.ahC(viewParent, mView, this.mView, n, n2);
                        return b;
                    }
                    if (viewParent instanceof View) {
                        mView = (View)viewParent;
                    }
                    viewParent = viewParent.getParent();
                }
            }
            return false;
        }
        return b;
    }
    
    public void stopNestedScroll() {
        this.stopNestedScroll(0);
    }
    
    public void stopNestedScroll(final int n) {
        final ViewParent agm = this.agm(n);
        if (agm != null) {
            D.ahF(agm, this.mView, n);
            this.agn(n, null);
        }
    }
}
