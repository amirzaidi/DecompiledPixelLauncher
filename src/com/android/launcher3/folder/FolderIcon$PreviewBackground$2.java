// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class FolderIcon$PreviewBackground$2 extends AnimatorListenerAdapter
{
    final /* synthetic */ FolderIcon$PreviewBackground this$1;
    final /* synthetic */ Runnable val$onEnd;
    final /* synthetic */ Runnable val$onStart;
    
    FolderIcon$PreviewBackground$2(final FolderIcon$PreviewBackground this$1, final Runnable val$onStart, final Runnable val$onEnd) {
        this.this$1 = this$1;
        this.val$onStart = val$onStart;
        this.val$onEnd = val$onEnd;
    }
    
    public void onAnimationEnd(final Animator animator) {
        if (this.val$onEnd != null) {
            this.val$onEnd.run();
        }
        this.this$1.mScaleAnimator = null;
    }
    
    public void onAnimationStart(final Animator animator) {
        if (this.val$onStart != null) {
            this.val$onStart.run();
        }
    }
}
