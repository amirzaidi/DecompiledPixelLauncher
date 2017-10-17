// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.shortcuts;

import android.os.Bundle;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.android.launcher3.ItemInfo;
import android.content.pm.ShortcutInfo;
import android.util.Log;
import java.util.Collections;
import android.content.pm.LauncherApps$ShortcutQuery;
import com.android.launcher3.Utilities;
import android.os.UserHandle;
import android.content.ComponentName;
import java.util.Iterator;
import java.util.ArrayList;
import java.util.List;
import android.content.Context;
import android.content.pm.LauncherApps;

public class DeepShortcutManager
{
    private static DeepShortcutManager sInstance;
    private static final Object sInstanceLock;
    private final LauncherApps mLauncherApps;
    private boolean mWasLastCallSuccess;
    
    static {
        sInstanceLock = new Object();
    }
    
    private DeepShortcutManager(final Context context) {
        this.mLauncherApps = (LauncherApps)context.getSystemService("launcherapps");
    }
    
    private List extractIds(final List list) {
        final ArrayList list2 = new ArrayList<String>(list.size());
        final Iterator<ShortcutInfoCompat> iterator = list.iterator();
        while (iterator.hasNext()) {
            list2.add(iterator.next().getId());
        }
        return list2;
    }
    
    public static DeepShortcutManager getInstance(final Context context) {
        synchronized (DeepShortcutManager.sInstanceLock) {
            if (DeepShortcutManager.sInstance == null) {
                DeepShortcutManager.sInstance = new DeepShortcutManager(context.getApplicationContext());
            }
            return DeepShortcutManager.sInstance;
        }
    }
    
    private List query(final int queryFlags, final String package1, final ComponentName activity, final List shortcutIds, final UserHandle userHandle) {
        List<ShortcutInfo> shortcuts = null;
        if (Utilities.ATLEAST_NOUGAT_MR1) {
            final LauncherApps$ShortcutQuery launcherApps$ShortcutQuery = new LauncherApps$ShortcutQuery();
            launcherApps$ShortcutQuery.setQueryFlags(queryFlags);
            if (package1 != null) {
                launcherApps$ShortcutQuery.setPackage(package1);
                launcherApps$ShortcutQuery.setActivity(activity);
                launcherApps$ShortcutQuery.setShortcutIds(shortcutIds);
            }
            while (true) {
                try {
                    shortcuts = (List<ShortcutInfo>)this.mLauncherApps.getShortcuts(launcherApps$ShortcutQuery, userHandle);
                    this.mWasLastCallSuccess = true;
                    if (shortcuts == null) {
                        return Collections.EMPTY_LIST;
                    }
                }
                catch (SecurityException | IllegalStateException ex) {
                    final Throwable t;
                    Log.e("DeepShortcutManager", "Failed to query for shortcuts", t);
                    this.mWasLastCallSuccess = false;
                    continue;
                }
                break;
            }
            final ArrayList list = new ArrayList<ShortcutInfoCompat>(shortcuts.size());
            final Iterator<Object> iterator = shortcuts.iterator();
            while (iterator.hasNext()) {
                list.add(new ShortcutInfoCompat(iterator.next()));
            }
            return list;
        }
        return Collections.EMPTY_LIST;
    }
    
    public static boolean supportsShortcuts(final ItemInfo itemInfo) {
        boolean b = false;
        if (itemInfo.itemType == 0) {
            b = (itemInfo.isDisabled() ^ true);
        }
        return b;
    }
    
    public Drawable getShortcutIconDrawable(final ShortcutInfoCompat shortcutInfoCompat, final int n) {
        if (Utilities.ATLEAST_NOUGAT_MR1) {
            try {
                final LauncherApps mLauncherApps = this.mLauncherApps;
                try {
                    final Drawable shortcutIconDrawable = mLauncherApps.getShortcutIconDrawable(shortcutInfoCompat.getShortcutInfo(), n);
                    this.mWasLastCallSuccess = true;
                    return shortcutIconDrawable;
                }
                catch (SecurityException | IllegalStateException ex) {
                    final Throwable t;
                    Log.e("DeepShortcutManager", "Failed to get shortcut icon", t);
                    this.mWasLastCallSuccess = false;
                }
            }
            catch (SecurityException ex2) {}
            catch (IllegalStateException ex3) {}
        }
        return null;
    }
    
    public boolean hasHostPermission() {
        if (Utilities.ATLEAST_NOUGAT_MR1) {
            try {
                final LauncherApps mLauncherApps = this.mLauncherApps;
                try {
                    return mLauncherApps.hasShortcutHostPermission();
                }
                catch (SecurityException | IllegalStateException ex) {
                    final Throwable t;
                    Log.e("DeepShortcutManager", "Failed to make shortcut manager call", t);
                }
            }
            catch (SecurityException ex2) {}
            catch (IllegalStateException ex3) {}
        }
        return false;
    }
    
    public void onShortcutsChanged(final List list) {
    }
    
    public void pinShortcut(final ShortcutKey shortcutKey) {
        if (!Utilities.ATLEAST_NOUGAT_MR1) {
            return;
        }
        final String packageName = shortcutKey.componentName.getPackageName();
        final String id = shortcutKey.getId();
        final UserHandle user = shortcutKey.user;
        final List ids = this.extractIds(this.queryForPinnedShortcuts(packageName, user));
        ids.add(id);
        try {
            this.mLauncherApps.pinShortcuts(packageName, ids, user);
            this.mWasLastCallSuccess = true;
        }
        catch (SecurityException | IllegalStateException ex) {
            final Throwable t;
            Log.w("DeepShortcutManager", "Failed to pin shortcut", t);
            this.mWasLastCallSuccess = false;
        }
    }
    
    public List queryForAllShortcuts(final UserHandle userHandle) {
        return this.query(11, null, null, null, userHandle);
    }
    
    public List queryForFullDetails(final String s, final List list, final UserHandle userHandle) {
        return this.query(11, s, null, list, userHandle);
    }
    
    public List queryForPinnedShortcuts(final String s, final UserHandle userHandle) {
        return this.query(2, s, null, null, userHandle);
    }
    
    public List queryForShortcutsContainer(final ComponentName componentName, final List list, final UserHandle userHandle) {
        return this.query(9, componentName.getPackageName(), componentName, list, userHandle);
    }
    
    public void startShortcut(final String s, final String s2, final Rect rect, final Bundle bundle, final UserHandle userHandle) {
        if (!Utilities.ATLEAST_NOUGAT_MR1) {
            return;
        }
        try {
            this.mLauncherApps.startShortcut(s, s2, rect, bundle, userHandle);
            this.mWasLastCallSuccess = true;
        }
        catch (SecurityException | IllegalStateException ex) {
            final Throwable t;
            Log.e("DeepShortcutManager", "Failed to start shortcut", t);
            this.mWasLastCallSuccess = false;
        }
    }
    
    public void unpinShortcut(final ShortcutKey shortcutKey) {
        if (!Utilities.ATLEAST_NOUGAT_MR1) {
            return;
        }
        final String packageName = shortcutKey.componentName.getPackageName();
        final String id = shortcutKey.getId();
        final UserHandle user = shortcutKey.user;
        final List ids = this.extractIds(this.queryForPinnedShortcuts(packageName, user));
        ids.remove(id);
        try {
            this.mLauncherApps.pinShortcuts(packageName, ids, user);
            this.mWasLastCallSuccess = true;
        }
        catch (SecurityException | IllegalStateException ex) {
            final Throwable t;
            Log.w("DeepShortcutManager", "Failed to unpin shortcut", t);
            this.mWasLastCallSuccess = false;
        }
    }
    
    public boolean wasLastCallSuccess() {
        return this.mWasLastCallSuccess;
    }
}
