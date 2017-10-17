// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import android.view.View;
import com.android.launcher3.Utilities;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class Folder$9 extends AnimatorListenerAdapter
{
    final /* synthetic */ Folder this$0;
    final /* synthetic */ Runnable val$onCompleteRunnable;
    
    Folder$9(final Folder this$0, final Runnable val$onCompleteRunnable) {
        this.this$0 = this$0;
        this.val$onCompleteRunnable = val$onCompleteRunnable;
    }
    
    public void onAnimationEnd(final Animator animator) {
        this.this$0.mState = 2;
        this.val$onCompleteRunnable.run();
        this.this$0.mContent.setFocusOnFirstChild();
    }
    
    public void onAnimationStart(final Animator animator) {
        Utilities.sendCustomAccessibilityEvent((View)this.this$0, 32, this.this$0.mContent.getAccessibilityDescription());
        this.this$0.mState = 1;
    }
}
