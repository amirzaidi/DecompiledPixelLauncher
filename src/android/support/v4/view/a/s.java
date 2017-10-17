// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view.a;

import android.view.accessibility.AccessibilityEvent;

class s extends t
{
    public int aeZ(final AccessibilityEvent accessibilityEvent) {
        return accessibilityEvent.getContentChangeTypes();
    }
    
    public void afa(final AccessibilityEvent accessibilityEvent, final int contentChangeTypes) {
        accessibilityEvent.setContentChangeTypes(contentChangeTypes);
    }
}
