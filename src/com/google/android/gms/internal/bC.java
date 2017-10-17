// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.content.pm.ApplicationInfo;
import android.app.AppOpsManager;
import com.google.android.gms.common.a.n;
import android.content.pm.PackageInfo;
import android.content.Context;

public class bc
{
    protected final Context mContext;
    
    public bc(final Context mContext) {
        this.mContext = mContext;
    }
    
    public PackageInfo xC(final String s, final int n) {
        return this.mContext.getPackageManager().getPackageInfo(s, n);
    }
    
    public boolean xD(final int n, final String s) {
        final boolean b = true;
        final String[] packagesForUid;
        Label_0074: {
            if (n.jT()) {
                try {
                    final Object systemService = this.mContext.getSystemService("appops");
                    try {
                        ((AppOpsManager)systemService).checkPackage(n, s);
                        return b;
                    }
                    catch (SecurityException ex) {
                        return false;
                    }
                }
                catch (SecurityException ex2) {}
                break Label_0074;
            }
            packagesForUid = this.mContext.getPackageManager().getPackagesForUid(n);
            if (s != null) {
                break Label_0074;
            }
            return false;
        }
        if (packagesForUid != null) {
            for (int i = 0; i < packagesForUid.length; ++i) {
                if (s.equals(packagesForUid[i])) {
                    return b;
                }
            }
            return false;
        }
        return false;
    }
    
    public ApplicationInfo xE(final String s, final int n) {
        return this.mContext.getPackageManager().getApplicationInfo(s, n);
    }
}
