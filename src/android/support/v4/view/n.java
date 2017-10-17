// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view;

import android.os.Bundle;
import android.view.View;

class n extends o
{
    public void afK(final View view, int importantForAccessibility) {
        if (importantForAccessibility == 4) {
            importantForAccessibility = 2;
        }
        view.setImportantForAccessibility(importantForAccessibility);
    }
    
    public int afO(final View view) {
        return view.getMinimumHeight();
    }
    
    public int afP(final View view) {
        return view.getImportantForAccessibility();
    }
    
    public boolean afQ(final View view) {
        return view.hasOverlappingRendering();
    }
    
    public void afR(final View view, final Runnable runnable) {
        view.postOnAnimation(runnable);
    }
    
    public void afS(final View view, final Runnable runnable, final long n) {
        view.postOnAnimationDelayed(runnable, n);
    }
    
    public boolean afT(final View view) {
        return view.hasTransientState();
    }
    
    public void afU(final View view) {
        view.postInvalidateOnAnimation();
    }
    
    public int afV(final View view) {
        return view.getMinimumWidth();
    }
    
    public boolean performAccessibilityAction(final View view, final int n, final Bundle bundle) {
        return view.performAccessibilityAction(n, bundle);
    }
}
