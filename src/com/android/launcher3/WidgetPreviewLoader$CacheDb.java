// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.database.sqlite.SQLiteDatabase;
import android.content.Context;
import com.android.launcher3.util.SQLiteCacheHelper;

class WidgetPreviewLoader$CacheDb extends SQLiteCacheHelper
{
    public WidgetPreviewLoader$CacheDb(final Context context) {
        super(context, "widgetpreviews.db", 6, "shortcut_and_widget_previews");
    }
    
    public void onCreateTable(final SQLiteDatabase sqLiteDatabase) {
        sqLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS shortcut_and_widget_previews (componentName TEXT NOT NULL, profileId INTEGER NOT NULL, size TEXT NOT NULL, packageName TEXT NOT NULL, lastUpdated INTEGER NOT NULL DEFAULT 0, version INTEGER NOT NULL DEFAULT 0, preview_bitmap BLOB, PRIMARY KEY (componentName, profileId, size) );");
    }
}
