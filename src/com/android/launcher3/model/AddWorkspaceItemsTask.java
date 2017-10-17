// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import android.os.UserHandle;
import android.content.Intent;
import com.android.launcher3.LauncherSettings$Settings;
import android.util.LongSparseArray;
import android.util.Pair;
import android.content.Context;
import com.android.launcher3.LauncherModel$CallbackTask;
import com.android.launcher3.LauncherAppWidgetInfo;
import com.android.launcher3.FolderInfo;
import com.android.launcher3.ShortcutInfo;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.AppInfo;
import java.util.List;
import com.android.launcher3.AllAppsList;
import java.util.Iterator;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.util.GridOccupancy;
import java.util.ArrayList;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.util.Provider;

public class AddWorkspaceItemsTask extends ExtendedModelTask
{
    private final Provider mAppsProvider;
    
    public AddWorkspaceItemsTask(final Provider mAppsProvider) {
        this.mAppsProvider = mAppsProvider;
    }
    
    private boolean findNextAvailableIconSpaceInScreen(final LauncherAppState launcherAppState, final ArrayList list, final int[] array, final int n, final int n2) {
        final InvariantDeviceProfile invariantDeviceProfile = launcherAppState.getInvariantDeviceProfile();
        final GridOccupancy gridOccupancy = new GridOccupancy(invariantDeviceProfile.numColumns, invariantDeviceProfile.numRows);
        if (list != null) {
            final Iterator<ItemInfo> iterator = list.iterator();
            while (iterator.hasNext()) {
                gridOccupancy.markCells(iterator.next(), true);
            }
        }
        return gridOccupancy.findVacantCell(array, n, n2);
    }
    
    public void execute(final LauncherAppState launcherAppState, final BgDataModel bgDataModel, final AllAppsList list) {
        final List list2 = (List)this.mAppsProvider.get();
        if (list2.isEmpty()) {
            return;
        }
        while (true) {
            final Context context = launcherAppState.getContext();
            final ArrayList<AppInfo> list3 = new ArrayList<AppInfo>();
            final ArrayList list4 = new ArrayList();
            final ArrayList loadWorkspaceScreensDb = LauncherModel.loadWorkspaceScreensDb(context);
            Label_0402: {
                while (true) {
                    ItemInfo shortcut = null;
                    Label_0354: {
                        synchronized (bgDataModel) {
                            final Iterator<ItemInfo> iterator = list2.iterator();
                            while (iterator.hasNext()) {
                                final ItemInfo itemInfo = shortcut = iterator.next();
                                if ((itemInfo.itemType != 0 && itemInfo.itemType != 1) || !this.shortcutExists(bgDataModel, shortcut.getIntent(), shortcut.user)) {
                                    final Pair spaceForItem = this.findSpaceForItem(launcherAppState, bgDataModel, loadWorkspaceScreensDb, list4, shortcut.spanX, shortcut.spanY);
                                    final long longValue = (long)spaceForItem.first;
                                    final int[] array = (int[])spaceForItem.second;
                                    if (!(shortcut instanceof ShortcutInfo) && !(shortcut instanceof FolderInfo) && !(shortcut instanceof LauncherAppWidgetInfo)) {
                                        break Label_0354;
                                    }
                                    this.getModelWriter().addItemToDatabase(shortcut, -100, longValue, array[0], array[1]);
                                    list3.add((AppInfo)shortcut);
                                }
                            }
                            break Label_0402;
                        }
                    }
                    if (shortcut instanceof AppInfo) {
                        shortcut = ((AppInfo)shortcut).makeShortcut();
                        continue;
                    }
                    break;
                }
                throw new RuntimeException("Unexpected info type");
            }
            // monitorexit(bgDataModel)
            this.updateScreens(context, loadWorkspaceScreensDb);
            if (!list3.isEmpty()) {
                this.scheduleCallbackTask(new AddWorkspaceItemsTask$1(this, list3, list4));
            }
        }
    }
    
    protected Pair findSpaceForItem(final LauncherAppState launcherAppState, final BgDataModel bgDataModel, final ArrayList list, final ArrayList list2, final int n, final int n2) {
        final LongSparseArray longSparseArray = new LongSparseArray();
        synchronized (bgDataModel) {
            for (final ItemInfo itemInfo : bgDataModel.itemsIdMap) {
                if (itemInfo.container == -100) {
                    ArrayList<?> list3 = (ArrayList<?>)longSparseArray.get(itemInfo.screenId);
                    if (list3 == null) {
                        list3 = new ArrayList<Object>();
                        longSparseArray.put(itemInfo.screenId, (Object)list3);
                    }
                    list3.add(itemInfo);
                }
            }
        }
        // monitorexit(bgDataModel)
        long n3 = 0L;
        final int[] array = new int[2];
        boolean nextAvailableIconSpaceInScreen = false;
        final int size = list.size();
        int n4;
        if (list.isEmpty()) {
            n4 = 0;
        }
        else {
            n4 = 1;
        }
        if (n4 < size) {
            final long longValue = list.get(n4);
            nextAvailableIconSpaceInScreen = this.findNextAvailableIconSpaceInScreen(launcherAppState, (ArrayList)longSparseArray.get(longValue), array, n, n2);
            n3 = longValue;
        }
    Label_0333:
        while (true) {
            if (!nextAvailableIconSpaceInScreen) {
                long longValue2;
                for (int i = 1; i < size; ++i, n3 = longValue2) {
                    longValue2 = list.get(i);
                    if (this.findNextAvailableIconSpaceInScreen(launcherAppState, (ArrayList)longSparseArray.get(longValue2), array, n, n2)) {
                        final boolean b = true;
                        n3 = longValue2;
                        break Label_0333;
                    }
                }
            }
            Label_0477: {
                break Label_0477;
                final boolean b;
                if (!b) {
                    final long long1 = LauncherSettings$Settings.call(launcherAppState.getContext().getContentResolver(), "generate_new_screen_id").getLong("value");
                    list.add(long1);
                    list2.add(long1);
                    if (!this.findNextAvailableIconSpaceInScreen(launcherAppState, (ArrayList)longSparseArray.get(long1), array, n, n2)) {
                        throw new RuntimeException("Can't find space to add the item");
                    }
                    n3 = long1;
                }
                return Pair.create((Object)n3, (Object)array);
            }
            final boolean b = nextAvailableIconSpaceInScreen;
            continue Label_0333;
        }
    }
    
    protected boolean shortcutExists(final BgDataModel bgDataModel, final Intent intent, final UserHandle userHandle) {
        final boolean b = true;
        String s = null;
        if (intent == null) {
            return b;
        }
        Label_0315: {
            if (intent.getComponent() == null) {
                break Label_0315;
            }
            final String packageName = intent.getComponent().getPackageName();
            Label_0273: {
                if (intent.getPackage() == null) {
                    break Label_0273;
                }
                final String uri = intent.toUri(0);
                s = new Intent(intent).setPackage((String)null).toUri(0);
                String s2 = uri;
                while (true) {
                    synchronized (bgDataModel) {
                        for (final ItemInfo itemInfo : bgDataModel.itemsIdMap) {
                            if (itemInfo instanceof ShortcutInfo) {
                                final ShortcutInfo shortcutInfo = (ShortcutInfo)itemInfo;
                                if (((ShortcutInfo)itemInfo).getIntent() == null || !shortcutInfo.user.equals((Object)userHandle)) {
                                    continue;
                                }
                                final Intent intent2 = new Intent(((ShortcutInfo)itemInfo).getIntent());
                                intent2.setSourceBounds(intent.getSourceBounds());
                                final String uri2 = intent2.toUri(0);
                                if (s2.equals(uri2) || s.equals(uri2)) {
                                    return b;
                                }
                                continue;
                            }
                        }
                        return false;
                        final String uri3 = intent.toUri(0);
                        s = intent.toUri(0);
                        s2 = uri3;
                        continue;
                        final String uri4 = new Intent(intent).setPackage(packageName).toUri(0);
                        s = intent.toUri(0);
                        s2 = uri4;
                    }
                }
            }
        }
    }
    
    protected void updateScreens(final Context context, final ArrayList list) {
        LauncherModel.updateWorkspaceScreenOrder(context, list);
    }
}
