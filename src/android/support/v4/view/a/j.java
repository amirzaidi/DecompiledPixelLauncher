// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view.a;

import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;

class j extends k
{
    public void afK(final AccessibilityNodeInfo accessibilityNodeInfo, final boolean visibleToUser) {
        accessibilityNodeInfo.setVisibleToUser(visibleToUser);
    }
    
    public void afL(final AccessibilityNodeInfo accessibilityNodeInfo, final View view, final int n) {
        accessibilityNodeInfo.setParent(view, n);
    }
    
    public void afM(final AccessibilityNodeInfo accessibilityNodeInfo, final boolean accessibilityFocused) {
        accessibilityNodeInfo.setAccessibilityFocused(accessibilityFocused);
    }
    
    public void afN(final AccessibilityNodeInfo accessibilityNodeInfo, final View view, final int n) {
        accessibilityNodeInfo.setSource(view, n);
    }
    
    public void afO(final AccessibilityNodeInfo accessibilityNodeInfo, final View view, final int n) {
        accessibilityNodeInfo.addChild(view, n);
    }
}
