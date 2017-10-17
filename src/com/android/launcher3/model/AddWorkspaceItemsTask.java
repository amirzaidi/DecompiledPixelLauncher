// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import com.android.launcher3.Utilities;
import android.os.UserHandle;
import com.android.launcher3.LauncherSettings$Settings;
import android.util.LongSparseArray;
import android.content.Context;
import com.android.launcher3.LauncherModel$CallbackTask;
import com.android.launcher3.LauncherAppWidgetInfo;
import com.android.launcher3.FolderInfo;
import com.android.launcher3.ShortcutInfo;
import com.android.launcher3.util.ManagedProfileHeuristic$UserFolderInfo;
import android.content.pm.LauncherActivityInfo;
import android.os.Process;
import com.android.launcher3.AppInfo;
import android.content.Intent;
import android.util.Pair;
import com.android.launcher3.LauncherModel;
import android.util.ArrayMap;
import java.util.List;
import com.android.launcher3.AllAppsList;
import java.util.Iterator;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.util.GridOccupancy;
import java.util.ArrayList;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.util.Provider;

public class AddWorkspaceItemsTask extends BaseModelUpdateTask
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
        Context context = null;
        ArrayList<ItemInfo> list3 = null;
        ArrayList list4 = null;
        ArrayMap arrayMap = null;
        ArrayList loadWorkspaceScreensDb = null;
        ArrayList<ItemInfo> list5 = null;
        Object o = null;
        Object o2;
        ManagedProfileHeuristic$UserFolderInfo managedProfileHeuristic$UserFolderInfo;
        Label_0238_Outer:Label_0406_Outer:
        while (true) {
            context = launcherAppState.getContext();
            list3 = new ArrayList<ItemInfo>();
            list4 = new ArrayList();
            arrayMap = new ArrayMap();
            loadWorkspaceScreensDb = LauncherModel.loadWorkspaceScreensDb(context);
            while (true) {
                Label_0821: {
                    while (true) {
                        Label_0814: {
                            while (true) {
                                Label_0807: {
                                    synchronized (bgDataModel) {
                                        list5 = new ArrayList<ItemInfo>();
                                        for (final Pair pair : list2) {
                                            o = pair.first;
                                            o = o;
                                            if (((ItemInfo)o).itemType == 0 || ((ItemInfo)o).itemType == 1) {
                                                o2 = ((ItemInfo)o).getIntent();
                                                if (this.shortcutExists(bgDataModel, (Intent)o2, ((ItemInfo)o).user)) {
                                                    continue Label_0238_Outer;
                                                }
                                            }
                                            if (((ItemInfo)o).itemType != 0) {
                                                break Label_0821;
                                            }
                                            if (!(o instanceof AppInfo)) {
                                                break Label_0814;
                                            }
                                            o = o;
                                            o2 = ((AppInfo)o).makeShortcut();
                                            o = Process.myUserHandle();
                                            if (!((UserHandle)o).equals(((ItemInfo)o2).user)) {
                                                o = pair.second;
                                                if (!(o instanceof LauncherActivityInfo)) {
                                                    continue Label_0238_Outer;
                                                }
                                                o = ((ItemInfo)o2).user;
                                                o = arrayMap.get(o);
                                                o = o;
                                                if (o != null) {
                                                    break Label_0807;
                                                }
                                                o = new ManagedProfileHeuristic$UserFolderInfo(context, ((ItemInfo)o2).user, bgDataModel);
                                                arrayMap.put((Object)((ItemInfo)o2).user, o);
                                                managedProfileHeuristic$UserFolderInfo = (ManagedProfileHeuristic$UserFolderInfo)o;
                                                o2 = managedProfileHeuristic$UserFolderInfo.convertToWorkspaceItem((ShortcutInfo)(o = o2), (LauncherActivityInfo)pair.second);
                                            }
                                            if (o2 == null) {
                                                continue Label_0238_Outer;
                                            }
                                            list5.add((ShortcutInfo)o2);
                                        }
                                    }
                                    break;
                                }
                                managedProfileHeuristic$UserFolderInfo = (ManagedProfileHeuristic$UserFolderInfo)o;
                                continue Label_0406_Outer;
                            }
                        }
                        o2 = o;
                        continue Label_0406_Outer;
                    }
                }
                o2 = o;
                continue;
            }
        }
        for (ItemInfo shortcut : list5) {
            final ItemInfo itemInfo = shortcut;
            final Pair spaceForItem = this.findSpaceForItem(launcherAppState, bgDataModel, loadWorkspaceScreensDb, list4, itemInfo.spanX, itemInfo.spanY);
            final long longValue = (long)spaceForItem.first;
            final int[] array = (int[])spaceForItem.second;
            if (!(itemInfo instanceof ShortcutInfo) && !(itemInfo instanceof FolderInfo) && !(itemInfo instanceof LauncherAppWidgetInfo)) {
                if (!(itemInfo instanceof AppInfo)) {
                    throw new RuntimeException("Unexpected info type");
                }
                shortcut = ((AppInfo)itemInfo).makeShortcut();
            }
            this.getModelWriter().addItemToDatabase(shortcut, -100, longValue, array[0], array[1]);
            list3.add(shortcut);
        }
        // monitorexit(bgDataModel)
        this.updateScreens(context, loadWorkspaceScreensDb);
        if (!list3.isEmpty()) {
            this.scheduleCallbackTask(new AddWorkspaceItemsTask$1(this, list3, list4));
        }
        final Iterator iterator3 = arrayMap.values().iterator();
        while (iterator3.hasNext()) {
            iterator3.next().applyPendingState(this.getModelWriter());
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
            Label_0479: {
                break Label_0479;
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
        Label_0329: {
            if (intent.getComponent() == null) {
                break Label_0329;
            }
            String package1 = intent.getComponent().getPackageName();
            Label_0283: {
                if (intent.getPackage() == null) {
                    break Label_0283;
                }
                final String uri = intent.toUri(0);
                final String uri2 = new Intent(intent).setPackage((String)null).toUri(0);
                s = uri;
                String s2 = package1;
                package1 = uri2;
                while (true) {
                    final boolean launcherAppTarget = Utilities.isLauncherAppTarget(intent);
                    synchronized (bgDataModel) {
                        for (final ItemInfo itemInfo : bgDataModel.itemsIdMap) {
                            if (itemInfo instanceof ShortcutInfo) {
                                final ShortcutInfo shortcutInfo = (ShortcutInfo)itemInfo;
                                if (((ShortcutInfo)itemInfo).getIntent() == null || !shortcutInfo.user.equals((Object)userHandle)) {
                                    continue;
                                }
                                final Intent intent2 = new Intent(((ShortcutInfo)itemInfo).getIntent());
                                intent2.setSourceBounds(intent.getSourceBounds());
                                final String uri3 = intent2.toUri(0);
                                if (s.equals(uri3) || package1.equals(uri3)) {
                                    return b;
                                }
                                if (launcherAppTarget && shortcutInfo.isPromise() && shortcutInfo.hasStatusFlag(2) && shortcutInfo.getTargetComponent() != null && s2 != null && s2.equals(shortcutInfo.getTargetComponent().getPackageName())) {
                                    return b;
                                }
                                continue;
                            }
                        }
                        return false;
                        final String uri4 = new Intent(intent).setPackage(package1).toUri(0);
                        final String uri5 = intent.toUri(0);
                        s = uri4;
                        s2 = package1;
                        package1 = uri5;
                        continue;
                        final String uri6 = intent.toUri(0);
                        package1 = intent.toUri(0);
                        s2 = null;
                        s = uri6;
                    }
                }
            }
        }
    }
    
    protected void updateScreens(final Context context, final ArrayList list) {
        LauncherModel.updateWorkspaceScreenOrder(context, list);
    }
}
