// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view;

import android.os.Bundle;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.accessibility.AccessibilityEvent;
import android.view.View;
import android.view.View$AccessibilityDelegate;

class q extends View$AccessibilityDelegate
{
    final /* synthetic */ a UF;
    final /* synthetic */ b UG;
    
    q(final b ug, final a uf) {
        this.UG = ug;
        this.UF = uf;
    }
    
    public boolean dispatchPopulateAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        return this.UF.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }
    
    public AccessibilityNodeProvider getAccessibilityNodeProvider(final View view) {
        AccessibilityNodeProvider accessibilityNodeProvider = null;
        final android.support.v4.view.a.b accessibilityNodeProvider2 = this.UF.getAccessibilityNodeProvider(view);
        if (accessibilityNodeProvider2 != null) {
            accessibilityNodeProvider = (AccessibilityNodeProvider)accessibilityNodeProvider2.aev();
        }
        return accessibilityNodeProvider;
    }
    
    public void onInitializeAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        this.UF.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }
    
    public void onInitializeAccessibilityNodeInfo(final View view, final AccessibilityNodeInfo accessibilityNodeInfo) {
        this.UF.onInitializeAccessibilityNodeInfo(view, android.support.v4.view.a.a.aeu(accessibilityNodeInfo));
    }
    
    public void onPopulateAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        this.UF.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }
    
    public boolean onRequestSendAccessibilityEvent(final ViewGroup viewGroup, final View view, final AccessibilityEvent accessibilityEvent) {
        return this.UF.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }
    
    public boolean performAccessibilityAction(final View view, final int n, final Bundle bundle) {
        return this.UF.performAccessibilityAction(view, n, bundle);
    }
    
    public void sendAccessibilityEvent(final View view, final int n) {
        this.UF.sendAccessibilityEvent(view, n);
    }
    
    public void sendAccessibilityEventUnchecked(final View view, final AccessibilityEvent accessibilityEvent) {
        this.UF.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }
}
