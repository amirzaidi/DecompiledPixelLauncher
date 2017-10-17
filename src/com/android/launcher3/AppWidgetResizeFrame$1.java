// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

final class AppWidgetResizeFrame$1 implements Runnable
{
    final /* synthetic */ AppWidgetResizeFrame this$0;
    
    AppWidgetResizeFrame$1(final AppWidgetResizeFrame this$0) {
        this.this$0 = this$0;
    }
    
    public void run() {
        this.this$0.snapToWidget(true);
    }
}
