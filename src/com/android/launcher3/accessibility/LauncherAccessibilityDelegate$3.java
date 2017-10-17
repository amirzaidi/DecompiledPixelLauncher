// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.accessibility;

import android.content.DialogInterface;
import com.android.launcher3.LauncherAppWidgetInfo;
import android.view.View;
import java.util.ArrayList;
import android.content.DialogInterface$OnClickListener;

final class LauncherAccessibilityDelegate$3 implements DialogInterface$OnClickListener
{
    final /* synthetic */ LauncherAccessibilityDelegate this$0;
    final /* synthetic */ ArrayList val$actions;
    final /* synthetic */ View val$host;
    final /* synthetic */ LauncherAppWidgetInfo val$info;
    
    LauncherAccessibilityDelegate$3(final LauncherAccessibilityDelegate this$0, final ArrayList val$actions, final View val$host, final LauncherAppWidgetInfo val$info) {
        this.this$0 = this$0;
        this.val$actions = val$actions;
        this.val$host = val$host;
        this.val$info = val$info;
    }
    
    public void onClick(final DialogInterface dialogInterface, final int n) {
        this.this$0.performResizeAction(this.val$actions.get(n), this.val$host, this.val$info);
        dialogInterface.dismiss();
    }
}
