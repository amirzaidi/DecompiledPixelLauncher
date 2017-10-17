// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

final class Launcher$29 implements Runnable
{
    final /* synthetic */ Launcher this$0;
    final /* synthetic */ LauncherAppWidgetInfo val$item;
    
    Launcher$29(final Launcher this$0, final LauncherAppWidgetInfo val$item) {
        this.this$0 = this$0;
        this.val$item = val$item;
    }
    
    public void run() {
        this.this$0.bindAppWidget(this.val$item);
    }
}
