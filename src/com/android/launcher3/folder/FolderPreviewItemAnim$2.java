// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class FolderPreviewItemAnim$2 extends AnimatorListenerAdapter
{
    final /* synthetic */ FolderPreviewItemAnim this$0;
    final /* synthetic */ Runnable val$onCompleteRunnable;
    final /* synthetic */ PreviewItemDrawingParams val$params;
    
    FolderPreviewItemAnim$2(final FolderPreviewItemAnim this$0, final Runnable val$onCompleteRunnable, final PreviewItemDrawingParams val$params) {
        this.this$0 = this$0;
        this.val$onCompleteRunnable = val$onCompleteRunnable;
        this.val$params = val$params;
    }
    
    public void onAnimationEnd(final Animator animator) {
        if (this.val$onCompleteRunnable != null) {
            this.val$onCompleteRunnable.run();
        }
        this.val$params.anim = null;
    }
}
