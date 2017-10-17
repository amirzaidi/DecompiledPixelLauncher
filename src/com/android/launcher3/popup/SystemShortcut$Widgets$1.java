// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.popup;

import android.view.ViewGroup;
import com.android.launcher3.widget.WidgetsBottomSheet;
import com.android.launcher3.AbstractFloatingView;
import android.view.View;
import com.android.launcher3.Launcher;
import com.android.launcher3.ItemInfo;
import android.view.View$OnClickListener;

final class SystemShortcut$Widgets$1 implements View$OnClickListener
{
    final /* synthetic */ SystemShortcut$Widgets this$1;
    final /* synthetic */ ItemInfo val$itemInfo;
    final /* synthetic */ Launcher val$launcher;
    
    SystemShortcut$Widgets$1(final SystemShortcut$Widgets this$1, final Launcher val$launcher, final ItemInfo val$itemInfo) {
        this.this$1 = this$1;
        this.val$launcher = val$launcher;
        this.val$itemInfo = val$itemInfo;
    }
    
    public void onClick(final View view) {
        AbstractFloatingView.closeAllOpenViews(this.val$launcher);
        ((WidgetsBottomSheet)this.val$launcher.getLayoutInflater().inflate(2130968628, (ViewGroup)this.val$launcher.getDragLayer(), false)).populateAndShow(this.val$itemInfo);
    }
}
