// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.keyboard;

import android.support.v7.widget.e;
import android.support.v7.widget.RecyclerView;
import android.graphics.Canvas;
import android.view.View$OnFocusChangeListener;
import android.view.View;
import android.support.v7.widget.o;

public class FocusedItemDecorator extends o
{
    private FocusIndicatorHelper mHelper;
    
    public FocusedItemDecorator(final View view) {
        this.mHelper = new FocusedItemDecorator$1(this, view);
    }
    
    public View$OnFocusChangeListener getFocusListener() {
        return (View$OnFocusChangeListener)this.mHelper;
    }
    
    public void onDraw(final Canvas canvas, final RecyclerView recyclerView, final e e) {
        this.mHelper.draw(canvas);
    }
}
