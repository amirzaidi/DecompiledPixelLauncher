// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import com.android.launcher3.LauncherSettings$Favorites;
import android.net.Uri;

public final class ContentWriter$CommitParams
{
    String[] mSelectionArgs;
    final Uri mUri;
    String mWhere;
    
    public ContentWriter$CommitParams(final String mWhere, final String[] mSelectionArgs) {
        this.mUri = LauncherSettings$Favorites.CONTENT_URI;
        this.mWhere = mWhere;
        this.mSelectionArgs = mSelectionArgs;
    }
}
