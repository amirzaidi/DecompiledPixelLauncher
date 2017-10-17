// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.views;

import android.view.ViewGroup;
import android.view.View;
import android.util.AttributeSet;
import android.content.Context;
import android.preference.Preference;

public class ButtonPreference extends Preference
{
    private boolean mWidgetFrameVisible;
    
    public ButtonPreference(final Context context) {
        super(context);
        this.mWidgetFrameVisible = false;
    }
    
    public ButtonPreference(final Context context, final AttributeSet set) {
        super(context, set);
        this.mWidgetFrameVisible = false;
    }
    
    public ButtonPreference(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.mWidgetFrameVisible = false;
    }
    
    public ButtonPreference(final Context context, final AttributeSet set, final int n, final int n2) {
        super(context, set, n, n2);
        this.mWidgetFrameVisible = false;
    }
    
    protected void onBindView(final View view) {
        super.onBindView(view);
        final ViewGroup viewGroup = (ViewGroup)view.findViewById(16908312);
        if (viewGroup != null) {
            int visibility;
            if (this.mWidgetFrameVisible) {
                visibility = 0;
            }
            else {
                visibility = 8;
            }
            viewGroup.setVisibility(visibility);
        }
    }
    
    public void setWidgetFrameVisible(final boolean mWidgetFrameVisible) {
        if (this.mWidgetFrameVisible != mWidgetFrameVisible) {
            this.mWidgetFrameVisible = mWidgetFrameVisible;
            this.notifyChanged();
        }
    }
}
