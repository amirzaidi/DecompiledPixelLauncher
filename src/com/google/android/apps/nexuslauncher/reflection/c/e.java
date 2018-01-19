// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.c;

import android.database.SQLException;
import android.util.Log;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase$CursorFactory;
import android.content.Context;
import android.database.sqlite.SQLiteOpenHelper;

public class e extends SQLiteOpenHelper
{
    public e(final Context context, final String s) {
        super(context, s, (SQLiteDatabase$CursorFactory)null, 2);
    }
    
    public void createEmptyDB(final SQLiteDatabase sqLiteDatabase) {
        sqLiteDatabase.execSQL("DROP TABLE IF EXISTS reflection_event");
        this.onCreate(sqLiteDatabase);
    }
    
    public void onCreate(final SQLiteDatabase sqLiteDatabase) {
        // monitorenter(this)
        final String s = "CREATE TABLE reflection_event (_id INTEGER PRIMARY KEY AUTOINCREMENT,timestamp INTEGER,client TEXT,type TEXT,id TEXT,latLong BLOB,semanticPlace BLOB,proto BLOB,eventSource TEXT)";
        try {
            sqLiteDatabase.execSQL(s);
        }
        finally {
        }
        // monitorexit(this)
    }
    
    public void onDowngrade(final SQLiteDatabase sqLiteDatabase, final int n, final int n2) {
        Log.w("Reflection.EvtDbHelper", "Database version downgrade from: " + n + " to " + n2 + ". Wiping database.");
        this.createEmptyDB(sqLiteDatabase);
    }
    
    public void onUpgrade(final SQLiteDatabase sqLiteDatabase, final int n, final int n2) {
        switch (n) {
            case 1: {
                sqLiteDatabase.beginTransaction();
                final String s = "ALTER TABLE reflection_event ADD COLUMN eventSource TEXT DEFAULT NULL";
                try {
                    sqLiteDatabase.execSQL(s);
                    sqLiteDatabase.setTransactionSuccessful();
                    return;
                }
                catch (SQLException ex) {
                    final String s2 = "Reflection.EvtDbHelper";
                    try {
                        Log.d(s2, "Adding column failed: " + ex.getMessage());
                    }
                    finally {
                        sqLiteDatabase.endTransaction();
                    }
                }
                break;
            }
            case 2: {
                return;
            }
        }
        Log.w("Reflection.EvtDbHelper", "Destroying all old data.");
        this.createEmptyDB(sqLiteDatabase);
    }
}
