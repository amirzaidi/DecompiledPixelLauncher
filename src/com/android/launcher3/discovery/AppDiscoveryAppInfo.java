// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.discovery;

import com.android.launcher3.ShortcutInfo;
import com.android.launcher3.AppInfo;

public class AppDiscoveryAppInfo extends AppInfo
{
    public final boolean isInstantApp;
    public final boolean isRecent;
    public final String priceFormatted;
    public final float rating;
    public final long reviewCount;
    
    public boolean isDragAndDropSupported() {
        return this.isInstantApp;
    }
    
    public ShortcutInfo makeShortcut() {
        if (!this.isDragAndDropSupported()) {
            throw new RuntimeException("DnD is currently not supported for discovered store apps");
        }
        return super.makeShortcut();
    }
}
