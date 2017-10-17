// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.widget;

import android.view.View;
import com.android.launcher3.BubbleTextView;
import android.view.ViewGroup;
import android.support.v7.widget.j;

public class WidgetsRowViewHolder extends j
{
    public final ViewGroup cellContainer;
    public final BubbleTextView title;
    
    public WidgetsRowViewHolder(final ViewGroup viewGroup) {
        super((View)viewGroup);
        this.cellContainer = (ViewGroup)viewGroup.findViewById(2131624076);
        this.title = (BubbleTextView)viewGroup.findViewById(2131624074);
    }
}
