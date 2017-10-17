// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import android.database.sqlite.SQLiteDatabase$CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.Cursor;
import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import android.database.sqlite.SQLiteFullException;
import android.content.Context;

public abstract class SQLiteCacheHelper
{
    private static final boolean NO_ICON_CACHE;
    private boolean mIgnoreWrites;
    private final SQLiteCacheHelper$MySQLiteOpenHelper mOpenHelper;
    private final String mTableName;
    
    static {
        NO_ICON_CACHE = false;
    }
    
    public SQLiteCacheHelper(final Context context, String s, final int n, final String mTableName) {
        if (SQLiteCacheHelper.NO_ICON_CACHE) {
            s = null;
        }
        this.mTableName = mTableName;
        this.mOpenHelper = new SQLiteCacheHelper$MySQLiteOpenHelper(this, context, s, n);
        this.mIgnoreWrites = false;
    }
    
    private void onDiskFull(final SQLiteFullException ex) {
        Log.e("SQLiteCacheHelper", "Disk full, all write operations will be ignored", (Throwable)ex);
        this.mIgnoreWrites = true;
    }
    
    public void clear() {
        this.mOpenHelper.clearDB(this.mOpenHelper.getWritableDatabase());
    }
    
    public void delete(final String s, final String[] array) {
        if (this.mIgnoreWrites) {
            return;
        }
        try {
            final SQLiteCacheHelper$MySQLiteOpenHelper mOpenHelper = this.mOpenHelper;
            try {
                final SQLiteDatabase writableDatabase = mOpenHelper.getWritableDatabase();
                try {
                    writableDatabase.delete(this.mTableName, s, array);
                }
                catch (SQLiteException ex) {
                    Log.d("SQLiteCacheHelper", "Ignoring sqlite exception", (Throwable)ex);
                }
                catch (SQLiteFullException ex2) {
                    this.onDiskFull(ex2);
                }
            }
            catch (SQLiteException ex3) {}
            catch (SQLiteFullException ex4) {}
        }
        catch (SQLiteException ex5) {}
        catch (SQLiteFullException ex6) {}
    }
    
    public void insertOrReplace(final ContentValues contentValues) {
        if (this.mIgnoreWrites) {
            return;
        }
        try {
            final SQLiteCacheHelper$MySQLiteOpenHelper mOpenHelper = this.mOpenHelper;
            try {
                final SQLiteDatabase writableDatabase = mOpenHelper.getWritableDatabase();
                try {
                    writableDatabase.insertWithOnConflict(this.mTableName, (String)null, contentValues, 5);
                }
                catch (SQLiteException ex) {
                    Log.d("SQLiteCacheHelper", "Ignoring sqlite exception", (Throwable)ex);
                }
                catch (SQLiteFullException ex2) {
                    this.onDiskFull(ex2);
                }
            }
            catch (SQLiteException ex3) {}
            catch (SQLiteFullException ex4) {}
        }
        catch (SQLiteException ex5) {}
        catch (SQLiteFullException ex6) {}
    }
    
    protected abstract void onCreateTable(final SQLiteDatabase p0);
    
    public Cursor query(final String[] array, final String s, final String[] array2) {
        return this.mOpenHelper.getReadableDatabase().query(this.mTableName, array, s, array2, (String)null, (String)null, (String)null);
    }
}
