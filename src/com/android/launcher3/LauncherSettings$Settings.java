// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.os.Bundle;
import android.content.ContentResolver;
import com.android.launcher3.config.ProviderConfig;
import android.net.Uri;

public final class LauncherSettings$Settings
{
    public static final Uri CONTENT_URI;
    
    static {
        CONTENT_URI = Uri.parse("content://" + ProviderConfig.AUTHORITY + "/settings");
    }
    
    public static Bundle call(final ContentResolver contentResolver, final String s) {
        return contentResolver.call(LauncherSettings$Settings.CONTENT_URI, s, (String)null, (Bundle)null);
    }
}
