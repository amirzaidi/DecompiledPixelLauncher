// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.provider;

import android.database.sqlite.SQLiteDatabase;

public class LauncherDbUtils$SQLiteTransaction implements AutoCloseable
{
    private final SQLiteDatabase mDb;
    
    public LauncherDbUtils$SQLiteTransaction(final SQLiteDatabase mDb) {
        (this.mDb = mDb).beginTransaction();
    }
    
    public void close() {
        this.mDb.endTransaction();
    }
    
    public void commit() {
        this.mDb.setTransactionSuccessful();
    }
}
