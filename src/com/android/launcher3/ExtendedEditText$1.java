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

final class ExtendedEditText$1 implements Runnable
{
    final /* synthetic */ ExtendedEditText this$0;
    
    ExtendedEditText$1(final ExtendedEditText this$0) {
        this.this$0 = this$0;
    }
    
    public void run() {
        this.this$0.showSoftInput();
        this.this$0.mShowImeAfterFirstLayout = false;
    }
}
