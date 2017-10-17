// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeProvider;
import android.support.v4.view.a.b;
import android.view.View;
import android.view.View$AccessibilityDelegate;

class d extends e
{
    public View$AccessibilityDelegate agp(final c c) {
        return new q(this, c);
    }
    
    public b agq(final View$AccessibilityDelegate view$AccessibilityDelegate, final View view) {
        final AccessibilityNodeProvider accessibilityNodeProvider = view$AccessibilityDelegate.getAccessibilityNodeProvider(view);
        if (accessibilityNodeProvider == null) {
            return null;
        }
        return new b(accessibilityNodeProvider);
    }
    
    public boolean agr(final View$AccessibilityDelegate view$AccessibilityDelegate, final View view, final int n, final Bundle bundle) {
        return view$AccessibilityDelegate.performAccessibilityAction(view, n, bundle);
    }
}
