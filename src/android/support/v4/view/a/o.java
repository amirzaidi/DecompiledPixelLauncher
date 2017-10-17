// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view.a;

import android.view.accessibility.AccessibilityEvent;

class o extends p
{
    public int aga(final AccessibilityEvent accessibilityEvent) {
        return accessibilityEvent.getContentChangeTypes();
    }
    
    public void agb(final AccessibilityEvent accessibilityEvent, final int contentChangeTypes) {
        accessibilityEvent.setContentChangeTypes(contentChangeTypes);
    }
}
