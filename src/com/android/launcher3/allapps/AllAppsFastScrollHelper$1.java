// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

import java.util.Iterator;
import android.support.v7.widget.j;
import java.util.List;
import java.util.HashSet;

final class AllAppsFastScrollHelper$1 implements Runnable
{
    final /* synthetic */ AllAppsFastScrollHelper this$0;
    
    AllAppsFastScrollHelper$1(final AllAppsFastScrollHelper this$0) {
        this.this$0 = this$0;
    }
    
    public void run() {
        if (this.this$0.mFastScrollFrameIndex < this.this$0.mFastScrollFrames.length) {
            this.this$0.mRv.scrollBy(0, this.this$0.mFastScrollFrames[this.this$0.mFastScrollFrameIndex]);
            final AllAppsFastScrollHelper this$0 = this.this$0;
            ++this$0.mFastScrollFrameIndex;
            this.this$0.mRv.postOnAnimation(this.this$0.mSmoothSnapNextFrameRunnable);
        }
    }
}
