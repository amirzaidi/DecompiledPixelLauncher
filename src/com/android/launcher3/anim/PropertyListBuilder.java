// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.anim;

import android.view.View;
import android.animation.PropertyValuesHolder;
import java.util.ArrayList;

public class PropertyListBuilder
{
    private final ArrayList mProperties;
    
    public PropertyListBuilder() {
        this.mProperties = new ArrayList();
    }
    
    public PropertyValuesHolder[] build() {
        return this.mProperties.toArray(new PropertyValuesHolder[this.mProperties.size()]);
    }
    
    public PropertyListBuilder scale(final float n) {
        return this.scaleX(n).scaleY(n);
    }
    
    public PropertyListBuilder scaleX(final float n) {
        this.mProperties.add(PropertyValuesHolder.ofFloat(View.SCALE_X, new float[] { n }));
        return this;
    }
    
    public PropertyListBuilder scaleY(final float n) {
        this.mProperties.add(PropertyValuesHolder.ofFloat(View.SCALE_Y, new float[] { n }));
        return this;
    }
    
    public PropertyListBuilder translationX(final float n) {
        this.mProperties.add(PropertyValuesHolder.ofFloat(View.TRANSLATION_X, new float[] { n }));
        return this;
    }
    
    public PropertyListBuilder translationY(final float n) {
        this.mProperties.add(PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, new float[] { n }));
        return this;
    }
}
