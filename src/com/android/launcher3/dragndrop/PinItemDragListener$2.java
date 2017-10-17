// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import com.android.launcher3.widget.WidgetAddFlowHandler;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import com.android.launcher3.widget.PendingAddWidgetInfo;

final class PinItemDragListener$2 extends PendingAddWidgetInfo
{
    final /* synthetic */ PinItemDragListener this$0;
    final /* synthetic */ PinWidgetFlowHandler val$flowHandler;
    
    PinItemDragListener$2(final PinItemDragListener this$0, final LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo, final PinWidgetFlowHandler val$flowHandler) {
        this.this$0 = this$0;
        this.val$flowHandler = val$flowHandler;
        super(launcherAppWidgetProviderInfo);
    }
    
    public WidgetAddFlowHandler getHandler() {
        return this.val$flowHandler;
    }
}
