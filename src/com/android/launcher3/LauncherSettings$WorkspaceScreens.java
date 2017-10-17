// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.config.ProviderConfig;
import android.net.Uri;
import android.provider.BaseColumns;

public final class LauncherSettings$WorkspaceScreens implements BaseColumns
{
    public static final Uri CONTENT_URI;
    
    static {
        CONTENT_URI = Uri.parse("content://" + ProviderConfig.AUTHORITY + "/" + "workspaceScreens");
    }
}
