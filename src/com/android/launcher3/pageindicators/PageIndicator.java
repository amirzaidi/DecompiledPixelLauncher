// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.pageindicators;

import android.graphics.drawable.Drawable;
import com.android.launcher3.dynamicui.ExtractedColors;
import android.graphics.drawable.Drawable$Callback;
import android.util.AttributeSet;
import android.content.Context;
import android.widget.FrameLayout;

public abstract class PageIndicator extends FrameLayout
{
    private CaretDrawable mCaretDrawable;
    protected int mNumPages;
    
    public PageIndicator(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.mNumPages = 1;
        this.setWillNotDraw(false);
    }
    
    public void addMarker() {
        ++this.mNumPages;
        this.onPageCountChanged();
    }
    
    public CaretDrawable getCaretDrawable() {
        return this.mCaretDrawable;
    }
    
    protected void onPageCountChanged() {
    }
    
    public void removeMarker() {
        --this.mNumPages;
        this.onPageCountChanged();
    }
    
    public void setActiveMarker(final int n) {
    }
    
    public void setCaretDrawable(final CaretDrawable mCaretDrawable) {
        if (this.mCaretDrawable != null) {
            this.mCaretDrawable.setCallback((Drawable$Callback)null);
        }
        this.mCaretDrawable = mCaretDrawable;
        if (this.mCaretDrawable != null) {
            this.mCaretDrawable.setCallback((Drawable$Callback)this);
        }
    }
    
    public void setMarkersCount(final int mNumPages) {
        this.mNumPages = mNumPages;
        this.onPageCountChanged();
    }
    
    public void setScroll(final int n, final int n2) {
    }
    
    public void setShouldAutoHide(final boolean b) {
    }
    
    public void updateColor(final ExtractedColors extractedColors) {
    }
    
    protected boolean verifyDrawable(final Drawable drawable) {
        boolean b = true;
        if (super.verifyDrawable(drawable) && drawable != this.getCaretDrawable()) {
            b = false;
        }
        return b;
    }
}
