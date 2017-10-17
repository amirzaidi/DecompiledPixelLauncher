// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.popup;

import com.android.launcher3.ShortcutInfo;
import com.android.launcher3.shortcuts.DeepShortcutView;
import com.android.launcher3.shortcuts.ShortcutInfoCompat;

class PopupPopulator$UpdateShortcutChild implements Runnable
{
    private final PopupContainerWithArrow mContainer;
    private final ShortcutInfoCompat mDetail;
    private final DeepShortcutView mShortcutChild;
    private final ShortcutInfo mShortcutChildInfo;
    
    public PopupPopulator$UpdateShortcutChild(final PopupContainerWithArrow mContainer, final DeepShortcutView mShortcutChild, final ShortcutInfo mShortcutChildInfo, final ShortcutInfoCompat mDetail) {
        this.mContainer = mContainer;
        this.mShortcutChild = mShortcutChild;
        this.mShortcutChildInfo = mShortcutChildInfo;
        this.mDetail = mDetail;
    }
    
    public void run() {
        this.mShortcutChild.applyShortcutInfo(this.mShortcutChildInfo, this.mDetail, this.mContainer.mShortcutsItemView);
    }
}
