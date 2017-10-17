// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import android.database.sqlite.SQLiteDatabase;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase$CursorFactory;
import android.content.Context;
import android.content.ContextWrapper;

public class NoLocaleSqliteContext extends ContextWrapper
{
    public NoLocaleSqliteContext(final Context context) {
        super(context);
    }
    
    public SQLiteDatabase openOrCreateDatabase(final String s, final int n, final SQLiteDatabase$CursorFactory sqLiteDatabase$CursorFactory, final DatabaseErrorHandler databaseErrorHandler) {
        return super.openOrCreateDatabase(s, n | 0x10, sqLiteDatabase$CursorFactory, databaseErrorHandler);
    }
}
