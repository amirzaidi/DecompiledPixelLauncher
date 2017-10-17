// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

final class LauncherModel$LoaderTask$6 implements Runnable
{
    final /* synthetic */ LauncherModel$LoaderTask this$1;
    final /* synthetic */ LauncherModel$Callbacks val$oldCallbacks;
    final /* synthetic */ LauncherAppWidgetInfo val$widget;
    
    LauncherModel$LoaderTask$6(final LauncherModel$LoaderTask this$1, final LauncherModel$Callbacks val$oldCallbacks, final LauncherAppWidgetInfo val$widget) {
        this.this$1 = this$1;
        this.val$oldCallbacks = val$oldCallbacks;
        this.val$widget = val$widget;
    }
    
    public void run() {
        final LauncherModel$Callbacks tryGetCallbacks = this.this$1.tryGetCallbacks(this.val$oldCallbacks);
        if (tryGetCallbacks != null) {
            tryGetCallbacks.bindAppWidget(this.val$widget);
        }
    }
}
