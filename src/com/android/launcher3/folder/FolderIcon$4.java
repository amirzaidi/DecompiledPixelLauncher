// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import android.animation.Animator;
import com.android.launcher3.CellLayout;
import android.animation.AnimatorListenerAdapter;

final class FolderIcon$4 extends AnimatorListenerAdapter
{
    final /* synthetic */ FolderIcon this$0;
    final /* synthetic */ CellLayout val$cl;
    final /* synthetic */ PreviewImageView val$previewImage;
    
    FolderIcon$4(final FolderIcon this$0, final CellLayout val$cl, final PreviewImageView val$previewImage) {
        this.this$0 = this$0;
        this.val$cl = val$cl;
        this.val$previewImage = val$previewImage;
    }
    
    public void onAnimationEnd(final Animator animator) {
        if (this.val$cl != null) {
            this.val$previewImage.removeFromParent();
            this.this$0.setVisibility(0);
        }
    }
}
