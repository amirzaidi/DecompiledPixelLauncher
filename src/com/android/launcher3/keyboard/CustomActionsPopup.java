// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.keyboard;

import java.util.Iterator;
import android.view.Menu;
import android.view.accessibility.AccessibilityNodeInfo$AccessibilityAction;
import android.content.Context;
import android.widget.PopupMenu;
import android.view.MenuItem;
import java.util.Collection;
import java.util.ArrayList;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.Collections;
import com.android.launcher3.ItemInfo;
import java.util.List;
import com.android.launcher3.popup.PopupContainerWithArrow;
import com.android.launcher3.Launcher;
import android.view.View;
import com.android.launcher3.accessibility.LauncherAccessibilityDelegate;
import android.widget.PopupMenu$OnMenuItemClickListener;

public class CustomActionsPopup implements PopupMenu$OnMenuItemClickListener
{
    private final LauncherAccessibilityDelegate mDelegate;
    private final View mIcon;
    private final Launcher mLauncher;
    
    public CustomActionsPopup(final Launcher mLauncher, final View mIcon) {
        this.mLauncher = mLauncher;
        this.mIcon = mIcon;
        final PopupContainerWithArrow open = PopupContainerWithArrow.getOpen(mLauncher);
        if (open != null) {
            this.mDelegate = open.getAccessibilityDelegate();
        }
        else {
            this.mDelegate = mLauncher.getAccessibilityDelegate();
        }
    }
    
    private List getActionList() {
        if (this.mIcon == null || (this.mIcon.getTag() instanceof ItemInfo ^ true)) {
            return Collections.EMPTY_LIST;
        }
        final AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain();
        this.mDelegate.addSupportedActions(this.mIcon, obtain, true);
        final ArrayList list = new ArrayList(obtain.getActionList());
        obtain.recycle();
        return list;
    }
    
    public boolean canShow() {
        return this.getActionList().isEmpty() ^ true;
    }
    
    public boolean onMenuItemClick(final MenuItem menuItem) {
        return this.mDelegate.performAction(this.mIcon, (ItemInfo)this.mIcon.getTag(), menuItem.getItemId());
    }
    
    public boolean show() {
        final List actionList = this.getActionList();
        if (actionList.isEmpty()) {
            return false;
        }
        final PopupMenu popupMenu = new PopupMenu((Context)this.mLauncher, this.mIcon);
        popupMenu.setOnMenuItemClickListener((PopupMenu$OnMenuItemClickListener)this);
        final Menu menu = popupMenu.getMenu();
        for (final AccessibilityNodeInfo$AccessibilityAction accessibilityNodeInfo$AccessibilityAction : actionList) {
            menu.add(0, accessibilityNodeInfo$AccessibilityAction.getId(), 0, accessibilityNodeInfo$AccessibilityAction.getLabel());
        }
        popupMenu.show();
        return true;
    }
}
