// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.content.res.Resources$NotFoundException;
import android.util.Log;
import android.util.DisplayMetrics;
import android.util.Pair;
import android.content.pm.PackageManager;
import android.content.res.Resources;

public class Partner
{
    private static Partner sPartner;
    private static boolean sSearched;
    private final String mPackageName;
    private final Resources mResources;
    
    static {
        Partner.sSearched = false;
    }
    
    private Partner(final String mPackageName, final Resources mResources) {
        this.mPackageName = mPackageName;
        this.mResources = mResources;
    }
    
    public static Partner get(final PackageManager packageManager) {
        synchronized (Partner.class) {
            if (!Partner.sSearched) {
                final Pair systemApk = Utilities.findSystemApk("com.android.launcher3.action.PARTNER_CUSTOMIZATION", packageManager);
                if (systemApk != null) {
                    Partner.sPartner = new Partner((String)systemApk.first, (Resources)systemApk.second);
                }
                Partner.sSearched = true;
            }
            return Partner.sPartner;
        }
    }
    
    public void applyInvariantDeviceProfileOverrides(final InvariantDeviceProfile invariantDeviceProfile, final DisplayMetrics displayMetrics) {
        while (true) {
            int integer = -1;
            float dpiFromPx = -1.0f;
            while (true) {
                try {
                    final int identifier = this.getResources().getIdentifier("grid_num_rows", "integer", this.getPackageName());
                    if (identifier > 0) {
                        final int integer2 = this.getResources().getInteger(identifier);
                        try {
                            final int identifier2 = this.getResources().getIdentifier("grid_num_columns", "integer", this.getPackageName());
                            if (identifier2 > 0) {
                                integer = this.getResources().getInteger(identifier2);
                            }
                            try {
                                final int identifier3 = this.getResources().getIdentifier("grid_icon_size_dp", "dimen", this.getPackageName());
                                if (identifier3 > 0) {
                                    dpiFromPx = Utilities.dpiFromPx(this.getResources().getDimensionPixelSize(identifier3), displayMetrics);
                                }
                                if (integer2 > 0 && integer > 0) {
                                    invariantDeviceProfile.numRows = integer2;
                                    invariantDeviceProfile.numColumns = integer;
                                }
                                if (dpiFromPx > 0.0f) {
                                    invariantDeviceProfile.iconSize = dpiFromPx;
                                }
                                return;
                            }
                            catch (Resources$NotFoundException ex) {
                                Log.e("Launcher.Partner", "Invalid Partner grid resource!", (Throwable)ex);
                                return;
                            }
                        }
                        catch (Resources$NotFoundException ex2) {}
                    }
                }
                catch (Resources$NotFoundException ex3) {}
                final int integer2 = integer;
                continue;
            }
        }
    }
    
    public String getPackageName() {
        return this.mPackageName;
    }
    
    public Resources getResources() {
        return this.mResources;
    }
    
    public boolean hasDefaultLayout() {
        boolean b = false;
        if (this.getResources().getIdentifier("partner_default_layout", "xml", this.getPackageName()) != 0) {
            b = true;
        }
        return b;
    }
}
