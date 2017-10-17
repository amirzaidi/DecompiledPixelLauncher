// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import java.util.List;
import android.content.pm.PackageManager;
import com.android.launcher3.compat.ShortcutConfigActivityInfo;
import com.android.launcher3.compat.LauncherAppsCompat;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import android.appwidget.AppWidgetProviderInfo;
import com.android.launcher3.compat.AppWidgetManagerCompat;
import com.android.launcher3.util.Preconditions;
import android.os.UserHandle;
import com.android.launcher3.InvariantDeviceProfile;
import java.util.Iterator;
import android.os.Process;
import com.android.launcher3.LauncherAppState;
import java.util.HashMap;
import com.android.launcher3.util.PackageUserKey;
import android.content.Context;
import java.util.ArrayList;
import com.android.launcher3.util.MultiHashMap;
import com.android.launcher3.IconCache;
import com.android.launcher3.AppFilter;

public class WidgetsModel
{
    private final AppFilter mAppFilter;
    private final IconCache mIconCache;
    private final MultiHashMap mWidgetsList;
    
    public WidgetsModel(final IconCache mIconCache, final AppFilter mAppFilter) {
        this.mIconCache = mIconCache;
        this.mAppFilter = mAppFilter;
        this.mWidgetsList = new MultiHashMap();
    }
    
    private void setWidgetsAndShortcuts(final ArrayList list, final Context context, final PackageUserKey packageUserKey) {
        final HashMap<String, PackageItemInfo> hashMap = new HashMap<String, PackageItemInfo>();
        Label_0031: {
            if (packageUserKey != null) {
                while (true) {
                    for (final PackageItemInfo packageItemInfo : this.mWidgetsList.keySet()) {
                        if (packageItemInfo.packageName.equals(packageUserKey.mPackageName)) {
                            if (packageItemInfo != null) {
                                hashMap.put(packageItemInfo.packageName, packageItemInfo);
                                final Iterator<WidgetItem> iterator2 = this.mWidgetsList.get(packageItemInfo).iterator();
                                while (iterator2.hasNext()) {
                                    final WidgetItem widgetItem = iterator2.next();
                                    if (widgetItem.componentName.getPackageName().equals(packageUserKey.mPackageName) && widgetItem.user.equals((Object)packageUserKey.mUser)) {
                                        iterator2.remove();
                                    }
                                }
                            }
                            break Label_0031;
                        }
                    }
                    PackageItemInfo packageItemInfo = null;
                    continue;
                }
            }
            this.mWidgetsList.clear();
        }
        final InvariantDeviceProfile idp = LauncherAppState.getIDP(context);
        final UserHandle myUserHandle = Process.myUserHandle();
        for (final WidgetItem widgetItem2 : list) {
            if (widgetItem2.widgetInfo != null) {
                final int min = Math.min(widgetItem2.widgetInfo.spanX, widgetItem2.widgetInfo.minSpanX);
                final int min2 = Math.min(widgetItem2.widgetInfo.spanY, widgetItem2.widgetInfo.minSpanY);
                if (min > idp.numColumns || min2 > idp.numRows) {
                    continue;
                }
            }
            if (this.mAppFilter.shouldShowApp(widgetItem2.componentName)) {
                final String packageName = widgetItem2.componentName.getPackageName();
                PackageItemInfo packageItemInfo2 = hashMap.get(packageName);
                if (packageItemInfo2 == null) {
                    packageItemInfo2 = new PackageItemInfo(packageName);
                    packageItemInfo2.user = widgetItem2.user;
                    hashMap.put(packageName, packageItemInfo2);
                }
                else if (!myUserHandle.equals((Object)packageItemInfo2.user)) {
                    packageItemInfo2.user = widgetItem2.user;
                }
                this.mWidgetsList.addToList(packageItemInfo2, widgetItem2);
            }
        }
        final Iterator<Object> iterator4 = hashMap.values().iterator();
        while (iterator4.hasNext()) {
            this.mIconCache.getTitleAndIconForApp(iterator4.next(), true);
        }
    }
    
    public MultiHashMap getWidgetsMap() {
        return this.mWidgetsList;
    }
    
    public boolean isEmpty() {
        return this.mWidgetsList.isEmpty();
    }
    
    public ArrayList update(final Context context, final PackageUserKey packageUserKey) {
    Label_0149_Outer:
        while (true) {
            Preconditions.assertWorkerThread();
            final ArrayList<WidgetItem> list = new ArrayList<WidgetItem>();
        Label_0201:
            while (true) {
                WidgetItem widgetItem2 = null;
                ArrayList<WidgetItem> list3 = null;
                try {
                    final PackageManager packageManager = context.getPackageManager();
                    try {
                        final InvariantDeviceProfile idp = LauncherAppState.getIDP(context);
                        try {
                            final List allProviders = AppWidgetManagerCompat.getInstance(context).getAllProviders(packageUserKey);
                            try {
                                final Iterator<AppWidgetProviderInfo> iterator = allProviders.iterator();
                                try {
                                    while (true) {
                                        Label_0126: {
                                            if (!iterator.hasNext()) {
                                                break Label_0126;
                                            }
                                            final AppWidgetProviderInfo next = iterator.next();
                                            try {
                                                final AppWidgetProviderInfo appWidgetProviderInfo = next;
                                                try {
                                                    final WidgetItem widgetItem = new WidgetItem(LauncherAppWidgetProviderInfo.fromProviderInfo(context, appWidgetProviderInfo), packageManager, idp);
                                                    final ArrayList<WidgetItem> list2 = list;
                                                    try {
                                                        list2.add(widgetItem);
                                                        continue Label_0149_Outer;
                                                        final List customShortcutActivityList = LauncherAppsCompat.getInstance(context).getCustomShortcutActivityList(packageUserKey);
                                                        try {
                                                            final Iterator<ShortcutConfigActivityInfo> iterator2 = customShortcutActivityList.iterator();
                                                            try {
                                                                if (!iterator2.hasNext()) {
                                                                    break Label_0201;
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
                                                        return list;
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
            this.setWidgetsAndShortcuts(list, context, packageUserKey);
            return list;
        }
        throw;
    }
}
