// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import android.view.View;
import android.util.Property;

final class FolderAnimationManager$1 extends Property
{
    FolderAnimationManager$1(final Class clazz, final String s) {
        super(clazz, s);
    }
    
    public Float get(final View view) {
        return view.getScaleX();
    }
    
    public void set(final View view, final Float n) {
        view.setScaleX((float)n);
        view.setScaleY((float)n);
    }
}
