// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.graphics.drawable.Drawable;
import com.android.launcher3.graphics.PreloadIconDrawable;
import android.view.View;
import java.util.HashSet;

final class Workspace$19 implements Workspace$ItemOperator
{
    final /* synthetic */ Workspace this$0;
    final /* synthetic */ HashSet val$updates;
    
    Workspace$19(final Workspace this$0, final HashSet val$updates) {
        this.this$0 = this$0;
        this.val$updates = val$updates;
    }
    
    public boolean evaluate(final ItemInfo itemInfo, final View view) {
        if (itemInfo instanceof ShortcutInfo && view instanceof BubbleTextView && this.val$updates.contains(itemInfo)) {
            final ShortcutInfo shortcutInfo = (ShortcutInfo)itemInfo;
            final BubbleTextView bubbleTextView = (BubbleTextView)view;
            final Drawable icon = bubbleTextView.getIcon();
            bubbleTextView.applyFromShortcutInfo(shortcutInfo, shortcutInfo.isPromise() != (icon instanceof PreloadIconDrawable && ((PreloadIconDrawable)icon).hasNotCompleted()));
        }
        return false;
    }
}
