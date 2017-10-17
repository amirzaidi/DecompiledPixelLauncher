// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import java.util.Iterator;
import android.content.Context;
import com.android.launcher3.graphics.LauncherIcons;
import com.android.launcher3.shortcuts.ShortcutInfoCompat;
import java.util.Collection;
import com.android.launcher3.ShortcutInfo;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.util.MultiHashMap;
import java.util.ArrayList;
import com.android.launcher3.shortcuts.DeepShortcutManager;
import com.android.launcher3.AllAppsList;
import com.android.launcher3.LauncherAppState;
import android.os.UserHandle;
import java.util.List;

public class ShortcutsChangedTask extends ExtendedModelTask
{
    private final String mPackageName;
    private final List mShortcuts;
    private final boolean mUpdateIdMap;
    private final UserHandle mUser;
    
    public ShortcutsChangedTask(final String mPackageName, final List mShortcuts, final UserHandle mUser, final boolean mUpdateIdMap) {
        this.mPackageName = mPackageName;
        this.mShortcuts = mShortcuts;
        this.mUser = mUser;
        this.mUpdateIdMap = mUpdateIdMap;
    }
    
    public void execute(final LauncherAppState launcherAppState, final BgDataModel bgDataModel, final AllAppsList list) {
        final Context context = launcherAppState.getContext();
        final DeepShortcutManager instance = DeepShortcutManager.getInstance(context);
        instance.onShortcutsChanged(this.mShortcuts);
        final ArrayList list2 = new ArrayList();
        final MultiHashMap multiHashMap = new MultiHashMap();
        for (final ItemInfo itemInfo : bgDataModel.itemsIdMap) {
            if (itemInfo.itemType == 6) {
                final ShortcutInfo shortcutInfo = (ShortcutInfo)itemInfo;
                if (!shortcutInfo.getIntent().getPackage().equals(this.mPackageName) || !shortcutInfo.user.equals((Object)this.mUser)) {
                    continue;
                }
                multiHashMap.addToList(shortcutInfo.getDeepShortcutId(), shortcutInfo);
            }
        }
        final ArrayList<ShortcutInfo> list3 = new ArrayList<ShortcutInfo>();
        if (!multiHashMap.isEmpty()) {
            for (final ShortcutInfoCompat shortcutInfoCompat : instance.queryForFullDetails(this.mPackageName, new ArrayList(multiHashMap.keySet()), this.mUser)) {
                final List<ShortcutInfo> list4 = multiHashMap.remove(shortcutInfoCompat.getId());
                if (!shortcutInfoCompat.isPinned()) {
                    list2.addAll(list4);
                }
                else {
                    for (final ShortcutInfo shortcutInfo2 : list4) {
                        shortcutInfo2.updateFromDeepShortcutInfo(shortcutInfoCompat, context);
                        shortcutInfo2.iconBitmap = LauncherIcons.createShortcutIcon(shortcutInfoCompat, context);
                        list3.add(shortcutInfo2);
                    }
                }
            }
        }
        final Iterator<Object> iterator4 = multiHashMap.keySet().iterator();
        while (iterator4.hasNext()) {
            list2.addAll(multiHashMap.get(iterator4.next()));
        }
        this.bindUpdatedShortcuts(list3, list2, this.mUser);
        if (!list2.isEmpty()) {
            this.getModelWriter().deleteItemsFromDatabase(list2);
        }
        if (this.mUpdateIdMap) {
            bgDataModel.updateDeepShortcutMap(this.mPackageName, this.mUser, this.mShortcuts);
            this.bindDeepShortcuts(bgDataModel);
        }
    }
}
