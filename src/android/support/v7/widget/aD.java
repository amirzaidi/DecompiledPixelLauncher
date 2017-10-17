// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.os.Bundle;
import android.support.v4.view.a.a;
import android.view.View;
import android.support.v4.view.c;

public class ad extends c
{
    final z Tn;
    
    public ad(final z tn) {
        this.Tn = tn;
    }
    
    public void onInitializeAccessibilityNodeInfo(final View view, final a a) {
        super.onInitializeAccessibilityNodeInfo(view, a);
        if (!this.Tn.shouldIgnore() && this.Tn.mRecyclerView.getLayoutManager() != null) {
            this.Tn.mRecyclerView.getLayoutManager().onInitializeAccessibilityNodeInfoForItem(view, a);
        }
    }
    
    public boolean performAccessibilityAction(final View view, final int n, final Bundle bundle) {
        return super.performAccessibilityAction(view, n, bundle) || (!this.Tn.shouldIgnore() && this.Tn.mRecyclerView.getLayoutManager() != null && this.Tn.mRecyclerView.getLayoutManager().performAccessibilityActionForItem(view, n, bundle));
    }
}
