// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.os.Bundle;
import android.view.accessibility.AccessibilityEvent;
import android.view.View;
import android.support.v4.view.a;

public class z extends a
{
    final a Py;
    final RecyclerView mRecyclerView;
    
    public z(final RecyclerView mRecyclerView) {
        this.mRecyclerView = mRecyclerView;
        this.Py = new ad(this);
    }
    
    public a Yo() {
        return this.Py;
    }
    
    public void onInitializeAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        accessibilityEvent.setClassName((CharSequence)RecyclerView.class.getName());
        if (view instanceof RecyclerView && !this.shouldIgnore()) {
            final RecyclerView recyclerView = (RecyclerView)view;
            if (recyclerView.getLayoutManager() != null) {
                recyclerView.getLayoutManager().onInitializeAccessibilityEvent(accessibilityEvent);
            }
        }
    }
    
    public void onInitializeAccessibilityNodeInfo(final View view, final android.support.v4.view.a.a a) {
        super.onInitializeAccessibilityNodeInfo(view, a);
        a.aeb(RecyclerView.class.getName());
        if (!this.shouldIgnore() && this.mRecyclerView.getLayoutManager() != null) {
            this.mRecyclerView.getLayoutManager().onInitializeAccessibilityNodeInfo(a);
        }
    }
    
    public boolean performAccessibilityAction(final View view, final int n, final Bundle bundle) {
        return super.performAccessibilityAction(view, n, bundle) || (!this.shouldIgnore() && this.mRecyclerView.getLayoutManager() != null && this.mRecyclerView.getLayoutManager().performAccessibilityAction(n, bundle));
    }
    
    boolean shouldIgnore() {
        return this.mRecyclerView.hasPendingAdapterUpdates();
    }
}
