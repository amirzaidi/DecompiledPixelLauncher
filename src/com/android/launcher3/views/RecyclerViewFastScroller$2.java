// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.views;

import android.graphics.drawable.Drawable;
import com.android.launcher3.graphics.FastScrollThumbDrawable;
import android.graphics.Canvas;
import com.android.launcher3.config.FeatureFlags;
import android.view.MotionEvent;
import com.android.launcher3.Utilities;
import android.view.ViewPropertyAnimator;
import android.content.res.TypedArray;
import android.content.res.Resources;
import com.android.launcher3.R$styleable;
import android.graphics.Paint$Style;
import com.android.launcher3.util.Themes;
import android.util.AttributeSet;
import android.content.Context;
import android.animation.ObjectAnimator;
import android.graphics.Paint;
import com.android.launcher3.BaseRecyclerView;
import android.widget.TextView;
import android.view.ViewConfiguration;
import android.util.Property;
import android.view.View;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.m;

final class RecyclerViewFastScroller$2 extends m
{
    final /* synthetic */ RecyclerViewFastScroller this$0;
    
    RecyclerViewFastScroller$2(final RecyclerViewFastScroller this$0) {
        this.this$0 = this$0;
    }
    
    public void onScrolled(final RecyclerView recyclerView, final int n, final int n2) {
        this.this$0.mDy = n2;
        this.this$0.mRv.onUpdateScrollbar(n2);
    }
}
