// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.os.Bundle;
import android.view.View;
import android.support.v4.view.a;

public class ad extends a
{
    final z RE;
    
    public ad(final z re) {
        this.RE = re;
    }
    
    public void onInitializeAccessibilityNodeInfo(final View view, final android.support.v4.view.a.a a) {
        super.onInitializeAccessibilityNodeInfo(view, a);
        if (!this.RE.shouldIgnore() && this.RE.mRecyclerView.getLayoutManager() != null) {
            this.RE.mRecyclerView.getLayoutManager().onInitializeAccessibilityNodeInfoForItem(view, a);
        }
    }
    
    public boolean performAccessibilityAction(final View view, final int n, final Bundle bundle) {
        return super.performAccessibilityAction(view, n, bundle) || (!this.RE.shouldIgnore() && this.RE.mRecyclerView.getLayoutManager() != null && this.RE.mRecyclerView.getLayoutManager().performAccessibilityActionForItem(view, n, bundle));
    }
}
