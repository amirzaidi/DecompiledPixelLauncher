// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import java.util.HashMap;
import android.content.Context;

public abstract class PackageInstallerCompat
{
    public static final int STATUS_FAILED = 2;
    public static final int STATUS_INSTALLED = 0;
    public static final int STATUS_INSTALLING = 1;
    private static PackageInstallerCompat sInstance;
    private static final Object sInstanceLock;
    
    static {
        sInstanceLock = new Object();
    }
    
    public static PackageInstallerCompat getInstance(final Context context) {
        synchronized (PackageInstallerCompat.sInstanceLock) {
            if (PackageInstallerCompat.sInstance == null) {
                PackageInstallerCompat.sInstance = new PackageInstallerCompatVL(context);
            }
            return PackageInstallerCompat.sInstance;
        }
    }
    
    public abstract void onStop();
    
    public abstract HashMap updateAndGetActiveSessionCache();
}
