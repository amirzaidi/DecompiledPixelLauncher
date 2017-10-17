// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view.a;

import android.view.accessibility.AccessibilityNodeInfo$CollectionInfo;
import android.view.accessibility.AccessibilityNodeInfo$CollectionItemInfo;

class f extends g
{
    public Object afA(final int n, final int n2, final int n3, final int n4, final boolean b, final boolean b2) {
        return AccessibilityNodeInfo$CollectionItemInfo.obtain(n, n2, n3, n4, b, b2);
    }
    
    public Object afy(final int n, final int n2, final boolean b, final int n3) {
        return AccessibilityNodeInfo$CollectionInfo.obtain(n, n2, b, n3);
    }
    
    public boolean afz(final Object o) {
        return ((AccessibilityNodeInfo$CollectionItemInfo)o).isSelected();
    }
}
