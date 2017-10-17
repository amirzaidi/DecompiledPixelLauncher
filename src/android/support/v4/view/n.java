// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view;

import android.os.Bundle;
import android.view.View;

class n extends o
{
    public void agT(final View view, int importantForAccessibility) {
        if (importantForAccessibility == 4) {
            importantForAccessibility = 2;
        }
        view.setImportantForAccessibility(importantForAccessibility);
    }
    
    public int agX(final View view) {
        return view.getMinimumHeight();
    }
    
    public int agY(final View view) {
        return view.getImportantForAccessibility();
    }
    
    public boolean agZ(final View view) {
        return view.hasOverlappingRendering();
    }
    
    public void aha(final View view, final Runnable runnable) {
        view.postOnAnimation(runnable);
    }
    
    public void ahb(final View view, final Runnable runnable, final long n) {
        view.postOnAnimationDelayed(runnable, n);
    }
    
    public boolean ahc(final View view) {
        return view.hasTransientState();
    }
    
    public void ahd(final View view) {
        view.postInvalidateOnAnimation();
    }
    
    public int ahe(final View view) {
        return view.getMinimumWidth();
    }
    
    public boolean performAccessibilityAction(final View view, final int n, final Bundle bundle) {
        return view.performAccessibilityAction(n, bundle);
    }
}
