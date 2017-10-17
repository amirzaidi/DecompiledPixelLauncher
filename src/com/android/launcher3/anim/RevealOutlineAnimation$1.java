// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.anim;

import android.view.ViewOutlineProvider;
import android.animation.Animator;
import android.view.View;
import android.animation.AnimatorListenerAdapter;

final class RevealOutlineAnimation$1 extends AnimatorListenerAdapter
{
    private boolean mWasCanceled;
    final /* synthetic */ RevealOutlineAnimation this$0;
    final /* synthetic */ float val$elevation;
    final /* synthetic */ View val$revealView;
    
    RevealOutlineAnimation$1(final RevealOutlineAnimation this$0, final View val$revealView, final float val$elevation) {
        this.this$0 = this$0;
        this.val$revealView = val$revealView;
        this.val$elevation = val$elevation;
        this.mWasCanceled = false;
    }
    
    public void onAnimationCancel(final Animator animator) {
        this.mWasCanceled = true;
    }
    
    public void onAnimationEnd(final Animator animator) {
        if (!this.mWasCanceled) {
            this.val$revealView.setOutlineProvider(ViewOutlineProvider.BACKGROUND);
            this.val$revealView.setClipToOutline(false);
            if (this.this$0.shouldRemoveElevationDuringAnimation()) {
                this.val$revealView.setTranslationZ(0.0f);
            }
        }
    }
    
    public void onAnimationStart(final Animator animator) {
        this.val$revealView.setOutlineProvider((ViewOutlineProvider)this.this$0);
        this.val$revealView.setClipToOutline(true);
        if (this.this$0.shouldRemoveElevationDuringAnimation()) {
            this.val$revealView.setTranslationZ(-this.val$elevation);
        }
    }
}
