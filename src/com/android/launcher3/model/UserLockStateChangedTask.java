// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import java.util.Iterator;
import java.util.List;
import android.content.Context;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.graphics.LauncherIcons;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.ShortcutInfo;
import java.util.ArrayList;
import com.android.launcher3.shortcuts.ShortcutInfoCompat;
import com.android.launcher3.shortcuts.ShortcutKey;
import java.util.HashMap;
import com.android.launcher3.shortcuts.DeepShortcutManager;
import com.android.launcher3.compat.UserManagerCompat;
import com.android.launcher3.AllAppsList;
import com.android.launcher3.LauncherAppState;
import android.os.UserHandle;

public class UserLockStateChangedTask extends BaseModelUpdateTask
{
    private final UserHandle mUser;
    
    public UserLockStateChangedTask(final UserHandle mUser) {
        this.mUser = mUser;
    }
    
    public void execute(final LauncherAppState launcherAppState, final BgDataModel bgDataModel, final AllAppsList list) {
        final Context context = launcherAppState.getContext();
        final boolean userUnlocked = UserManagerCompat.getInstance(context).isUserUnlocked(this.mUser);
        final DeepShortcutManager instance = DeepShortcutManager.getInstance(context);
        final HashMap<ShortcutKey, ShortcutInfoCompat> hashMap = new HashMap<ShortcutKey, ShortcutInfoCompat>();
        while (true) {
            Label_0539: {
                if (!userUnlocked) {
                    break Label_0539;
                }
                final List queryForPinnedShortcuts = instance.queryForPinnedShortcuts(null, this.mUser);
                if (instance.wasLastCallSuccess()) {
                    for (final ShortcutInfoCompat shortcutInfoCompat : queryForPinnedShortcuts) {
                        hashMap.put(ShortcutKey.fromInfo(shortcutInfoCompat), shortcutInfoCompat);
                    }
                    break Label_0539;
                }
                final boolean b = false;
                final ArrayList<ShortcutInfo> list2 = new ArrayList<ShortcutInfo>();
                final ArrayList<ShortcutInfo> list3 = new ArrayList<ShortcutInfo>();
                for (final ItemInfo itemInfo : bgDataModel.itemsIdMap) {
                    if (itemInfo.itemType == 6 && this.mUser.equals((Object)itemInfo.user)) {
                        final ShortcutInfo shortcutInfo = (ShortcutInfo)itemInfo;
                        if (b) {
                            final ShortcutInfoCompat shortcutInfoCompat2 = hashMap.get(ShortcutKey.fromItemInfo(shortcutInfo));
                            if (shortcutInfoCompat2 == null) {
                                list3.add(shortcutInfo);
                                continue;
                            }
                            shortcutInfo.isDisabled &= 0xFFFFFFDF;
                            shortcutInfo.updateFromDeepShortcutInfo(shortcutInfoCompat2, context);
                            shortcutInfo.iconBitmap = LauncherIcons.createShortcutIcon(shortcutInfoCompat2, context, shortcutInfo.iconBitmap);
                        }
                        else {
                            shortcutInfo.isDisabled |= 0x20;
                        }
                        list2.add(shortcutInfo);
                    }
                }
                this.bindUpdatedShortcuts(list2, list3, this.mUser);
                if (!list3.isEmpty()) {
                    this.getModelWriter().deleteItemsFromDatabase(list3);
                }
                final Iterator<ComponentKey> iterator3 = bgDataModel.deepShortcutMap.keySet().iterator();
                while (iterator3.hasNext()) {
                    if (iterator3.next().user.equals((Object)this.mUser)) {
                        iterator3.remove();
                    }
                }
                if (b) {
                    bgDataModel.updateDeepShortcutMap(null, this.mUser, instance.queryForAllShortcuts(this.mUser));
                }
                this.bindDeepShortcuts(bgDataModel);
                return;
            }
            final boolean b = userUnlocked;
            continue;
        }
    }
}
