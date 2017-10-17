// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

final class LauncherAppWidgetHostView$1 implements Runnable
{
    final /* synthetic */ LauncherAppWidgetHostView this$0;
    
    LauncherAppWidgetHostView$1(final LauncherAppWidgetHostView this$0) {
        this.this$0 = this$0;
    }
    
    public void run() {
        this.this$0.switchToErrorView();
    }
}
