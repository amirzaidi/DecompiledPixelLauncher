// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import com.android.launcher3.LauncherModel;
import java.util.Iterator;
import com.android.launcher3.IconCache;
import android.content.Context;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.Utilities;
import com.android.launcher3.InstallShortcutReceiver;
import com.android.launcher3.compat.LauncherAppsCompat;
import java.util.Collections;
import android.content.ComponentName;
import com.android.launcher3.ItemInfoWithIcon;
import android.content.Intent$ShortcutIconResource;
import com.android.launcher3.graphics.LauncherIcons;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.LauncherAppWidgetInfo;
import com.android.launcher3.ShortcutInfo;
import com.android.launcher3.LauncherModel$CallbackTask;
import android.content.Intent;
import java.util.HashMap;
import com.android.launcher3.AppInfo;
import java.util.ArrayList;
import com.android.launcher3.compat.UserManagerCompat;
import com.android.launcher3.util.ManagedProfileHeuristic;
import com.android.launcher3.util.ItemInfoMatcher;
import java.util.Collection;
import java.util.HashSet;
import java.util.Arrays;
import com.android.launcher3.util.FlagOp;
import com.android.launcher3.AllAppsList;
import com.android.launcher3.LauncherAppState;
import android.os.UserHandle;

public class PackageUpdatedTask extends ExtendedModelTask
{
    private final int mOp;
    private final String[] mPackages;
    private final UserHandle mUser;
    
    public PackageUpdatedTask(final int mOp, final UserHandle mUser, final String... mPackages) {
        this.mOp = mOp;
        this.mUser = mUser;
        this.mPackages = mPackages;
    }
    
    public void execute(final LauncherAppState launcherAppState, final BgDataModel bgDataModel, final AllAppsList list) {
        final Context context = launcherAppState.getContext();
        final IconCache iconCache = launcherAppState.getIconCache();
        final String[] mPackages = this.mPackages;
        final int length = mPackages.length;
        final FlagOp no_OP = FlagOp.NO_OP;
        final HashSet set = new HashSet(Arrays.asList(mPackages));
        final ItemInfoMatcher ofPackages = ItemInfoMatcher.ofPackages(set, this.mUser);
        ItemInfoMatcher itemInfoMatcher = null;
        FlagOp flagOp = null;
        switch (this.mOp) {
            default: {
                itemInfoMatcher = ofPackages;
                flagOp = no_OP;
                break;
            }
            case 1: {
                for (int i = 0; i < length; ++i) {
                    iconCache.updateIconsForPkg(mPackages[i], this.mUser);
                    list.addPackage(context, mPackages[i], this.mUser);
                }
                final ManagedProfileHeuristic value = ManagedProfileHeuristic.get(context, this.mUser);
                if (value != null) {
                    value.processPackageAdd(this.mPackages);
                }
                itemInfoMatcher = ofPackages;
                flagOp = no_OP;
                break;
            }
            case 2: {
                for (int j = 0; j < length; ++j) {
                    iconCache.updateIconsForPkg(mPackages[j], this.mUser);
                    list.updatePackage(context, mPackages[j], this.mUser);
                    launcherAppState.getWidgetCache().removePackage(mPackages[j], this.mUser);
                }
                final FlagOp removeFlag = FlagOp.removeFlag(2);
                itemInfoMatcher = ofPackages;
                flagOp = removeFlag;
                break;
            }
            case 3: {
                final ManagedProfileHeuristic value2 = ManagedProfileHeuristic.get(context, this.mUser);
                if (value2 != null) {
                    value2.processPackageRemoved(this.mPackages);
                }
                for (int k = 0; k < length; ++k) {
                    iconCache.removeIconsForPkg(mPackages[k], this.mUser);
                }
            }
            case 4: {
                for (int l = 0; l < length; ++l) {
                    list.removePackage(mPackages[l], this.mUser);
                    launcherAppState.getWidgetCache().removePackage(mPackages[l], this.mUser);
                }
                final FlagOp addFlag = FlagOp.addFlag(2);
                itemInfoMatcher = ofPackages;
                flagOp = addFlag;
                break;
            }
            case 5:
            case 6: {
                FlagOp flagOp2;
                if (this.mOp == 5) {
                    flagOp2 = FlagOp.addFlag(4);
                }
                else {
                    flagOp2 = FlagOp.removeFlag(4);
                }
                list.updateDisabledFlags(ofPackages, flagOp2);
                itemInfoMatcher = ofPackages;
                flagOp = flagOp2;
                break;
            }
            case 7: {
                FlagOp flagOp3;
                if (UserManagerCompat.getInstance(context).isQuietModeEnabled(this.mUser)) {
                    flagOp3 = FlagOp.addFlag(8);
                }
                else {
                    flagOp3 = FlagOp.removeFlag(8);
                }
                final ItemInfoMatcher ofUser = ItemInfoMatcher.ofUser(this.mUser);
                list.updateDisabledFlags(ofUser, flagOp3);
                itemInfoMatcher = ofUser;
                flagOp = flagOp3;
                break;
            }
        }
        Iterable<Object> iterable = null;
        Object iconBitmap = null;
        final ArrayList<Object> list2 = new ArrayList<Object>();
        if (list.added.size() > 0) {
            iterable = new ArrayList<Object>(list.added);
            list.added.clear();
        }
        if (list.modified.size() > 0) {
            iconBitmap = new ArrayList<AppInfo>(list.modified);
            list.modified.clear();
        }
        if (list.removed.size() > 0) {
            list2.addAll(list.removed);
            list.removed.clear();
        }
        final HashMap<Intent, AppInfo> hashMap = new HashMap<Intent, AppInfo>();
        Object intent = null;
        if (iterable != null) {
            this.scheduleCallbackTask(new PackageUpdatedTask$1(this, (ArrayList)iterable));
            for (final AppInfo appInfo : iterable) {
                intent = appInfo.componentName;
                hashMap.put((Intent)intent, appInfo);
            }
        }
        if (iconBitmap != null) {
            for (final AppInfo appInfo2 : iconBitmap) {
                intent = appInfo2.componentName;
                hashMap.put((Intent)intent, appInfo2);
            }
            this.scheduleCallbackTask(new PackageUpdatedTask$2(this, (ArrayList)iconBitmap));
        }
        if (this.mOp == 1 || flagOp != FlagOp.NO_OP) {
            ArrayList<ShortcutInfo> list3 = null;
            ArrayList<ShortcutInfo> list4 = null;
            ArrayList<LauncherAppWidgetInfo> list5 = null;
        Label_1551_Outer:
            while (true) {
                list3 = new ArrayList<ShortcutInfo>();
                list4 = new ArrayList<ShortcutInfo>();
                list5 = new ArrayList<LauncherAppWidgetInfo>();
            Label_1551:
                while (true) {
                    int hasStatusFlag = 0;
                Label_2581:
                    while (true) {
                        final LauncherAppWidgetInfo launcherAppWidgetInfo;
                        Label_1791: {
                            Label_1648: {
                                Label_1597: {
                                    Label_1590: {
                                        Label_1541: {
                                            synchronized (bgDataModel) {
                                                for (final ItemInfo itemInfo : bgDataModel.itemsIdMap) {
                                                    if (!(itemInfo instanceof ShortcutInfo)) {
                                                        break Label_1791;
                                                    }
                                                    iconBitmap = this.mUser;
                                                    if (!((UserHandle)iconBitmap).equals(((ShortcutInfo)itemInfo).user)) {
                                                        break Label_1791;
                                                    }
                                                    final ShortcutInfo shortcutInfo = (ShortcutInfo)itemInfo;
                                                    hasStatusFlag = 0;
                                                    intent = null;
                                                    iconBitmap = shortcutInfo.iconResource;
                                                    if (iconBitmap != null) {
                                                        iconBitmap = shortcutInfo.iconResource;
                                                        iconBitmap = ((Intent$ShortcutIconResource)iconBitmap).packageName;
                                                        if (set.contains(iconBitmap)) {
                                                            iconBitmap = shortcutInfo.iconResource;
                                                            iconBitmap = LauncherIcons.createIconBitmap((Intent$ShortcutIconResource)iconBitmap, context);
                                                            if (iconBitmap != null) {
                                                                shortcutInfo.iconBitmap = (Bitmap)iconBitmap;
                                                                hasStatusFlag = 1;
                                                            }
                                                        }
                                                    }
                                                    final ComponentName targetComponent = shortcutInfo.getTargetComponent();
                                                    if (targetComponent == null) {
                                                        break Label_1541;
                                                    }
                                                    if (!itemInfoMatcher.matches(shortcutInfo, targetComponent)) {
                                                        break Label_2581;
                                                    }
                                                    iconBitmap = hashMap.get(targetComponent);
                                                    iconBitmap = iconBitmap;
                                                    if (!shortcutInfo.isPromise() || this.mOp != 1) {
                                                        break Label_1648;
                                                    }
                                                    hasStatusFlag = 2;
                                                    hasStatusFlag = (shortcutInfo.hasStatusFlag(hasStatusFlag) ? 1 : 0);
                                                    if (hasStatusFlag == 0) {
                                                        break Label_1597;
                                                    }
                                                    intent = context.getPackageManager();
                                                    if (((PackageManager)intent).resolveActivity(new Intent("android.intent.action.MAIN").setComponent(targetComponent).addCategory("android.intent.category.LAUNCHER"), 65536) != null) {
                                                        break Label_1597;
                                                    }
                                                    intent = ((PackageManager)intent).getLaunchIntentForPackage(targetComponent.getPackageName());
                                                    if (intent != null) {
                                                        iconBitmap = ((Intent)intent).getComponent();
                                                        iconBitmap = hashMap.get(iconBitmap);
                                                        iconBitmap = iconBitmap;
                                                    }
                                                    if (intent != null && iconBitmap != null) {
                                                        break Label_1590;
                                                    }
                                                    list4.add(shortcutInfo);
                                                }
                                                break;
                                            }
                                        }
                                        final int n = 0;
                                        iconBitmap = null;
                                        final int n2 = hasStatusFlag;
                                        if (n2 != 0 || n != 0) {
                                            list3.add((ShortcutInfo)launcherAppWidgetInfo);
                                        }
                                        if (n2 != 0) {
                                            iconBitmap = this.getModelWriter();
                                            ((ModelWriter)iconBitmap).updateItemInDatabase(launcherAppWidgetInfo);
                                            continue Label_1551_Outer;
                                        }
                                        continue Label_1551_Outer;
                                    }
                                    ((ShortcutInfo)launcherAppWidgetInfo).intent = (Intent)intent;
                                }
                                intent = null;
                                ((ShortcutInfo)launcherAppWidgetInfo).status = 0;
                                hasStatusFlag = 1;
                                if (((ShortcutInfo)launcherAppWidgetInfo).itemType == 0) {
                                    iconCache.getTitleAndIcon((ItemInfoWithIcon)launcherAppWidgetInfo, ((ShortcutInfo)launcherAppWidgetInfo).usingLowResIcon);
                                }
                            }
                            if (iconBitmap != null) {
                                iconBitmap = "android.intent.action.MAIN";
                                if (((String)iconBitmap).equals(((ShortcutInfo)launcherAppWidgetInfo).intent.getAction()) && ((ShortcutInfo)launcherAppWidgetInfo).itemType == 0) {
                                    iconCache.getTitleAndIcon((ItemInfoWithIcon)launcherAppWidgetInfo, ((ShortcutInfo)launcherAppWidgetInfo).usingLowResIcon);
                                    hasStatusFlag = 1;
                                }
                            }
                            final int isDisabled = ((ShortcutInfo)launcherAppWidgetInfo).isDisabled;
                            ((ShortcutInfo)launcherAppWidgetInfo).isDisabled = flagOp.apply(((ShortcutInfo)launcherAppWidgetInfo).isDisabled);
                            final int isDisabled2;
                            if ((isDisabled2 = ((ShortcutInfo)launcherAppWidgetInfo).isDisabled) != isDisabled) {
                                final int n = 1;
                                final int n2 = hasStatusFlag;
                                continue Label_1551;
                            }
                            break Label_2581;
                        }
                        if (!(launcherAppWidgetInfo instanceof LauncherAppWidgetInfo) || this.mOp != 1) {
                            continue Label_1551_Outer;
                        }
                        final LauncherAppWidgetInfo launcherAppWidgetInfo2 = launcherAppWidgetInfo;
                        iconBitmap = this.mUser;
                        if (!((UserHandle)iconBitmap).equals(launcherAppWidgetInfo2.user) || !launcherAppWidgetInfo2.hasRestoreFlag(2)) {
                            continue Label_1551_Outer;
                        }
                        iconBitmap = launcherAppWidgetInfo2.providerName.getPackageName();
                        if (set.contains(iconBitmap)) {
                            launcherAppWidgetInfo2.restoreStatus &= 0xFFFFFFF5;
                            launcherAppWidgetInfo2.restoreStatus |= 0x4;
                            list5.add(launcherAppWidgetInfo2);
                            iconBitmap = this.getModelWriter();
                            ((ModelWriter)iconBitmap).updateItemInDatabase(launcherAppWidgetInfo2);
                            continue Label_1551_Outer;
                        }
                        continue Label_1551_Outer;
                    }
                    final int n = 0;
                    iconBitmap = null;
                    final int n2 = hasStatusFlag;
                    continue Label_1551;
                }
            }
            // monitorexit(bgDataModel)
            this.bindUpdatedShortcuts(list3, list4, this.mUser);
            if (!list4.isEmpty()) {
                this.getModelWriter().deleteItemsFromDatabase(list4);
            }
            if (!list5.isEmpty()) {
                this.scheduleCallbackTask(new PackageUpdatedTask$3(this, list5));
            }
        }
        final HashSet<Object> set2 = new HashSet<Object>();
        final HashSet<ComponentName> set3 = new HashSet<ComponentName>();
        if (this.mOp == 3) {
            Collections.addAll(set2, mPackages);
        }
        else if (this.mOp == 2) {
            final LauncherAppsCompat instance = LauncherAppsCompat.getInstance(context);
            for (int n3 = 0; n3 < length; ++n3) {
                if (!instance.isPackageEnabledForProfile(mPackages[n3], this.mUser)) {
                    set2.add(mPackages[n3]);
                }
            }
            final Iterator<AppInfo> iterator4 = list2.iterator();
            while (iterator4.hasNext()) {
                set3.add(iterator4.next().componentName);
            }
        }
        if (!set2.isEmpty() || (set3.isEmpty() ^ true)) {
            this.getModelWriter().deleteItemsFromDatabase(ItemInfoMatcher.ofPackages(set2, this.mUser));
            this.getModelWriter().deleteItemsFromDatabase(ItemInfoMatcher.ofComponents(set3, this.mUser));
            InstallShortcutReceiver.removeFromInstallQueue(context, set2, this.mUser);
            this.scheduleCallbackTask(new PackageUpdatedTask$4(this, set2, set3));
        }
        if (!list2.isEmpty()) {
            this.scheduleCallbackTask(new PackageUpdatedTask$5(this, list2));
        }
        if (Utilities.ATLEAST_MARSHMALLOW || (this.mOp != 1 && this.mOp != 3 && this.mOp != 2)) {
            if (Utilities.isAtLeastO() && this.mOp == 1) {
                for (int n4 = 0; n4 < length; ++n4) {
                    final LauncherModel model = launcherAppState.getModel();
                    model.refreshAndBindWidgetsAndShortcuts(model.getCallback(), false, new PackageUserKey(mPackages[n4], this.mUser));
                }
            }
        }
        else {
            this.scheduleCallbackTask(new PackageUpdatedTask$6(this));
        }
    }
}
