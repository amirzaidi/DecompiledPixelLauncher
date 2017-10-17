// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.accessibility;

import android.view.accessibility.AccessibilityNodeInfo;
import android.os.Bundle;
import android.view.View;
import android.content.Context;
import android.view.accessibility.AccessibilityNodeInfo$AccessibilityAction;
import com.android.launcher3.Utilities;
import com.android.launcher3.Workspace;
import android.util.SparseArray;
import android.view.View$AccessibilityDelegate;

public class OverviewScreenAccessibilityDelegate extends View$AccessibilityDelegate
{
    private final SparseArray mActions;
    private final Workspace mWorkspace;
    
    public OverviewScreenAccessibilityDelegate(final Workspace mWorkspace) {
        final int n = 2131623949;
        final int n2 = 2131623948;
        final int n3 = 2131492981;
        int n4 = 2131492980;
        this.mActions = new SparseArray();
        this.mWorkspace = mWorkspace;
        final Context context = this.mWorkspace.getContext();
        final boolean rtl = Utilities.isRtl(context.getResources());
        final SparseArray mActions = this.mActions;
        int n5;
        if (rtl) {
            n5 = n3;
        }
        else {
            n5 = n4;
        }
        mActions.put(n2, (Object)new AccessibilityNodeInfo$AccessibilityAction(n2, context.getText(n5)));
        final SparseArray mActions2 = this.mActions;
        if (!rtl) {
            n4 = n3;
        }
        mActions2.put(n, (Object)new AccessibilityNodeInfo$AccessibilityAction(n, context.getText(n4)));
    }
    
    private void movePage(final int n, final View view) {
        this.mWorkspace.onStartReordering();
        this.mWorkspace.removeView(view);
        this.mWorkspace.addView(view, n);
        this.mWorkspace.onEndReordering();
        this.mWorkspace.announceForAccessibility(this.mWorkspace.getContext().getText(2131492982));
        this.mWorkspace.updateAccessibilityFlags();
        view.performAccessibilityAction(64, (Bundle)null);
    }
    
    public void onInitializeAccessibilityNodeInfo(final View view, final AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        final int indexOfChild = this.mWorkspace.indexOfChild(view);
        if (indexOfChild < this.mWorkspace.getChildCount() - 1) {
            accessibilityNodeInfo.addAction((AccessibilityNodeInfo$AccessibilityAction)this.mActions.get(2131623949));
        }
        if (indexOfChild > this.mWorkspace.numCustomPages() + 1) {
            accessibilityNodeInfo.addAction((AccessibilityNodeInfo$AccessibilityAction)this.mActions.get(2131623948));
        }
    }
    
    public boolean performAccessibilityAction(final View view, final int n, final Bundle bundle) {
        final boolean b = true;
        if (view != null) {
            if (n == 64) {
                this.mWorkspace.setCurrentPage(this.mWorkspace.indexOfChild(view));
            }
            else {
                if (n == 2131623949) {
                    this.movePage(this.mWorkspace.indexOfChild(view) + 1, view);
                    return b;
                }
                if (n == 2131623948) {
                    this.movePage(this.mWorkspace.indexOfChild(view) - 1, view);
                    return b;
                }
            }
        }
        return super.performAccessibilityAction(view, n, bundle);
    }
}
