// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import android.graphics.Rect;
import com.android.launcher3.anim.RoundedRectRevealOutlineProvider;

final class FolderAnimationManager$2 extends RoundedRectRevealOutlineProvider
{
    final /* synthetic */ FolderAnimationManager this$0;
    
    FolderAnimationManager$2(final FolderAnimationManager this$0, final float n, final float n2, final Rect rect, final Rect rect2) {
        this.this$0 = this$0;
        super(n, n2, rect, rect2);
    }
    
    public boolean shouldRemoveElevationDuringAnimation() {
        return true;
    }
}
