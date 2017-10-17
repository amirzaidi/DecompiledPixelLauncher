// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.database.sqlite.SQLiteDatabase;
import android.content.Context;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.util.SQLiteCacheHelper;

final class IconCache$IconDB extends SQLiteCacheHelper
{
    private static final int RELEASE_VERSION;
    
    static {
        int n;
        if (FeatureFlags.LAUNCHER3_DISABLE_ICON_NORMALIZATION) {
            n = 0;
        }
        else {
            n = 1;
        }
        RELEASE_VERSION = n + 13;
    }
    
    public IconCache$IconDB(final Context context, final int n) {
        super(context, "app_icons.db", (IconCache$IconDB.RELEASE_VERSION << 16) + n, "icons");
    }
    
    protected void onCreateTable(final SQLiteDatabase sqLiteDatabase) {
        sqLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS icons (componentName TEXT NOT NULL, profileId INTEGER NOT NULL, lastUpdated INTEGER NOT NULL DEFAULT 0, version INTEGER NOT NULL DEFAULT 0, icon BLOB, icon_low_res BLOB, label TEXT, system_state TEXT, PRIMARY KEY (componentName, profileId) );");
    }
}
