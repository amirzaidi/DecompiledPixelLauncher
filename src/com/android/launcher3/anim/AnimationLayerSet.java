// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.anim;

import java.util.Iterator;
import android.graphics.Paint;
import java.util.Map;
import android.animation.Animator;
import android.view.View;
import android.util.ArrayMap;
import android.animation.AnimatorListenerAdapter;

public class AnimationLayerSet extends AnimatorListenerAdapter
{
    private final ArrayMap mViewsToLayerTypeMap;
    
    public AnimationLayerSet() {
        this.mViewsToLayerTypeMap = new ArrayMap();
    }
    
    public AnimationLayerSet(final View view) {
        this.mViewsToLayerTypeMap = new ArrayMap(1);
        this.addView(view);
    }
    
    public void addView(final View view) {
        this.mViewsToLayerTypeMap.put((Object)view, (Object)view.getLayerType());
    }
    
    public void onAnimationEnd(final Animator animator) {
        for (final Map.Entry<View, V> entry : this.mViewsToLayerTypeMap.entrySet()) {
            entry.getKey().setLayerType((int)entry.getValue(), (Paint)null);
        }
    }
    
    public void onAnimationStart(final Animator animator) {
        for (final Map.Entry<View, V> entry : this.mViewsToLayerTypeMap.entrySet()) {
            final View view = entry.getKey();
            entry.setValue((V)view.getLayerType());
            view.setLayerType(2, (Paint)null);
            if (view.isAttachedToWindow() && view.getVisibility() == 0) {
                view.buildLayer();
            }
        }
    }
}
