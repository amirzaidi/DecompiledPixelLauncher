// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.ViewTreeObserver$OnDrawListener;

final class Launcher$15 implements ViewTreeObserver$OnDrawListener
{
    private boolean mStarted;
    final /* synthetic */ Launcher this$0;
    
    Launcher$15(final Launcher this$0) {
        this.this$0 = this$0;
        this.mStarted = false;
    }
    
    public void onDraw() {
        if (this.mStarted) {
            return;
        }
        this.mStarted = true;
        this.this$0.mWorkspace.postDelayed(this.this$0.mBuildLayersRunnable, 500L);
        this.this$0.mWorkspace.post((Runnable)new Launcher$15$1(this, (ViewTreeObserver$OnDrawListener)this));
    }
}
