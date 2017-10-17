// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import java.util.List;
import android.os.UserHandle;

public interface LauncherAppsCompat$OnAppsChangedCallbackCompat
{
    void onPackageAdded(final String p0, final UserHandle p1);
    
    void onPackageChanged(final String p0, final UserHandle p1);
    
    void onPackageRemoved(final String p0, final UserHandle p1);
    
    void onPackagesAvailable(final String[] p0, final UserHandle p1, final boolean p2);
    
    void onPackagesSuspended(final String[] p0, final UserHandle p1);
    
    void onPackagesUnavailable(final String[] p0, final UserHandle p1, final boolean p2);
    
    void onPackagesUnsuspended(final String[] p0, final UserHandle p1);
    
    void onShortcutsChanged(final String p0, final List p1, final UserHandle p2);
}
