// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.accessibility;

import com.android.launcher3.Launcher;
import android.os.Bundle;
import android.content.Context;
import com.android.launcher3.Utilities;
import android.view.accessibility.AccessibilityNodeInfo$AccessibilityAction;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.View;
import android.view.View$AccessibilityDelegate;

public class OverviewAccessibilityDelegate extends View$AccessibilityDelegate
{
    public void onInitializeAccessibilityNodeInfo(final View view, final AccessibilityNodeInfo accessibilityNodeInfo) {
        final int n = 2131492947;
        final int n2 = 2131492945;
        final int n3 = 2131492944;
        final int n4 = 2131492943;
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        final Context context = view.getContext();
        accessibilityNodeInfo.addAction(new AccessibilityNodeInfo$AccessibilityAction(n, context.getText(n)));
        if (Utilities.isWallpaperAllowed(context)) {
            accessibilityNodeInfo.addAction(new AccessibilityNodeInfo$AccessibilityAction(n3, context.getText(n3)));
        }
        accessibilityNodeInfo.addAction(new AccessibilityNodeInfo$AccessibilityAction(n4, context.getText(n4)));
        accessibilityNodeInfo.addAction(new AccessibilityNodeInfo$AccessibilityAction(n2, context.getText(n2)));
    }
    
    public boolean performAccessibilityAction(final View view, final int n, final Bundle bundle) {
        final boolean b = true;
        final Launcher launcher = Launcher.getLauncher(view.getContext());
        if (n == 2131492947) {
            launcher.showOverviewMode(b);
            return b;
        }
        if (n == 2131492944) {
            launcher.onClickWallpaperPicker(view);
            return b;
        }
        if (n == 2131492943) {
            launcher.onClickAddWidgetButton(view);
            return b;
        }
        if (n == 2131492945) {
            launcher.onClickSettingsButton(view);
            return b;
        }
        return super.performAccessibilityAction(view, n, bundle);
    }
}
