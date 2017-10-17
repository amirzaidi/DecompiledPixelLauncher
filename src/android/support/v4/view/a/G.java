// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view.a;

import android.view.accessibility.AccessibilityNodeInfo$CollectionInfo;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeInfo$CollectionItemInfo;

class g extends h
{
    public Object afA(final int n, final int n2, final int n3, final int n4, final boolean b, final boolean b2) {
        return AccessibilityNodeInfo$CollectionItemInfo.obtain(n, n2, n3, n4, b);
    }
    
    public int afB(final Object o) {
        return ((AccessibilityNodeInfo$CollectionItemInfo)o).getColumnIndex();
    }
    
    public boolean afC(final Object o) {
        return ((AccessibilityNodeInfo$CollectionItemInfo)o).isHeading();
    }
    
    public Object afD(final AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.getCollectionItemInfo();
    }
    
    public int afE(final Object o) {
        return ((AccessibilityNodeInfo$CollectionItemInfo)o).getRowSpan();
    }
    
    public void afF(final AccessibilityNodeInfo accessibilityNodeInfo, final Object o) {
        accessibilityNodeInfo.setCollectionItemInfo((AccessibilityNodeInfo$CollectionItemInfo)o);
    }
    
    public void afG(final AccessibilityNodeInfo accessibilityNodeInfo, final Object o) {
        accessibilityNodeInfo.setCollectionInfo((AccessibilityNodeInfo$CollectionInfo)o);
    }
    
    public int afH(final Object o) {
        return ((AccessibilityNodeInfo$CollectionItemInfo)o).getColumnSpan();
    }
    
    public int afI(final Object o) {
        return ((AccessibilityNodeInfo$CollectionItemInfo)o).getRowIndex();
    }
    
    public Object afy(final int n, final int n2, final boolean b, final int n3) {
        return AccessibilityNodeInfo$CollectionInfo.obtain(n, n2, b);
    }
}
