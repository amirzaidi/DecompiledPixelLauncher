// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import android.database.Cursor;
import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import android.database.sqlite.SQLiteFullException;
import android.database.sqlite.SQLiteDatabase$CursorFactory;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

class SQLiteCacheHelper$MySQLiteOpenHelper extends SQLiteOpenHelper
{
    final /* synthetic */ SQLiteCacheHelper this$0;
    
    public SQLiteCacheHelper$MySQLiteOpenHelper(final SQLiteCacheHelper this$0, final Context context, final String s, final int n) {
        this.this$0 = this$0;
        super((Context)new NoLocaleSqliteContext(context), s, (SQLiteDatabase$CursorFactory)null, n);
    }
    
    private void clearDB(final SQLiteDatabase sqLiteDatabase) {
        sqLiteDatabase.execSQL("DROP TABLE IF EXISTS " + this.this$0.mTableName);
        this.onCreate(sqLiteDatabase);
    }
    
    public void onCreate(final SQLiteDatabase sqLiteDatabase) {
        this.this$0.onCreateTable(sqLiteDatabase);
    }
    
    public void onDowngrade(final SQLiteDatabase sqLiteDatabase, final int n, final int n2) {
        if (n != n2) {
            this.clearDB(sqLiteDatabase);
        }
    }
    
    public void onUpgrade(final SQLiteDatabase sqLiteDatabase, final int n, final int n2) {
        if (n != n2) {
            this.clearDB(sqLiteDatabase);
        }
    }
}
