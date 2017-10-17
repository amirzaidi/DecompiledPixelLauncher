// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

final class Workspace$7 implements Runnable
{
    final /* synthetic */ Workspace this$0;
    final /* synthetic */ CellLayout val$cellLayout;
    final /* synthetic */ LauncherAppWidgetHostView val$hostView;
    
    Workspace$7(final Workspace this$0, final LauncherAppWidgetHostView val$hostView, final CellLayout val$cellLayout) {
        this.this$0 = this$0;
        this.val$hostView = val$hostView;
        this.val$cellLayout = val$cellLayout;
    }
    
    public void run() {
        if (!this.this$0.isPageInTransition()) {
            this.this$0.mLauncher.getDragLayer().addResizeFrame(this.val$hostView, this.val$cellLayout);
        }
    }
}
