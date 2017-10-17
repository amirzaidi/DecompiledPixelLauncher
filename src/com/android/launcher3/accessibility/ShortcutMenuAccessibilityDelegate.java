// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.accessibility;

import com.android.launcher3.ShortcutInfo;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.notification.NotificationMainView;
import com.android.launcher3.shortcuts.DeepShortcutView;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo$AccessibilityAction;
import com.android.launcher3.Launcher;

public class ShortcutMenuAccessibilityDelegate extends LauncherAccessibilityDelegate
{
    public ShortcutMenuAccessibilityDelegate(final Launcher launcher) {
        final int n = 2131623952;
        super(launcher);
        this.mActions.put(n, (Object)new AccessibilityNodeInfo$AccessibilityAction(n, launcher.getText(2131492992)));
    }
    
    public void addSupportedActions(final View view, final AccessibilityNodeInfo accessibilityNodeInfo, final boolean b) {
        if (view.getParent() instanceof DeepShortcutView) {
            accessibilityNodeInfo.addAction((AccessibilityNodeInfo$AccessibilityAction)this.mActions.get(2131623945));
        }
        else if (view instanceof NotificationMainView) {
            final NotificationMainView notificationMainView = (NotificationMainView)view;
            if (notificationMainView.canChildBeDismissed((View)notificationMainView)) {
                accessibilityNodeInfo.addAction((AccessibilityNodeInfo$AccessibilityAction)this.mActions.get(2131623952));
            }
        }
    }
    
    public boolean performAction(final View view, final ItemInfo itemInfo, final int n) {
        final boolean b = true;
        if (n == 2131623945) {
            if (!(view.getParent() instanceof DeepShortcutView)) {
                return false;
            }
            final ShortcutInfo finalInfo = ((DeepShortcutView)view.getParent()).getFinalInfo();
            final int[] array = new int[2];
            final ShortcutMenuAccessibilityDelegate$1 shortcutMenuAccessibilityDelegate$1 = new ShortcutMenuAccessibilityDelegate$1(this, finalInfo, this.findSpaceOnWorkspace(itemInfo, array), array);
            if (!this.mLauncher.showWorkspace(b, shortcutMenuAccessibilityDelegate$1)) {
                shortcutMenuAccessibilityDelegate$1.run();
            }
            return b;
        }
        else {
            if (n != 2131623952) {
                return false;
            }
            if (!(view instanceof NotificationMainView)) {
                return false;
            }
            final NotificationMainView notificationMainView = (NotificationMainView)view;
            notificationMainView.onChildDismissed((View)notificationMainView);
            this.announceConfirmation(2131492993);
            return b;
        }
    }
}
