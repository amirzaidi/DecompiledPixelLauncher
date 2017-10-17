// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.popup;

import android.view.View;
import com.android.launcher3.Launcher;
import com.android.launcher3.ItemInfo;

class PopupPopulator$UpdateSystemShortcutChild implements Runnable
{
    private final PopupContainerWithArrow mContainer;
    private final ItemInfo mItemInfo;
    private final Launcher mLauncher;
    private final View mSystemShortcutChild;
    private final SystemShortcut mSystemShortcutInfo;
    
    public PopupPopulator$UpdateSystemShortcutChild(final PopupContainerWithArrow mContainer, final View mSystemShortcutChild, final SystemShortcut mSystemShortcutInfo, final Launcher mLauncher, final ItemInfo mItemInfo) {
        this.mContainer = mContainer;
        this.mSystemShortcutChild = mSystemShortcutChild;
        this.mSystemShortcutInfo = mSystemShortcutInfo;
        this.mLauncher = mLauncher;
        this.mItemInfo = mItemInfo;
    }
    
    public void run() {
        PopupPopulator.initializeSystemShortcut(this.mSystemShortcutChild.getContext(), this.mSystemShortcutChild, this.mSystemShortcutInfo);
        this.mSystemShortcutChild.setOnClickListener(this.mSystemShortcutInfo.getOnClickListener(this.mLauncher, this.mItemInfo));
    }
}
