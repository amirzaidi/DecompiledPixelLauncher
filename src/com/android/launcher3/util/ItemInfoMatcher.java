// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import android.content.ComponentName;
import java.util.Iterator;
import com.android.launcher3.LauncherAppWidgetInfo;
import com.android.launcher3.FolderInfo;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.ShortcutInfo;
import android.os.UserHandle;
import java.util.HashSet;

public abstract class ItemInfoMatcher
{
    public static ItemInfoMatcher ofComponents(final HashSet set, final UserHandle userHandle) {
        return new ItemInfoMatcher$2(set, userHandle);
    }
    
    public static ItemInfoMatcher ofPackages(final HashSet set, final UserHandle userHandle) {
        return new ItemInfoMatcher$3(set, userHandle);
    }
    
    public static ItemInfoMatcher ofShortcutKeys(final HashSet set) {
        return new ItemInfoMatcher$4(set);
    }
    
    public static ItemInfoMatcher ofUser(final UserHandle userHandle) {
        return new ItemInfoMatcher$1(userHandle);
    }
    
    public final HashSet filterItemInfos(final Iterable iterable) {
        final HashSet<ShortcutInfo> set = new HashSet<ShortcutInfo>();
        for (final ItemInfo itemInfo : iterable) {
            if (itemInfo instanceof ShortcutInfo) {
                final ShortcutInfo shortcutInfo = (ShortcutInfo)itemInfo;
                final ComponentName targetComponent = shortcutInfo.getTargetComponent();
                if (targetComponent == null || !this.matches(shortcutInfo, targetComponent)) {
                    continue;
                }
                set.add(shortcutInfo);
            }
            else if (itemInfo instanceof FolderInfo) {
                for (final ShortcutInfo shortcutInfo2 : ((FolderInfo)itemInfo).contents) {
                    final ComponentName targetComponent2 = shortcutInfo2.getTargetComponent();
                    if (targetComponent2 != null && this.matches(shortcutInfo2, targetComponent2)) {
                        set.add(shortcutInfo2);
                    }
                }
            }
            else {
                if (!(itemInfo instanceof LauncherAppWidgetInfo)) {
                    continue;
                }
                final LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo)itemInfo;
                final ComponentName providerName = launcherAppWidgetInfo.providerName;
                if (providerName == null || !this.matches(launcherAppWidgetInfo, providerName)) {
                    continue;
                }
                set.add((ShortcutInfo)launcherAppWidgetInfo);
            }
        }
        return set;
    }
    
    public abstract boolean matches(final ItemInfo p0, final ComponentName p1);
}
