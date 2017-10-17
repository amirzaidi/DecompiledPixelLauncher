// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

import java.util.Iterator;
import android.support.v7.widget.j;
import java.util.List;
import java.util.HashSet;

final class AllAppsFastScrollHelper$2 implements Runnable
{
    final /* synthetic */ AllAppsFastScrollHelper this$0;
    
    AllAppsFastScrollHelper$2(final AllAppsFastScrollHelper this$0) {
        this.this$0 = this$0;
    }
    
    public void run() {
        final boolean b = true;
        this.this$0.mCurrentFastScrollSection = this.this$0.mTargetFastScrollSection;
        this.this$0.mHasFastScrollTouchSettled = b;
        this.this$0.mHasFastScrollTouchSettledAtLeastOnce = b;
        this.this$0.updateTrackedViewsFastScrollFocusState();
    }
}
