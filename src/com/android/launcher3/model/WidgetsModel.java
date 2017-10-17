// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import android.content.ComponentName;
import java.util.List;
import com.android.launcher3.InvariantDeviceProfile;
import android.content.pm.PackageManager;
import com.android.launcher3.compat.ShortcutConfigActivityInfo;
import com.android.launcher3.compat.LauncherAppsCompat;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import android.appwidget.AppWidgetProviderInfo;
import com.android.launcher3.compat.AppWidgetManagerCompat;
import com.android.launcher3.util.Preconditions;
import java.util.Iterator;
import com.android.launcher3.IconCache;
import android.os.UserHandle;
import android.content.Context;
import android.os.Process;
import java.util.HashMap;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.LauncherAppState;
import java.util.ArrayList;
import com.android.launcher3.util.MultiHashMap;
import com.android.launcher3.AppFilter;

public class WidgetsModel
{
    private AppFilter mAppFilter;
    private final MultiHashMap mWidgetsList;
    
    public WidgetsModel() {
        this.mWidgetsList = new MultiHashMap();
    }
    
    private void setWidgetsAndShortcuts(final ArrayList list, final LauncherAppState launcherAppState, final PackageUserKey packageUserKey) {
        HashMap<String, AppFilter> hashMap = null;
    Label_0033_Outer:
        while (true) {
            Object mAppFilter = null;
            while (true) {
                Object o2 = null;
                Label_0580: {
                    while (true) {
                    Label_0033:
                        while (true) {
                            synchronized (this) {
                                hashMap = new HashMap<String, AppFilter>();
                                if (packageUserKey == null) {
                                    this.mWidgetsList.clear();
                                    final Object o = launcherAppState.getInvariantDeviceProfile();
                                    o2 = Process.myUserHandle();
                                    for (final WidgetItem widgetItem : list) {
                                        mAppFilter = widgetItem.widgetInfo;
                                        if (mAppFilter != null) {
                                            mAppFilter = widgetItem.widgetInfo;
                                            final int min = Math.min(((LauncherAppWidgetProviderInfo)mAppFilter).spanX, widgetItem.widgetInfo.minSpanX);
                                            final int min2 = Math.min(widgetItem.widgetInfo.spanY, widgetItem.widgetInfo.minSpanY);
                                            if (min > ((InvariantDeviceProfile)o).numColumns || min2 > ((InvariantDeviceProfile)o).numRows) {
                                                continue Label_0033_Outer;
                                            }
                                        }
                                        mAppFilter = this.mAppFilter;
                                        if (mAppFilter == null) {
                                            mAppFilter = launcherAppState.getContext();
                                            mAppFilter = AppFilter.newInstance((Context)mAppFilter);
                                            this.mAppFilter = (AppFilter)mAppFilter;
                                        }
                                        mAppFilter = this.mAppFilter;
                                        if (((AppFilter)mAppFilter).shouldShowApp(widgetItem.componentName)) {
                                            mAppFilter = widgetItem.componentName;
                                            final String packageName = ((ComponentName)mAppFilter).getPackageName();
                                            mAppFilter = hashMap.get(packageName);
                                            mAppFilter = mAppFilter;
                                            if (mAppFilter != null) {
                                                break Label_0580;
                                            }
                                            mAppFilter = new PackageItemInfo(packageName);
                                            ((PackageItemInfo)mAppFilter).user = widgetItem.user;
                                            hashMap.put(packageName, (AppFilter)mAppFilter);
                                            this.mWidgetsList.addToList(mAppFilter, widgetItem);
                                        }
                                    }
                                    break;
                                }
                            }
                            Object o = this.mWidgetsList.keySet().iterator();
                            while (((Iterator)o).hasNext()) {
                                final Object o4 = ((Iterator<PackageItemInfo>)o).next();
                                o2 = ((PackageItemInfo)o4).packageName;
                                final Object o3 = packageUserKey.mPackageName;
                                if (((String)o2).equals(o3)) {
                                    if (o4 != null) {
                                        hashMap.put(((PackageItemInfo)o4).packageName, (AppFilter)o4);
                                        mAppFilter = ((ArrayList)this.mWidgetsList.get(o4)).iterator();
                                        while (((Iterator)mAppFilter).hasNext()) {
                                            final WidgetItem widgetItem2 = ((Iterator<WidgetItem>)mAppFilter).next();
                                            o = widgetItem2.componentName.getPackageName();
                                            o2 = packageUserKey.mPackageName;
                                            if (((String)o).equals(o2)) {
                                                final UserHandle user = widgetItem2.user;
                                                o = packageUserKey.mUser;
                                                if (!user.equals(o)) {
                                                    continue Label_0033_Outer;
                                                }
                                                ((Iterator)mAppFilter).remove();
                                            }
                                        }
                                        continue Label_0033;
                                    }
                                    continue Label_0033;
                                }
                            }
                            break;
                        }
                        final Object o4 = null;
                        continue;
                    }
                }
                if (!((UserHandle)o2).equals(((PackageItemInfo)mAppFilter).user)) {
                    final WidgetItem widgetItem;
                    ((PackageItemInfo)mAppFilter).user = widgetItem.user;
                    continue;
                }
                continue;
            }
        }
        final IconCache iconCache = launcherAppState.getIconCache();
        final Iterator<Object> iterator = hashMap.values().iterator();
        while (iterator.hasNext()) {
            iconCache.getTitleAndIconForApp(iterator.next(), true);
        }
    }
    // monitorexit(this)
    
    public MultiHashMap getWidgetsMap() {
        synchronized (this) {
            return this.mWidgetsList.clone();
        }
    }
    
    public void update(final LauncherAppState launcherAppState, final PackageUserKey packageUserKey) {
    Label_0132_Outer:
        while (true) {
            Preconditions.assertWorkerThread();
            final Context context = launcherAppState.getContext();
            final ArrayList<WidgetItem> list = new ArrayList<WidgetItem>();
        Label_0165_Outer:
            while (true) {
            Label_0216:
                while (true) {
                    WidgetItem widgetItem2 = null;
                    ArrayList<WidgetItem> list3 = null;
                    try {
                        final PackageManager packageManager = context.getPackageManager();
                        try {
                            final InvariantDeviceProfile invariantDeviceProfile = launcherAppState.getInvariantDeviceProfile();
                            try {
                                final List allProviders = AppWidgetManagerCompat.getInstance(context).getAllProviders(packageUserKey);
                                try {
                                    final Iterator<AppWidgetProviderInfo> iterator = allProviders.iterator();
                                    try {
                                        while (true) {
                                            Label_0143: {
                                                if (!iterator.hasNext()) {
                                                    break Label_0143;
                                                }
                                                final AppWidgetProviderInfo next = iterator.next();
                                                try {
                                                    final AppWidgetProviderInfo appWidgetProviderInfo = next;
                                                    try {
                                                        final WidgetItem widgetItem = new WidgetItem(LauncherAppWidgetProviderInfo.fromProviderInfo(context, appWidgetProviderInfo), packageManager, invariantDeviceProfile);
                                                        final ArrayList<WidgetItem> list2 = list;
                                                        try {
                                                            list2.add(widgetItem);
                                                            continue Label_0132_Outer;
                                                            launcherAppState.getWidgetCache().removeObsoletePreviews(list, packageUserKey);
                                                            return;
                                                            final List customShortcutActivityList = LauncherAppsCompat.getInstance(context).getCustomShortcutActivityList(packageUserKey);
                                                            try {
                                                                final Iterator<ShortcutConfigActivityInfo> iterator2 = customShortcutActivityList.iterator();
                                                                try {
                                                                    if (!iterator2.hasNext()) {
                                                                        break Label_0216;
                                                                    }
                                                                    final ShortcutConfigActivityInfo next2 = iterator2.next();
                                                                    try {
                                                                        final ShortcutConfigActivityInfo shortcutConfigActivityInfo = next2;
                                                                        try {
                                                                            widgetItem2 = new WidgetItem(shortcutConfigActivityInfo);
                                                                            list3 = list;
                                                                        }
                                                                        catch (Exception ex2) {}
                                                                    }
                                                                    catch (Exception ex3) {}
                                                                }
                                                                catch (Exception ex4) {}
                                                            }
                                                            catch (Exception ex5) {}
                                                        }
                                                        catch (Exception ex6) {}
                                                    }
                                                    catch (Exception ex7) {}
                                                }
                                                catch (Exception ex8) {}
                                            }
                                        }
                                    }
                                    catch (Exception ex9) {}
                                }
                                catch (Exception ex10) {}
                            }
                            catch (Exception ex11) {}
                        }
                        catch (Exception ex12) {}
                    }
                    catch (Exception ex13) {}
                    list3.add(widgetItem2);
                    continue;
                }
                this.setWidgetsAndShortcuts(list, launcherAppState, packageUserKey);
                continue Label_0165_Outer;
            }
        }
        throw;
    }
}
