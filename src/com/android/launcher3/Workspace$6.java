// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.View$OnClickListener;
import android.view.ViewGroup;
import com.android.launcher3.accessibility.AccessibleDragListenerAdapter;

final class Workspace$6 extends AccessibleDragListenerAdapter
{
    final /* synthetic */ Workspace this$0;
    
    Workspace$6(final Workspace this$0, final ViewGroup viewGroup, final int n) {
        this.this$0 = this$0;
        super(viewGroup, n);
    }
    
    protected void enableAccessibleDrag(final boolean b) {
        super.enableAccessibleDrag(b);
        this.setEnableForLayout(this.this$0.mLauncher.getHotseat().getLayout(), b);
        final Workspace this$0 = this.this$0;
        Object mLauncher;
        if (b) {
            mLauncher = null;
        }
        else {
            mLauncher = this.this$0.mLauncher;
        }
        this$0.setOnClickListener((View$OnClickListener)mLauncher);
    }
}
