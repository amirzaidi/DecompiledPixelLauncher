// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.View;
import com.android.launcher3.config.FeatureFlags;
import android.view.ViewConfiguration;
import android.view.MotionEvent;
import android.graphics.Canvas;
import android.view.ViewPropertyAnimator;
import android.graphics.Paint$Style;
import com.android.launcher3.util.Themes;
import android.content.res.Resources;
import android.animation.ObjectAnimator;
import android.graphics.Rect;
import android.graphics.Path;
import android.graphics.Paint;
import android.widget.TextView;
import android.util.Property;

final class BaseRecyclerViewFastScrollBar$1 extends Property
{
    BaseRecyclerViewFastScrollBar$1(final Class clazz, final String s) {
        super(clazz, s);
    }
    
    public Integer get(final BaseRecyclerViewFastScrollBar baseRecyclerViewFastScrollBar) {
        return baseRecyclerViewFastScrollBar.mWidth;
    }
    
    public void set(final BaseRecyclerViewFastScrollBar baseRecyclerViewFastScrollBar, final Integer n) {
        baseRecyclerViewFastScrollBar.setTrackWidth(n);
    }
}
