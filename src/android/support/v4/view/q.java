// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view;

import android.os.Bundle;
import android.view.ViewGroup;
import android.support.v4.view.a.a;
import android.view.accessibility.AccessibilityNodeInfo;
import android.support.v4.view.a.b;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.accessibility.AccessibilityEvent;
import android.view.View;
import android.view.View$AccessibilityDelegate;

class q extends View$AccessibilityDelegate
{
    final /* synthetic */ c Wf;
    final /* synthetic */ d Wg;
    
    q(final d wg, final c wf) {
        this.Wg = wg;
        this.Wf = wf;
    }
    
    public boolean dispatchPopulateAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        return this.Wf.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }
    
    public AccessibilityNodeProvider getAccessibilityNodeProvider(final View view) {
        AccessibilityNodeProvider accessibilityNodeProvider = null;
        final b accessibilityNodeProvider2 = this.Wf.getAccessibilityNodeProvider(view);
        if (accessibilityNodeProvider2 != null) {
            accessibilityNodeProvider = (AccessibilityNodeProvider)accessibilityNodeProvider2.afx();
        }
        return accessibilityNodeProvider;
    }
    
    public void onInitializeAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        this.Wf.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }
    
    public void onInitializeAccessibilityNodeInfo(final View view, final AccessibilityNodeInfo accessibilityNodeInfo) {
        this.Wf.onInitializeAccessibilityNodeInfo(view, a.afw(accessibilityNodeInfo));
    }
    
    public void onPopulateAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        this.Wf.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }
    
    public boolean onRequestSendAccessibilityEvent(final ViewGroup viewGroup, final View view, final AccessibilityEvent accessibilityEvent) {
        return this.Wf.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }
    
    public boolean performAccessibilityAction(final View view, final int n, final Bundle bundle) {
        return this.Wf.performAccessibilityAction(view, n, bundle);
    }
    
    public void sendAccessibilityEvent(final View view, final int n) {
        this.Wf.sendAccessibilityEvent(view, n);
    }
    
    public void sendAccessibilityEventUnchecked(final View view, final AccessibilityEvent accessibilityEvent) {
        this.Wf.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }
}
