// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.View;
import android.view.View$AccessibilityDelegate;

class b extends c
{
    public View$AccessibilityDelegate afl(final a a) {
        return new q(this, a);
    }
    
    public android.support.v4.view.a.b afm(final View$AccessibilityDelegate view$AccessibilityDelegate, final View view) {
        final AccessibilityNodeProvider accessibilityNodeProvider = view$AccessibilityDelegate.getAccessibilityNodeProvider(view);
        if (accessibilityNodeProvider == null) {
            return null;
        }
        return new android.support.v4.view.a.b(accessibilityNodeProvider);
    }
    
    public boolean afn(final View$AccessibilityDelegate view$AccessibilityDelegate, final View view, final int n, final Bundle bundle) {
        return view$AccessibilityDelegate.performAccessibilityAction(view, n, bundle);
    }
}
