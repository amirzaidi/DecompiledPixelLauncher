// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.KeyEvent;
import android.view.DragEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.util.AttributeSet;
import android.content.Context;
import android.widget.EditText;

public class ExtendedEditText extends EditText
{
    private ExtendedEditText$OnBackKeyListener mBackKeyListener;
    private boolean mForceDisableSuggestions;
    private boolean mShowImeAfterFirstLayout;
    
    public ExtendedEditText(final Context context) {
        super(context);
        this.mForceDisableSuggestions = false;
    }
    
    public ExtendedEditText(final Context context, final AttributeSet set) {
        super(context, set);
        this.mForceDisableSuggestions = false;
    }
    
    public ExtendedEditText(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.mForceDisableSuggestions = false;
    }
    
    private boolean showSoftInput() {
        return this.requestFocus() && ((InputMethodManager)this.getContext().getSystemService("input_method")).showSoftInput((View)this, 1);
    }
    
    public void dispatchBackKey() {
        ((InputMethodManager)this.getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.getWindowToken(), 0);
        if (this.mBackKeyListener != null) {
            this.mBackKeyListener.onBackKey();
        }
    }
    
    public void forceDisableSuggestions(final boolean mForceDisableSuggestions) {
        this.mForceDisableSuggestions = mForceDisableSuggestions;
    }
    
    public boolean isSuggestionsEnabled() {
        return !this.mForceDisableSuggestions && super.isSuggestionsEnabled();
    }
    
    public boolean onDragEvent(final DragEvent dragEvent) {
        return false;
    }
    
    public boolean onKeyPreIme(final int n, final KeyEvent keyEvent) {
        if (n == 4 && keyEvent.getAction() == 1) {
            return this.mBackKeyListener != null && this.mBackKeyListener.onBackKey();
        }
        return super.onKeyPreIme(n, keyEvent);
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        super.onLayout(b, n, n2, n3, n4);
        if (this.mShowImeAfterFirstLayout) {
            this.post((Runnable)new ExtendedEditText$1(this));
        }
    }
    
    public void setOnBackKeyListener(final ExtendedEditText$OnBackKeyListener mBackKeyListener) {
        this.mBackKeyListener = mBackKeyListener;
    }
    
    public void showKeyboard() {
        this.mShowImeAfterFirstLayout = (this.showSoftInput() ^ true);
    }
}
