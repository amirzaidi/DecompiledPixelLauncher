// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

import android.graphics.drawable.Drawable;
import android.support.v7.widget.t;
import com.android.launcher3.DeviceProfile;
import android.support.v7.widget.q;
import android.view.View$MeasureSpec;
import android.graphics.drawable.Drawable$Callback;
import com.android.launcher3.graphics.DrawableFactory;
import android.view.MotionEvent;
import android.graphics.Canvas;
import com.android.launcher3.Launcher;
import java.util.List;
import com.android.launcher3.BubbleTextView;
import android.view.View;
import android.view.ViewGroup;
import android.content.res.Resources;
import android.support.v7.widget.n;
import android.util.AttributeSet;
import android.content.Context;
import android.util.SparseIntArray;
import com.android.launcher3.BaseRecyclerView;
import android.support.v7.widget.h;

final class AllAppsRecyclerView$1 extends h
{
    final /* synthetic */ AllAppsRecyclerView this$0;
    
    AllAppsRecyclerView$1(final AllAppsRecyclerView this$0) {
        this.this$0 = this$0;
    }
    
    public void onChanged() {
        this.this$0.mCachedScrollPositions.clear();
    }
}
