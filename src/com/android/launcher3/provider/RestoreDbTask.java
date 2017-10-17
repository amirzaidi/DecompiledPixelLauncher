// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.provider;

import com.android.launcher3.LauncherSettings$Favorites;
import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.LauncherProvider$DatabaseHelper;
import com.android.launcher3.Utilities;
import android.content.Context;

public class RestoreDbTask
{
    public static boolean isPending(final Context context) {
        return Utilities.getPrefs(context).getBoolean("restore_task_pending", false);
    }
    
    public static boolean performRestore(final LauncherProvider$DatabaseHelper launcherProvider$DatabaseHelper) {
        final SQLiteDatabase writableDatabase = launcherProvider$DatabaseHelper.getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            try {
                new RestoreDbTask().sanitizeDB(launcherProvider$DatabaseHelper, writableDatabase);
                writableDatabase.setTransactionSuccessful();
                return true;
            }
            catch (Exception ex) {
                FileLog.e("RestoreDbTask", "Failed to verify db", ex);
                return false;
            }
        }
        catch (Exception ex2) {}
        finally {
            writableDatabase.endTransaction();
        }
    }
    
    private void sanitizeDB(final LauncherProvider$DatabaseHelper launcherProvider$DatabaseHelper, final SQLiteDatabase sqLiteDatabase) {
        int n = 8;
        final int n2 = 1;
        final long defaultProfileId = this.getDefaultProfileId(sqLiteDatabase);
        final String s = "favorites";
        final String s2 = "profileId != ?";
        final String[] array = new String[n2];
        array[0] = Long.toString(defaultProfileId);
        final int delete = sqLiteDatabase.delete(s, s2, array);
        if (delete > 0) {
            FileLog.d("RestoreDbTask", delete + " items belonging to a managed profile, were deleted");
        }
        final boolean propertyEnabled = Utilities.isPropertyEnabled("KeepAllIcons");
        final ContentValues contentValues = new ContentValues();
        final String s3 = "restored";
        int n3;
        if (propertyEnabled) {
            n3 = n;
        }
        else {
            n3 = 0;
        }
        contentValues.put(s3, n3 | 0x1);
        sqLiteDatabase.update("favorites", contentValues, (String)null, (String[])null);
        final String s4 = "restored";
        if (!propertyEnabled) {
            n = 0;
        }
        contentValues.put(s4, n | 0x7);
        final String s5 = "favorites";
        final String s6 = "itemType = ?";
        final String[] array2 = new String[n2];
        array2[0] = Integer.toString(4);
        sqLiteDatabase.update(s5, contentValues, s6, array2);
        final long defaultUserSerial = launcherProvider$DatabaseHelper.getDefaultUserSerial();
        if (Utilities.longCompare(defaultProfileId, defaultUserSerial) != 0) {
            FileLog.d("RestoreDbTask", "Changing primary user id from " + defaultProfileId + " to " + defaultUserSerial);
            this.migrateProfileId(sqLiteDatabase, defaultUserSerial);
        }
    }
    
    public static void setPending(final Context context, final boolean b) {
        FileLog.d("RestoreDbTask", "Restore data received through full backup");
        Utilities.getPrefs(context).edit().putBoolean("restore_task_pending", b).commit();
    }
    
    protected long getDefaultProfileId(final SQLiteDatabase p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore_2       
        //     2: ldc             "PRAGMA table_info (favorites)"
        //     4: astore_3       
        //     5: aconst_null    
        //     6: astore          4
        //     8: aload_1        
        //     9: aload_3        
        //    10: aconst_null    
        //    11: invokevirtual   android/database/sqlite/SQLiteDatabase.rawQuery:(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
        //    14: astore          4
        //    16: ldc             "name"
        //    18: astore_3       
        //    19: aload           4
        //    21: aload_3        
        //    22: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //    27: istore          5
        //    29: aload           4
        //    31: invokeinterface android/database/Cursor.moveToNext:()Z
        //    36: istore          6
        //    38: iload           6
        //    40: ifeq            121
        //    43: ldc             "profileId"
        //    45: astore          7
        //    47: aload           4
        //    49: iload           5
        //    51: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //    56: astore          8
        //    58: aload           7
        //    60: aload           8
        //    62: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //    65: istore          6
        //    67: iload           6
        //    69: ifeq            29
        //    72: ldc             "dflt_value"
        //    74: astore_3       
        //    75: aload           4
        //    77: aload_3        
        //    78: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //    83: istore          5
        //    85: aload           4
        //    87: iload           5
        //    89: invokeinterface android/database/Cursor.getLong:(I)J
        //    94: lstore          9
        //    96: aload           4
        //    98: ifnull          108
        //   101: aload           4
        //   103: invokeinterface android/database/Cursor.close:()V
        //   108: aload_2        
        //   109: ifnull          118
        //   112: aload_2        
        //   113: athrow         
        //   114: astore_2       
        //   115: goto            108
        //   118: lload           9
        //   120: lreturn        
        //   121: new             Ljava/io/InvalidObjectException;
        //   124: astore_3       
        //   125: ldc             "Table does not have a profile id column"
        //   127: astore          7
        //   129: aload_3        
        //   130: aload           7
        //   132: invokespecial   java/io/InvalidObjectException.<init>:(Ljava/lang/String;)V
        //   135: aload_3        
        //   136: athrow         
        //   137: astore_3       
        //   138: aload_3        
        //   139: athrow         
        //   140: astore          11
        //   142: aload_3        
        //   143: astore_2       
        //   144: aload           11
        //   146: astore_3       
        //   147: aload           4
        //   149: ifnull          159
        //   152: aload           4
        //   154: invokeinterface android/database/Cursor.close:()V
        //   159: aload_2        
        //   160: ifnull          192
        //   163: aload_2        
        //   164: athrow         
        //   165: astore          4
        //   167: aload_2        
        //   168: ifnonnull       177
        //   171: aload           4
        //   173: astore_2       
        //   174: goto            159
        //   177: aload_2        
        //   178: aload           4
        //   180: if_acmpeq       159
        //   183: aload_2        
        //   184: aload           4
        //   186: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   189: goto            159
        //   192: aload_3        
        //   193: athrow         
        //   194: astore_3       
        //   195: aconst_null    
        //   196: astore          4
        //   198: goto            138
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  10     14     194    140    Any
        //  21     27     137    140    Any
        //  29     36     137    140    Any
        //  49     56     137    140    Any
        //  60     65     137    140    Any
        //  77     83     137    140    Any
        //  87     94     137    140    Any
        //  101    108    114    118    Any
        //  121    124    137    140    Any
        //  130    135    137    140    Any
        //  135    137    137    140    Any
        //  138    140    140    194    Any
        //  152    159    165    192    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.OutOfMemoryError: Java heap space
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    protected void migrateProfileId(final SQLiteDatabase sqLiteDatabase, final long n) {
        final ContentValues contentValues = new ContentValues();
        contentValues.put("profileId", n);
        sqLiteDatabase.update("favorites", contentValues, (String)null, (String[])null);
        sqLiteDatabase.execSQL("ALTER TABLE favorites RENAME TO favorites_old;");
        LauncherSettings$Favorites.addTableToDb(sqLiteDatabase, n, false);
        sqLiteDatabase.execSQL("INSERT INTO favorites SELECT * FROM favorites_old;");
        sqLiteDatabase.execSQL("DROP TABLE favorites_old;");
    }
}
