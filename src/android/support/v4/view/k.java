// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view;

import android.view.View;

class k extends l
{
    public void afK(final View view, final int importantForAccessibility) {
        view.setImportantForAccessibility(importantForAccessibility);
    }
    
    public boolean afL(final View view) {
        return view.isAttachedToWindow();
    }
}
