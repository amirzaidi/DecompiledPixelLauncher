// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.View;

final class Launcher$12 extends OverviewButtonClickListener
{
    final /* synthetic */ Launcher this$0;
    
    Launcher$12(final Launcher this$0, final int n) {
        this.this$0 = this$0;
        super(n);
    }
    
    public void handleViewClick(final View view) {
        this.this$0.onClickSettingsButton(view);
    }
}
