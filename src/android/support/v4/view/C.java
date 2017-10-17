// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view;

import android.os.Bundle;
import android.view.ViewGroup;
import android.support.v4.view.a.a;
import android.support.v4.view.a.b;
import android.view.accessibility.AccessibilityEvent;
import android.view.View;
import android.os.Build$VERSION;
import android.view.View$AccessibilityDelegate;

public class c
{
    private static final View$AccessibilityDelegate DEFAULT_DELEGATE;
    private static final e IMPL;
    final View$AccessibilityDelegate mBridge;
    
    static {
        if (Build$VERSION.SDK_INT < 16) {
            IMPL = new e();
        }
        else {
            IMPL = new d();
        }
        DEFAULT_DELEGATE = new View$AccessibilityDelegate();
    }
    
    public c() {
        this.mBridge = c.IMPL.agp(this);
    }
    
    public boolean dispatchPopulateAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        return c.DEFAULT_DELEGATE.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }
    
    public b getAccessibilityNodeProvider(final View view) {
        return c.IMPL.agq(c.DEFAULT_DELEGATE, view);
    }
    
    View$AccessibilityDelegate getBridge() {
        return this.mBridge;
    }
    
    public void onInitializeAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        c.DEFAULT_DELEGATE.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }
    
    public void onInitializeAccessibilityNodeInfo(final View view, final a a) {
        c.DEFAULT_DELEGATE.onInitializeAccessibilityNodeInfo(view, a.aeW());
    }
    
    public void onPopulateAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        c.DEFAULT_DELEGATE.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }
    
    public boolean onRequestSendAccessibilityEvent(final ViewGroup viewGroup, final View view, final AccessibilityEvent accessibilityEvent) {
        return c.DEFAULT_DELEGATE.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }
    
    public boolean performAccessibilityAction(final View view, final int n, final Bundle bundle) {
        return c.IMPL.agr(c.DEFAULT_DELEGATE, view, n, bundle);
    }
    
    public void sendAccessibilityEvent(final View view, final int n) {
        c.DEFAULT_DELEGATE.sendAccessibilityEvent(view, n);
    }
    
    public void sendAccessibilityEventUnchecked(final View view, final AccessibilityEvent accessibilityEvent) {
        c.DEFAULT_DELEGATE.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }
}
