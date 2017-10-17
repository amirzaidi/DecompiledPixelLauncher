// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.provider.BaseColumns;

public final class LauncherSettings$Favorites implements BaseColumns
{
    public static final Uri CONTENT_URI;
    
    static {
        CONTENT_URI = Uri.parse("content://" + LauncherProvider.AUTHORITY + "/" + "favorites");
    }
    
    public static void addTableToDb(final SQLiteDatabase sqLiteDatabase, final long n, final boolean b) {
        String s;
        if (b) {
            s = " IF NOT EXISTS ";
        }
        else {
            s = "";
        }
        sqLiteDatabase.execSQL("CREATE TABLE " + s + "favorites" + " (" + "_id INTEGER PRIMARY KEY," + "title TEXT," + "intent TEXT," + "container INTEGER," + "screen INTEGER," + "cellX INTEGER," + "cellY INTEGER," + "spanX INTEGER," + "spanY INTEGER," + "itemType INTEGER," + "appWidgetId INTEGER NOT NULL DEFAULT -1," + "iconPackage TEXT," + "iconResource TEXT," + "icon BLOB," + "appWidgetProvider TEXT," + "modified INTEGER NOT NULL DEFAULT 0," + "restored INTEGER NOT NULL DEFAULT 0," + "profileId INTEGER DEFAULT " + n + "," + "rank INTEGER NOT NULL DEFAULT 0," + "options INTEGER NOT NULL DEFAULT 0" + ");");
    }
    
    static final String containerToString(final int n) {
        switch (n) {
            default: {
                return String.valueOf(n);
            }
            case -100: {
                return "desktop";
            }
            case -101: {
                return "hotseat";
            }
        }
    }
    
    public static Uri getContentUri(final long n) {
        return Uri.parse("content://" + LauncherProvider.AUTHORITY + "/" + "favorites" + "/" + n);
    }
    
    static final String itemTypeToString(final int n) {
        switch (n) {
            default: {
                return String.valueOf(n);
            }
            case 0: {
                return "APP";
            }
            case 1: {
                return "SHORTCUT";
            }
            case 2: {
                return "FOLDER";
            }
            case 4: {
                return "WIDGET";
            }
            case 5: {
                return "CUSTOMWIDGET";
            }
            case 6: {
                return "DEEPSHORTCUT";
            }
        }
    }
}
