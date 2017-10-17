// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import java.util.Iterator;
import android.content.pm.ShortcutInfo;
import com.android.launcher3.shortcuts.ShortcutInfoCompat;
import java.util.ArrayList;
import java.util.List;
import android.os.UserHandle;
import android.content.pm.LauncherApps$Callback;

class LauncherAppsCompatVL$WrappedCallback extends LauncherApps$Callback
{
    private final LauncherAppsCompat$OnAppsChangedCallbackCompat mCallback;
    
    public LauncherAppsCompatVL$WrappedCallback(final LauncherAppsCompat$OnAppsChangedCallbackCompat mCallback) {
        this.mCallback = mCallback;
    }
    
    public void onPackageAdded(final String s, final UserHandle userHandle) {
        this.mCallback.onPackageAdded(s, userHandle);
    }
    
    public void onPackageChanged(final String s, final UserHandle userHandle) {
        this.mCallback.onPackageChanged(s, userHandle);
    }
    
    public void onPackageRemoved(final String s, final UserHandle userHandle) {
        this.mCallback.onPackageRemoved(s, userHandle);
    }
    
    public void onPackagesAvailable(final String[] array, final UserHandle userHandle, final boolean b) {
        this.mCallback.onPackagesAvailable(array, userHandle, b);
    }
    
    public void onPackagesSuspended(final String[] array, final UserHandle userHandle) {
        this.mCallback.onPackagesSuspended(array, userHandle);
    }
    
    public void onPackagesUnavailable(final String[] array, final UserHandle userHandle, final boolean b) {
        this.mCallback.onPackagesUnavailable(array, userHandle, b);
    }
    
    public void onPackagesUnsuspended(final String[] array, final UserHandle userHandle) {
        this.mCallback.onPackagesUnsuspended(array, userHandle);
    }
    
    public void onShortcutsChanged(final String s, final List list, final UserHandle userHandle) {
        final ArrayList list2 = new ArrayList<ShortcutInfoCompat>(list.size());
        final Iterator<ShortcutInfo> iterator = list.iterator();
        while (iterator.hasNext()) {
            list2.add(new ShortcutInfoCompat(iterator.next()));
        }
        this.mCallback.onShortcutsChanged(s, list2, userHandle);
    }
}
