// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import com.android.launcher3.ShortcutInfo;
import com.android.launcher3.CellLayout;
import android.view.View;

final class FolderPagedView$1 implements Runnable
{
    final /* synthetic */ FolderPagedView this$0;
    final /* synthetic */ int val$newRank;
    final /* synthetic */ float val$oldTranslateX;
    final /* synthetic */ View val$v;
    
    FolderPagedView$1(final FolderPagedView this$0, final View val$v, final float val$oldTranslateX, final int val$newRank) {
        this.this$0 = this$0;
        this.val$v = val$v;
        this.val$oldTranslateX = val$oldTranslateX;
        this.val$newRank = val$newRank;
    }
    
    public void run() {
        this.this$0.mPendingAnimations.remove((Object)this.val$v);
        this.val$v.setTranslationX(this.val$oldTranslateX);
        ((CellLayout)this.val$v.getParent().getParent()).removeView(this.val$v);
        this.this$0.addViewForRank(this.val$v, (ShortcutInfo)this.val$v.getTag(), this.val$newRank);
    }
}
