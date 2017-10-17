// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view.a;

import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;

class j extends k
{
    public void aeI(final AccessibilityNodeInfo accessibilityNodeInfo, final boolean visibleToUser) {
        accessibilityNodeInfo.setVisibleToUser(visibleToUser);
    }
    
    public void aeJ(final AccessibilityNodeInfo accessibilityNodeInfo, final View view, final int n) {
        accessibilityNodeInfo.setParent(view, n);
    }
    
    public void aeK(final AccessibilityNodeInfo accessibilityNodeInfo, final boolean accessibilityFocused) {
        accessibilityNodeInfo.setAccessibilityFocused(accessibilityFocused);
    }
    
    public void aeL(final AccessibilityNodeInfo accessibilityNodeInfo, final View view, final int n) {
        accessibilityNodeInfo.setSource(view, n);
    }
    
    public void aeM(final AccessibilityNodeInfo accessibilityNodeInfo, final View view, final int n) {
        accessibilityNodeInfo.addChild(view, n);
    }
}
