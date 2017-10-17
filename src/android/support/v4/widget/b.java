// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.widget;

import android.support.v4.view.D;
import android.view.MotionEvent;
import android.support.v4.view.a.H;
import android.view.ViewParent;
import java.util.List;
import java.util.ArrayList;
import android.view.accessibility.AccessibilityRecord;
import android.support.v4.view.a.v;
import android.view.accessibility.AccessibilityEvent;
import android.support.v4.view.f;
import android.view.accessibility.AccessibilityManager;
import android.view.View;
import android.graphics.Rect;
import android.os.Bundle;

class b extends android.support.v4.view.a.b
{
    final /* synthetic */ a TO;
    
    b(final a to) {
        this.TO = to;
    }
    
    public android.support.v4.view.a.a createAccessibilityNodeInfo(final int n) {
        return android.support.v4.view.a.a.aeo(this.TO.obtainAccessibilityNodeInfo(n));
    }
    
    public android.support.v4.view.a.a findFocus(final int n) {
        int n2;
        if (n != 2) {
            n2 = this.TO.mKeyboardFocusedVirtualViewId;
        }
        else {
            n2 = this.TO.mAccessibilityFocusedVirtualViewId;
        }
        if (n2 != -1 << -1) {
            return this.createAccessibilityNodeInfo(n2);
        }
        return null;
    }
    
    public boolean performAction(final int n, final int n2, final Bundle bundle) {
        return this.TO.performAction(n, n2, bundle);
    }
}
