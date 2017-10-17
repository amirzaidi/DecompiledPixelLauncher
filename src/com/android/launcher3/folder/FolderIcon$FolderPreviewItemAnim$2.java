// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class FolderIcon$FolderPreviewItemAnim$2 extends AnimatorListenerAdapter
{
    final /* synthetic */ FolderIcon$FolderPreviewItemAnim this$1;
    final /* synthetic */ Runnable val$onCompleteRunnable;
    final /* synthetic */ FolderIcon$PreviewItemDrawingParams val$params;
    
    FolderIcon$FolderPreviewItemAnim$2(final FolderIcon$FolderPreviewItemAnim this$1, final Runnable val$onCompleteRunnable, final FolderIcon$PreviewItemDrawingParams val$params) {
        this.this$1 = this$1;
        this.val$onCompleteRunnable = val$onCompleteRunnable;
        this.val$params = val$params;
    }
    
    public void onAnimationEnd(final Animator animator) {
        if (this.val$onCompleteRunnable != null) {
            this.val$onCompleteRunnable.run();
        }
        this.val$params.anim = null;
    }
    
    public void onAnimationStart(final Animator animator) {
    }
}
