// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;

public interface AutoInstallsLayout$LayoutParserCallback
{
    long generateNewItemId();
    
    long insertAndCheck(final SQLiteDatabase p0, final ContentValues p1);
}
