// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view;

import android.os.Bundle;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.View;
import android.os.Build$VERSION;
import android.view.View$AccessibilityDelegate;

public class a
{
    private static final View$AccessibilityDelegate DEFAULT_DELEGATE;
    private static final c IMPL;
    final View$AccessibilityDelegate mBridge;
    
    static {
        if (Build$VERSION.SDK_INT < 16) {
            IMPL = new c();
        }
        else {
            IMPL = new b();
        }
        DEFAULT_DELEGATE = new View$AccessibilityDelegate();
    }
    
    public a() {
        this.mBridge = a.IMPL.afl(this);
    }
    
    public boolean dispatchPopulateAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        return a.DEFAULT_DELEGATE.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }
    
    public android.support.v4.view.a.b getAccessibilityNodeProvider(final View view) {
        return a.IMPL.afm(a.DEFAULT_DELEGATE, view);
    }
    
    View$AccessibilityDelegate getBridge() {
        return this.mBridge;
    }
    
    public void onInitializeAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        a.DEFAULT_DELEGATE.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }
    
    public void onInitializeAccessibilityNodeInfo(final View view, final android.support.v4.view.a.a a) {
        a.DEFAULT_DELEGATE.onInitializeAccessibilityNodeInfo(view, a.adU());
    }
    
    public void onPopulateAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        a.DEFAULT_DELEGATE.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }
    
    public boolean onRequestSendAccessibilityEvent(final ViewGroup viewGroup, final View view, final AccessibilityEvent accessibilityEvent) {
        return a.DEFAULT_DELEGATE.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }
    
    public boolean performAccessibilityAction(final View view, final int n, final Bundle bundle) {
        return a.IMPL.afn(a.DEFAULT_DELEGATE, view, n, bundle);
    }
    
    public void sendAccessibilityEvent(final View view, final int n) {
        a.DEFAULT_DELEGATE.sendAccessibilityEvent(view, n);
    }
    
    public void sendAccessibilityEventUnchecked(final View view, final AccessibilityEvent accessibilityEvent) {
        a.DEFAULT_DELEGATE.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }
}
