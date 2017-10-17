// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.popup.PopupContainerWithArrow;
import java.util.Set;

final class Launcher$13 implements Runnable
{
    final /* synthetic */ Launcher this$0;
    final /* synthetic */ Set val$updatedBadges;
    
    Launcher$13(final Launcher this$0, final Set val$updatedBadges) {
        this.this$0 = this$0;
        this.val$updatedBadges = val$updatedBadges;
    }
    
    public void run() {
        this.this$0.mWorkspace.updateIconBadges(this.val$updatedBadges);
        this.this$0.mAppsView.updateIconBadges(this.val$updatedBadges);
        final PopupContainerWithArrow open = PopupContainerWithArrow.getOpen(this.this$0);
        if (open != null) {
            open.updateNotificationHeader(this.val$updatedBadges);
        }
    }
}
