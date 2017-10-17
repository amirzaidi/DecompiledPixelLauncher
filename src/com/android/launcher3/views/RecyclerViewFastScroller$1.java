// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.views;

import android.graphics.drawable.Drawable;
import com.android.launcher3.graphics.FastScrollThumbDrawable;
import android.support.v7.widget.m;
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
import android.view.View;
import android.util.Property;

final class RecyclerViewFastScroller$1 extends Property
{
    RecyclerViewFastScroller$1(final Class clazz, final String s) {
        super(clazz, s);
    }
    
    public Integer get(final RecyclerViewFastScroller recyclerViewFastScroller) {
        return recyclerViewFastScroller.mWidth;
    }
    
    public void set(final RecyclerViewFastScroller recyclerViewFastScroller, final Integer n) {
        recyclerViewFastScroller.setTrackWidth(n);
    }
}
