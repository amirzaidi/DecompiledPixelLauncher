// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.content.SharedPreferences;
import com.android.launcher3.util.ManagedProfileHeuristic;
import android.os.UserHandle;
import android.appwidget.AppWidgetHost;
import java.util.Iterator;
import java.util.List;
import java.util.Collections;
import java.util.ArrayList;
import android.os.Process;
import com.android.launcher3.compat.UserManagerCompat;
import android.content.ContentValues;
import android.database.Cursor;
import android.os.CancellationSignal;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase$CursorFactory;
import com.android.launcher3.util.NoLocaleSqliteContext;
import android.util.Log;
import android.os.Handler;
import android.content.Context;
import android.database.sqlite.SQLiteOpenHelper;

public class LauncherProvider$DatabaseHelper extends SQLiteOpenHelper implements AutoInstallsLayout$LayoutParserCallback
{
    private final Context mContext;
    private long mMaxItemId;
    private long mMaxScreenId;
    private final Handler mWidgetHostResetHandler;
    
    LauncherProvider$DatabaseHelper(final Context context, final Handler handler) {
        final boolean b = true;
        this(context, handler, "launcher.db");
        if (!this.tableExists("favorites") || (this.tableExists("workspaceScreens") ^ true)) {
            Log.e("LauncherProvider", "Tables are missing after onCreate has been called. Trying to recreate");
            this.addFavoritesTable(this.getWritableDatabase(), b);
            this.addWorkspacesTable(this.getWritableDatabase(), b);
        }
        this.initIds();
    }
    
    public LauncherProvider$DatabaseHelper(final Context mContext, final Handler mWidgetHostResetHandler, final String s) {
        final long n = -1;
        super((Context)new NoLocaleSqliteContext(mContext), s, (SQLiteDatabase$CursorFactory)null, 27);
        this.mMaxItemId = n;
        this.mMaxScreenId = n;
        this.mContext = mContext;
        this.mWidgetHostResetHandler = mWidgetHostResetHandler;
    }
    
    private void addFavoritesTable(final SQLiteDatabase sqLiteDatabase, final boolean b) {
        LauncherSettings$Favorites.addTableToDb(sqLiteDatabase, this.getDefaultUserSerial(), b);
    }
    
    private boolean addIntegerColumn(final SQLiteDatabase sqLiteDatabase, final String s, final long n) {
        sqLiteDatabase.beginTransaction();
        try {
            try {
                final StringBuilder append = new StringBuilder().append("ALTER TABLE favorites ADD COLUMN ").append(s).append(" INTEGER NOT NULL DEFAULT ").append(n).append(";");
                try {
                    sqLiteDatabase.execSQL(append.toString());
                    sqLiteDatabase.setTransactionSuccessful();
                    return true;
                }
                catch (SQLException ex) {
                    Log.e("LauncherProvider", ex.getMessage(), (Throwable)ex);
                    return false;
                }
            }
            catch (SQLException ex2) {}
        }
        catch (SQLException ex3) {}
        finally {
            sqLiteDatabase.endTransaction();
        }
    }
    
    private boolean addProfileColumn(final SQLiteDatabase sqLiteDatabase) {
        return this.addIntegerColumn(sqLiteDatabase, "profileId", this.getDefaultUserSerial());
    }
    
    private void addWorkspacesTable(final SQLiteDatabase sqLiteDatabase, final boolean b) {
        String s;
        if (b) {
            s = " IF NOT EXISTS ";
        }
        else {
            s = "";
        }
        sqLiteDatabase.execSQL("CREATE TABLE " + s + "workspaceScreens" + " (" + "_id" + " INTEGER PRIMARY KEY," + "screenRank" + " INTEGER," + "modified" + " INTEGER NOT NULL DEFAULT 0" + ");");
    }
    
    private long initializeMaxItemId(final SQLiteDatabase sqLiteDatabase) {
        return LauncherProvider.getMaxId(sqLiteDatabase, "favorites");
    }
    
    private long initializeMaxScreenId(final SQLiteDatabase sqLiteDatabase) {
        return LauncherProvider.getMaxId(sqLiteDatabase, "workspaceScreens");
    }
    
    private void removeOrphanedItems(final SQLiteDatabase sqLiteDatabase) {
        sqLiteDatabase.execSQL("DELETE FROM favorites WHERE screen NOT IN (SELECT _id FROM workspaceScreens) AND container = -100");
        sqLiteDatabase.execSQL("DELETE FROM favorites WHERE container <> -100 AND container <> -101 AND container NOT IN (SELECT _id FROM favorites WHERE itemType = 2)");
    }
    
    private boolean tableExists(final String s) {
        int n = 1;
        final SQLiteDatabase readableDatabase = this.getReadableDatabase();
        final String s2 = "sqlite_master";
        final String[] array = new String[n];
        array[0] = "tbl_name";
        final String s3 = "tbl_name = ?";
        final String[] array2 = new String[n];
        array2[0] = s;
        final Cursor query = readableDatabase.query((boolean)(n != 0), s2, array, s3, array2, (String)null, (String)null, (String)null, (String)null, (CancellationSignal)null);
        try {
            if (query.getCount() <= 0) {
                n = 0;
            }
            return n != 0;
        }
        finally {
            query.close();
        }
    }
    
    public void checkId(final String s, final ContentValues contentValues) {
        final long longValue = contentValues.getAsLong("_id");
        if ("workspaceScreens".equals(s)) {
            this.mMaxScreenId = Math.max(longValue, this.mMaxScreenId);
        }
        else {
            this.mMaxItemId = Math.max(longValue, this.mMaxItemId);
        }
    }
    
    void convertShortcutsToLauncherActivities(final SQLiteDatabase p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     1: astore_2       
        //     2: aload_1        
        //     3: invokevirtual   android/database/sqlite/SQLiteDatabase.beginTransaction:()V
        //     6: aload_0        
        //     7: invokevirtual   com/android/launcher3/LauncherProvider$DatabaseHelper.getDefaultUserSerial:()J
        //    10: lstore_3       
        //    11: ldc             "favorites"
        //    13: astore          5
        //    15: iconst_2       
        //    16: istore          6
        //    18: iload           6
        //    20: anewarray       Ljava/lang/String;
        //    23: astore          7
        //    25: ldc             "_id"
        //    27: astore          8
        //    29: iconst_0       
        //    30: istore          9
        //    32: aconst_null    
        //    33: astore          10
        //    35: aload           7
        //    37: iconst_0       
        //    38: aload           8
        //    40: aastore        
        //    41: ldc             "intent"
        //    43: astore          8
        //    45: iconst_1       
        //    46: istore          9
        //    48: aload           7
        //    50: iload           9
        //    52: aload           8
        //    54: aastore        
        //    55: new             Ljava/lang/StringBuilder;
        //    58: astore          8
        //    60: aload           8
        //    62: invokespecial   java/lang/StringBuilder.<init>:()V
        //    65: ldc             "itemType=1 AND profileId="
        //    67: astore          10
        //    69: aload           8
        //    71: aload           10
        //    73: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    76: astore          8
        //    78: aload           8
        //    80: lload_3        
        //    81: invokevirtual   java/lang/StringBuilder.append:(J)Ljava/lang/StringBuilder;
        //    84: astore          8
        //    86: aload           8
        //    88: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    91: astore          10
        //    93: iconst_0       
        //    94: istore          11
        //    96: aconst_null    
        //    97: astore          12
        //    99: aconst_null    
        //   100: astore          13
        //   102: iconst_0       
        //   103: istore          14
        //   105: aconst_null    
        //   106: astore          15
        //   108: aload_1        
        //   109: astore          8
        //   111: aload_1        
        //   112: aload           5
        //   114: aload           7
        //   116: aload           10
        //   118: aconst_null    
        //   119: aconst_null    
        //   120: aconst_null    
        //   121: aconst_null    
        //   122: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //   125: astore          7
        //   127: ldc             "UPDATE favorites SET itemType=0 WHERE _id=?"
        //   129: astore          8
        //   131: aload_1        
        //   132: aload           8
        //   134: invokevirtual   android/database/sqlite/SQLiteDatabase.compileStatement:(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
        //   137: astore          5
        //   139: ldc             "_id"
        //   141: astore          8
        //   143: aload           7
        //   145: aload           8
        //   147: invokeinterface android/database/Cursor.getColumnIndexOrThrow:(Ljava/lang/String;)I
        //   152: istore          6
        //   154: ldc             "intent"
        //   156: astore          10
        //   158: aload           7
        //   160: aload           10
        //   162: invokeinterface android/database/Cursor.getColumnIndexOrThrow:(Ljava/lang/String;)I
        //   167: istore          9
        //   169: aload           7
        //   171: invokeinterface android/database/Cursor.moveToNext:()Z
        //   176: istore          11
        //   178: iload           11
        //   180: ifeq            351
        //   183: aload           7
        //   185: iload           9
        //   187: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   192: astore          12
        //   194: aconst_null    
        //   195: astore          13
        //   197: aload           12
        //   199: iconst_0       
        //   200: invokestatic    android/content/Intent.parseUri:(Ljava/lang/String;I)Landroid/content/Intent;
        //   203: astore          12
        //   205: aload           12
        //   207: invokestatic    com/android/launcher3/Utilities.isLauncherAppTarget:(Landroid/content/Intent;)Z
        //   210: istore          11
        //   212: iload           11
        //   214: ifeq            169
        //   217: aload           7
        //   219: iload           6
        //   221: invokeinterface android/database/Cursor.getLong:(I)J
        //   226: lstore_3       
        //   227: iconst_1       
        //   228: istore          14
        //   230: aload           5
        //   232: iload           14
        //   234: lload_3        
        //   235: invokevirtual   android/database/sqlite/SQLiteStatement.bindLong:(IJ)V
        //   238: aload           5
        //   240: invokevirtual   android/database/sqlite/SQLiteStatement.executeUpdateDelete:()I
        //   243: pop            
        //   244: goto            169
        //   247: astore          8
        //   249: aload           7
        //   251: astore_2       
        //   252: ldc             "LauncherProvider"
        //   254: astore          7
        //   256: ldc_w           "Error deduping shortcuts"
        //   259: astore          10
        //   261: aload           7
        //   263: aload           10
        //   265: aload           8
        //   267: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   270: pop            
        //   271: aload_1        
        //   272: invokevirtual   android/database/sqlite/SQLiteDatabase.endTransaction:()V
        //   275: aload_2        
        //   276: ifnull          285
        //   279: aload_2        
        //   280: invokeinterface android/database/Cursor.close:()V
        //   285: aload           5
        //   287: ifnull          295
        //   290: aload           5
        //   292: invokevirtual   android/database/sqlite/SQLiteStatement.close:()V
        //   295: return         
        //   296: astore          12
        //   298: ldc             "LauncherProvider"
        //   300: astore          13
        //   302: ldc_w           "Unable to parse intent"
        //   305: astore          15
        //   307: aload           13
        //   309: aload           15
        //   311: aload           12
        //   313: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   316: pop            
        //   317: goto            169
        //   320: astore          8
        //   322: aload_1        
        //   323: invokevirtual   android/database/sqlite/SQLiteDatabase.endTransaction:()V
        //   326: aload           7
        //   328: ifnull          338
        //   331: aload           7
        //   333: invokeinterface android/database/Cursor.close:()V
        //   338: aload           5
        //   340: ifnull          348
        //   343: aload           5
        //   345: invokevirtual   android/database/sqlite/SQLiteStatement.close:()V
        //   348: aload           8
        //   350: athrow         
        //   351: aload_1        
        //   352: invokevirtual   android/database/sqlite/SQLiteDatabase.setTransactionSuccessful:()V
        //   355: aload_1        
        //   356: invokevirtual   android/database/sqlite/SQLiteDatabase.endTransaction:()V
        //   359: aload           7
        //   361: ifnull          371
        //   364: aload           7
        //   366: invokeinterface android/database/Cursor.close:()V
        //   371: aload           5
        //   373: ifnull          295
        //   376: aload           5
        //   378: invokevirtual   android/database/sqlite/SQLiteStatement.close:()V
        //   381: goto            295
        //   384: astore          8
        //   386: aconst_null    
        //   387: astore          5
        //   389: aconst_null    
        //   390: astore          7
        //   392: goto            322
        //   395: astore          8
        //   397: aconst_null    
        //   398: astore          5
        //   400: goto            322
        //   403: astore          8
        //   405: aload_2        
        //   406: astore          7
        //   408: goto            322
        //   411: astore          8
        //   413: aconst_null    
        //   414: astore          5
        //   416: goto            252
        //   419: astore          8
        //   421: aconst_null    
        //   422: astore          5
        //   424: aload           7
        //   426: astore_2       
        //   427: goto            252
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                           
        //  -----  -----  -----  -----  -------------------------------
        //  6      10     411    419    Landroid/database/SQLException;
        //  6      10     384    395    Any
        //  18     23     411    419    Landroid/database/SQLException;
        //  18     23     384    395    Any
        //  38     41     411    419    Landroid/database/SQLException;
        //  38     41     384    395    Any
        //  52     55     411    419    Landroid/database/SQLException;
        //  52     55     384    395    Any
        //  55     58     411    419    Landroid/database/SQLException;
        //  55     58     384    395    Any
        //  60     65     411    419    Landroid/database/SQLException;
        //  60     65     384    395    Any
        //  71     76     411    419    Landroid/database/SQLException;
        //  71     76     384    395    Any
        //  80     84     411    419    Landroid/database/SQLException;
        //  80     84     384    395    Any
        //  86     91     411    419    Landroid/database/SQLException;
        //  86     91     384    395    Any
        //  121    125    411    419    Landroid/database/SQLException;
        //  121    125    384    395    Any
        //  132    137    419    430    Landroid/database/SQLException;
        //  132    137    395    403    Any
        //  145    152    247    252    Landroid/database/SQLException;
        //  145    152    320    322    Any
        //  160    167    247    252    Landroid/database/SQLException;
        //  160    167    320    322    Any
        //  169    176    247    252    Landroid/database/SQLException;
        //  169    176    320    322    Any
        //  185    192    247    252    Landroid/database/SQLException;
        //  185    192    320    322    Any
        //  199    203    296    320    Ljava/net/URISyntaxException;
        //  199    203    247    252    Landroid/database/SQLException;
        //  199    203    320    322    Any
        //  205    210    247    252    Landroid/database/SQLException;
        //  205    210    320    322    Any
        //  219    226    247    252    Landroid/database/SQLException;
        //  219    226    320    322    Any
        //  234    238    247    252    Landroid/database/SQLException;
        //  234    238    320    322    Any
        //  238    244    247    252    Landroid/database/SQLException;
        //  238    244    320    322    Any
        //  265    271    403    411    Any
        //  311    317    247    252    Landroid/database/SQLException;
        //  311    317    320    322    Any
        //  351    355    247    252    Landroid/database/SQLException;
        //  351    355    320    322    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 207, Size: 207
        //     at java.util.ArrayList.rangeCheck(Unknown Source)
        //     at java.util.ArrayList.get(Unknown Source)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3303)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:113)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:317)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:238)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:123)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    public void createEmptyDB(final SQLiteDatabase sqLiteDatabase) {
        sqLiteDatabase.beginTransaction();
        final String s = "DROP TABLE IF EXISTS favorites";
        try {
            sqLiteDatabase.execSQL(s);
            sqLiteDatabase.execSQL("DROP TABLE IF EXISTS workspaceScreens");
            this.onCreate(sqLiteDatabase);
            sqLiteDatabase.setTransactionSuccessful();
        }
        finally {
            sqLiteDatabase.endTransaction();
        }
    }
    
    public long generateNewItemId() {
        if (this.mMaxItemId < 0L) {
            throw new RuntimeException("Error: max item id was not initialized");
        }
        return ++this.mMaxItemId;
    }
    
    public long generateNewScreenId() {
        if (this.mMaxScreenId < 0L) {
            throw new RuntimeException("Error: max screen id was not initialized");
        }
        return ++this.mMaxScreenId;
    }
    
    public long getDefaultUserSerial() {
        return UserManagerCompat.getInstance(this.mContext).getSerialNumberForUser(Process.myUserHandle());
    }
    
    protected void initIds() {
        final long n = -1;
        if (this.mMaxItemId == n) {
            this.mMaxItemId = this.initializeMaxItemId(this.getWritableDatabase());
        }
        if (this.mMaxScreenId == n) {
            this.mMaxScreenId = this.initializeMaxScreenId(this.getWritableDatabase());
        }
    }
    
    public long insertAndCheck(final SQLiteDatabase sqLiteDatabase, final ContentValues contentValues) {
        return LauncherProvider.dbInsertAndCheck(this, sqLiteDatabase, "favorites", null, contentValues);
    }
    
    int loadFavorites(final SQLiteDatabase sqLiteDatabase, final AutoInstallsLayout autoInstallsLayout) {
        final ArrayList<Object> list = new ArrayList<Object>();
        final int loadLayout = autoInstallsLayout.loadLayout(sqLiteDatabase, list);
        Collections.sort((List<Comparable>)list);
        final ContentValues contentValues = new ContentValues();
        final Iterator<Long> iterator = list.iterator();
        int n = 0;
        while (iterator.hasNext()) {
            final Long n2 = iterator.next();
            contentValues.clear();
            contentValues.put("_id", n2);
            contentValues.put("screenRank", n);
            if (LauncherProvider.dbInsertAndCheck(this, sqLiteDatabase, "workspaceScreens", null, contentValues) < 0L) {
                throw new RuntimeException("Failed initialize screen tablefrom default layout");
            }
            ++n;
        }
        this.mMaxItemId = this.initializeMaxItemId(sqLiteDatabase);
        this.mMaxScreenId = this.initializeMaxScreenId(sqLiteDatabase);
        return loadLayout;
    }
    
    public AppWidgetHost newLauncherWidgetHost() {
        return new AppWidgetHost(this.mContext, 1024);
    }
    
    public void onCreate(final SQLiteDatabase sqLiteDatabase) {
        this.mMaxItemId = 1L;
        this.mMaxScreenId = 0L;
        this.addFavoritesTable(sqLiteDatabase, false);
        this.addWorkspacesTable(sqLiteDatabase, false);
        this.mMaxItemId = this.initializeMaxItemId(sqLiteDatabase);
        this.onEmptyDbCreated();
    }
    
    protected void onDataUpgrade(final SQLiteDatabase sqLiteDatabase, final int n) {
        switch (n) {
            default: {}
            case 0:
            case 1: {
                final UserManagerCompat instance = UserManagerCompat.getInstance(this.mContext);
                final Iterator iterator = instance.getUserProfiles().iterator();
                while (iterator.hasNext()) {
                    sqLiteDatabase.execSQL("update favorites set intent = replace(intent, ';l.profile=" + instance.getSerialNumberForUser(iterator.next()) + ";', ';') where itemType = 0;");
                }
            }
            case 2:
            case 3: {}
        }
    }
    
    public void onDowngrade(final SQLiteDatabase sqLiteDatabase, final int n, final int n2) {
        if (n == 28 && n2 == 27) {
            return;
        }
        Log.w("LauncherProvider", "Database version downgrade from: " + n + " to " + n2 + ". Wiping databse.");
        this.createEmptyDB(sqLiteDatabase);
    }
    
    protected void onEmptyDbCreated() {
        if (this.mWidgetHostResetHandler != null) {
            this.newLauncherWidgetHost().deleteHost();
            this.mWidgetHostResetHandler.sendEmptyMessage(3);
        }
        Utilities.getPrefs(this.mContext).edit().putBoolean("EMPTY_DATABASE_CREATED", true).commit();
        ManagedProfileHeuristic.processAllUsers(Collections.emptyList(), this.mContext);
    }
    
    public void onOpen(final SQLiteDatabase sqLiteDatabase) {
        final int n = 3;
        super.onOpen(sqLiteDatabase);
        final SharedPreferences sharedPreferences = this.mContext.getSharedPreferences("com.android.launcher3.device.prefs", 0);
        final int int1 = sharedPreferences.getInt("provider_data_version", 0);
        if (int1 == n) {
            return;
        }
        Label_0091: {
            if (Utilities.getPrefs(this.mContext).getBoolean("EMPTY_DATABASE_CREATED", false)) {
                break Label_0091;
            }
            sqLiteDatabase.beginTransaction();
            try {
                this.onDataUpgrade(sqLiteDatabase, int1);
                sqLiteDatabase.setTransactionSuccessful();
                sqLiteDatabase.endTransaction();
                sharedPreferences.edit().putInt("provider_data_version", n).apply();
            }
            catch (Exception ex) {
                Log.d("LauncherProvider", "Error updating data version, ignoring", (Throwable)ex);
            }
            finally {
                sqLiteDatabase.endTransaction();
            }
        }
    }
    
    public void onUpgrade(final SQLiteDatabase p0, final int p1, final int p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: lconst_0       
        //     1: lstore          4
        //     3: iload_2        
        //     4: tableswitch {
        //               24: 99
        //               25: 117
        //               26: 140
        //               27: 174
        //               28: 195
        //               29: 195
        //               30: 195
        //               31: 200
        //               32: 212
        //               33: 225
        //               34: 237
        //               35: 258
        //               36: 258
        //               37: 269
        //               38: 274
        //               39: 295
        //          default: 84
        //        }
        //    84: ldc             "LauncherProvider"
        //    86: ldc_w           "Destroying all old data."
        //    89: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
        //    92: pop            
        //    93: aload_0        
        //    94: aload_1        
        //    95: invokevirtual   com/android/launcher3/LauncherProvider$DatabaseHelper.createEmptyDB:(Landroid/database/sqlite/SQLiteDatabase;)V
        //    98: return         
        //    99: aload_0        
        //   100: lload           4
        //   102: putfield        com/android/launcher3/LauncherProvider$DatabaseHelper.mMaxScreenId:J
        //   105: iconst_0       
        //   106: istore          6
        //   108: aconst_null    
        //   109: astore          7
        //   111: aload_0        
        //   112: aload_1        
        //   113: iconst_0       
        //   114: invokespecial   com/android/launcher3/LauncherProvider$DatabaseHelper.addWorkspacesTable:(Landroid/database/sqlite/SQLiteDatabase;Z)V
        //   117: aload_1        
        //   118: invokevirtual   android/database/sqlite/SQLiteDatabase.beginTransaction:()V
        //   121: ldc_w           "ALTER TABLE favorites ADD COLUMN appWidgetProvider TEXT;"
        //   124: astore          7
        //   126: aload_1        
        //   127: aload           7
        //   129: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   132: aload_1        
        //   133: invokevirtual   android/database/sqlite/SQLiteDatabase.setTransactionSuccessful:()V
        //   136: aload_1        
        //   137: invokevirtual   android/database/sqlite/SQLiteDatabase.endTransaction:()V
        //   140: aload_1        
        //   141: invokevirtual   android/database/sqlite/SQLiteDatabase.beginTransaction:()V
        //   144: ldc_w           "ALTER TABLE favorites ADD COLUMN modified INTEGER NOT NULL DEFAULT 0;"
        //   147: astore          7
        //   149: aload_1        
        //   150: aload           7
        //   152: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   155: ldc_w           "ALTER TABLE workspaceScreens ADD COLUMN modified INTEGER NOT NULL DEFAULT 0;"
        //   158: astore          7
        //   160: aload_1        
        //   161: aload           7
        //   163: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   166: aload_1        
        //   167: invokevirtual   android/database/sqlite/SQLiteDatabase.setTransactionSuccessful:()V
        //   170: aload_1        
        //   171: invokevirtual   android/database/sqlite/SQLiteDatabase.endTransaction:()V
        //   174: ldc_w           "restored"
        //   177: astore          7
        //   179: aload_0        
        //   180: aload_1        
        //   181: aload           7
        //   183: lload           4
        //   185: invokespecial   com/android/launcher3/LauncherProvider$DatabaseHelper.addIntegerColumn:(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z
        //   188: istore          6
        //   190: iload           6
        //   192: ifeq            84
        //   195: aload_0        
        //   196: aload_1        
        //   197: invokespecial   com/android/launcher3/LauncherProvider$DatabaseHelper.removeOrphanedItems:(Landroid/database/sqlite/SQLiteDatabase;)V
        //   200: aload_0        
        //   201: aload_1        
        //   202: invokespecial   com/android/launcher3/LauncherProvider$DatabaseHelper.addProfileColumn:(Landroid/database/sqlite/SQLiteDatabase;)Z
        //   205: istore          6
        //   207: iload           6
        //   209: ifeq            84
        //   212: aload_0        
        //   213: aload_1        
        //   214: iconst_1       
        //   215: invokevirtual   com/android/launcher3/LauncherProvider$DatabaseHelper.updateFolderItemsRank:(Landroid/database/sqlite/SQLiteDatabase;Z)Z
        //   218: istore          6
        //   220: iload           6
        //   222: ifeq            84
        //   225: aload_0        
        //   226: aload_1        
        //   227: invokevirtual   com/android/launcher3/LauncherProvider$DatabaseHelper.recreateWorkspaceTable:(Landroid/database/sqlite/SQLiteDatabase;)Z
        //   230: istore          6
        //   232: iload           6
        //   234: ifeq            84
        //   237: ldc_w           "options"
        //   240: astore          7
        //   242: aload_0        
        //   243: aload_1        
        //   244: aload           7
        //   246: lload           4
        //   248: invokespecial   com/android/launcher3/LauncherProvider$DatabaseHelper.addIntegerColumn:(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z
        //   251: istore          6
        //   253: iload           6
        //   255: ifeq            84
        //   258: aload_0        
        //   259: getfield        com/android/launcher3/LauncherProvider$DatabaseHelper.mContext:Landroid/content/Context;
        //   262: astore          7
        //   264: aload           7
        //   266: invokestatic    com/android/launcher3/util/ManagedProfileHeuristic.markExistingUsersForNoFolderCreation:(Landroid/content/Context;)V
        //   269: aload_0        
        //   270: aload_1        
        //   271: invokevirtual   com/android/launcher3/LauncherProvider$DatabaseHelper.convertShortcutsToLauncherActivities:(Landroid/database/sqlite/SQLiteDatabase;)V
        //   274: aload_0        
        //   275: getfield        com/android/launcher3/LauncherProvider$DatabaseHelper.mContext:Landroid/content/Context;
        //   278: astore          7
        //   280: aload           7
        //   282: aload_1        
        //   283: invokestatic    com/android/launcher3/provider/LauncherDbUtils.prepareScreenZeroToHostQsb:(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Z
        //   286: iconst_1       
        //   287: ixor           
        //   288: istore          6
        //   290: iload           6
        //   292: ifne            84
        //   295: return         
        //   296: astore          7
        //   298: ldc             "LauncherProvider"
        //   300: astore          8
        //   302: aload           7
        //   304: invokevirtual   android/database/SQLException.getMessage:()Ljava/lang/String;
        //   307: astore          9
        //   309: aload           8
        //   311: aload           9
        //   313: aload           7
        //   315: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   318: pop            
        //   319: aload_1        
        //   320: invokevirtual   android/database/sqlite/SQLiteDatabase.endTransaction:()V
        //   323: goto            84
        //   326: astore          7
        //   328: aload_1        
        //   329: invokevirtual   android/database/sqlite/SQLiteDatabase.endTransaction:()V
        //   332: aload           7
        //   334: athrow         
        //   335: astore          7
        //   337: ldc             "LauncherProvider"
        //   339: astore          8
        //   341: aload           7
        //   343: invokevirtual   android/database/SQLException.getMessage:()Ljava/lang/String;
        //   346: astore          9
        //   348: aload           8
        //   350: aload           9
        //   352: aload           7
        //   354: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   357: pop            
        //   358: aload_1        
        //   359: invokevirtual   android/database/sqlite/SQLiteDatabase.endTransaction:()V
        //   362: goto            84
        //   365: astore          7
        //   367: aload_1        
        //   368: invokevirtual   android/database/sqlite/SQLiteDatabase.endTransaction:()V
        //   371: aload           7
        //   373: athrow         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                           
        //  -----  -----  -----  -----  -------------------------------
        //  127    132    296    326    Landroid/database/SQLException;
        //  127    132    326    335    Any
        //  132    136    296    326    Landroid/database/SQLException;
        //  132    136    326    335    Any
        //  150    155    335    365    Landroid/database/SQLException;
        //  150    155    365    374    Any
        //  161    166    335    365    Landroid/database/SQLException;
        //  161    166    365    374    Any
        //  166    170    335    365    Landroid/database/SQLException;
        //  166    170    365    374    Any
        //  302    307    326    335    Any
        //  313    319    326    335    Any
        //  341    346    365    374    Any
        //  352    358    365    374    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0174:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:317)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:238)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:123)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    public boolean recreateWorkspaceTable(final SQLiteDatabase p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_1       
        //     1: istore_2       
        //     2: aload_1        
        //     3: invokevirtual   android/database/sqlite/SQLiteDatabase.beginTransaction:()V
        //     6: ldc             "workspaceScreens"
        //     8: astore_3       
        //     9: iconst_1       
        //    10: istore          4
        //    12: iload           4
        //    14: anewarray       Ljava/lang/String;
        //    17: astore          5
        //    19: ldc             "_id"
        //    21: astore          6
        //    23: aload           5
        //    25: iconst_0       
        //    26: aload           6
        //    28: aastore        
        //    29: ldc             "screenRank"
        //    31: astore          7
        //    33: iconst_0       
        //    34: istore          8
        //    36: aconst_null    
        //    37: astore          9
        //    39: aconst_null    
        //    40: astore          10
        //    42: aconst_null    
        //    43: astore          11
        //    45: aload_1        
        //    46: astore          6
        //    48: aload_1        
        //    49: aload_3        
        //    50: aload           5
        //    52: aconst_null    
        //    53: aconst_null    
        //    54: aconst_null    
        //    55: aconst_null    
        //    56: aload           7
        //    58: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    61: astore          9
        //    63: new             Ljava/util/ArrayList;
        //    66: astore          10
        //    68: aload           10
        //    70: invokespecial   java/util/ArrayList.<init>:()V
        //    73: lconst_0       
        //    74: lstore          12
        //    76: aload           9
        //    78: invokeinterface android/database/Cursor.moveToNext:()Z
        //    83: istore          4
        //    85: iload           4
        //    87: ifeq            158
        //    90: iconst_0       
        //    91: istore          4
        //    93: aconst_null    
        //    94: astore          6
        //    96: aload           9
        //    98: iconst_0       
        //    99: invokeinterface android/database/Cursor.getLong:(I)J
        //   104: lstore          14
        //   106: lload           14
        //   108: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   111: astore          6
        //   113: aload           10
        //   115: aload           6
        //   117: invokevirtual   java/util/ArrayList.contains:(Ljava/lang/Object;)Z
        //   120: istore          16
        //   122: iload           16
        //   124: ifne            365
        //   127: aload           10
        //   129: aload           6
        //   131: invokevirtual   java/util/ArrayList.add:(Ljava/lang/Object;)Z
        //   134: pop            
        //   135: aload           6
        //   137: invokevirtual   java/lang/Long.longValue:()J
        //   140: lstore          14
        //   142: lload           12
        //   144: lload           14
        //   146: invokestatic    java/lang/Math.max:(JJ)J
        //   149: lstore          14
        //   151: lload           14
        //   153: lstore          12
        //   155: goto            76
        //   158: aload           9
        //   160: invokeinterface android/database/Cursor.close:()V
        //   165: ldc_w           "DROP TABLE IF EXISTS workspaceScreens"
        //   168: astore          6
        //   170: aload_1        
        //   171: aload           6
        //   173: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   176: iconst_0       
        //   177: istore          4
        //   179: aconst_null    
        //   180: astore          6
        //   182: aload_0        
        //   183: aload_1        
        //   184: iconst_0       
        //   185: invokespecial   com/android/launcher3/LauncherProvider$DatabaseHelper.addWorkspacesTable:(Landroid/database/sqlite/SQLiteDatabase;Z)V
        //   188: aload           10
        //   190: invokevirtual   java/util/ArrayList.size:()I
        //   193: istore          8
        //   195: iconst_0       
        //   196: istore          16
        //   198: aconst_null    
        //   199: astore_3       
        //   200: iload           16
        //   202: iload           8
        //   204: if_icmpge       340
        //   207: new             Landroid/content/ContentValues;
        //   210: astore          11
        //   212: aload           11
        //   214: invokespecial   android/content/ContentValues.<init>:()V
        //   217: ldc             "_id"
        //   219: astore          7
        //   221: aload           10
        //   223: iload           16
        //   225: invokevirtual   java/util/ArrayList.get:(I)Ljava/lang/Object;
        //   228: astore          6
        //   230: aload           6
        //   232: checkcast       Ljava/lang/Long;
        //   235: astore          6
        //   237: aload           11
        //   239: aload           7
        //   241: aload           6
        //   243: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Long;)V
        //   246: ldc             "screenRank"
        //   248: astore          6
        //   250: iload           16
        //   252: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   255: astore          7
        //   257: aload           11
        //   259: aload           6
        //   261: aload           7
        //   263: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //   266: aload           11
        //   268: invokestatic    com/android/launcher3/LauncherProvider.addModifiedTime:(Landroid/content/ContentValues;)V
        //   271: ldc             "workspaceScreens"
        //   273: astore          6
        //   275: aconst_null    
        //   276: astore          7
        //   278: aload_1        
        //   279: aload           6
        //   281: aconst_null    
        //   282: aload           11
        //   284: invokevirtual   android/database/sqlite/SQLiteDatabase.insertOrThrow:(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
        //   287: pop2           
        //   288: iload           16
        //   290: iconst_1       
        //   291: iadd           
        //   292: istore          4
        //   294: iload           4
        //   296: istore          16
        //   298: goto            200
        //   301: astore          6
        //   303: aload           9
        //   305: invokeinterface android/database/Cursor.close:()V
        //   310: aload           6
        //   312: athrow         
        //   313: astore          6
        //   315: ldc             "LauncherProvider"
        //   317: astore_3       
        //   318: aload           6
        //   320: invokevirtual   android/database/SQLException.getMessage:()Ljava/lang/String;
        //   323: astore          5
        //   325: aload_3        
        //   326: aload           5
        //   328: aload           6
        //   330: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   333: pop            
        //   334: aload_1        
        //   335: invokevirtual   android/database/sqlite/SQLiteDatabase.endTransaction:()V
        //   338: iconst_0       
        //   339: ireturn        
        //   340: aload_1        
        //   341: invokevirtual   android/database/sqlite/SQLiteDatabase.setTransactionSuccessful:()V
        //   344: aload_0        
        //   345: lload           12
        //   347: putfield        com/android/launcher3/LauncherProvider$DatabaseHelper.mMaxScreenId:J
        //   350: aload_1        
        //   351: invokevirtual   android/database/sqlite/SQLiteDatabase.endTransaction:()V
        //   354: iload_2        
        //   355: ireturn        
        //   356: astore          6
        //   358: aload_1        
        //   359: invokevirtual   android/database/sqlite/SQLiteDatabase.endTransaction:()V
        //   362: aload           6
        //   364: athrow         
        //   365: lload           12
        //   367: lstore          14
        //   369: goto            151
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                           
        //  -----  -----  -----  -----  -------------------------------
        //  12     17     313    340    Landroid/database/SQLException;
        //  12     17     356    365    Any
        //  26     29     313    340    Landroid/database/SQLException;
        //  26     29     356    365    Any
        //  56     61     313    340    Landroid/database/SQLException;
        //  56     61     356    365    Any
        //  63     66     313    340    Landroid/database/SQLException;
        //  63     66     356    365    Any
        //  68     73     313    340    Landroid/database/SQLException;
        //  68     73     356    365    Any
        //  76     83     301    313    Any
        //  98     104    301    313    Any
        //  106    111    301    313    Any
        //  115    120    301    313    Any
        //  129    135    301    313    Any
        //  135    140    301    313    Any
        //  144    149    301    313    Any
        //  158    165    313    340    Landroid/database/SQLException;
        //  158    165    356    365    Any
        //  171    176    313    340    Landroid/database/SQLException;
        //  171    176    356    365    Any
        //  184    188    313    340    Landroid/database/SQLException;
        //  184    188    356    365    Any
        //  188    193    313    340    Landroid/database/SQLException;
        //  188    193    356    365    Any
        //  207    210    313    340    Landroid/database/SQLException;
        //  207    210    356    365    Any
        //  212    217    313    340    Landroid/database/SQLException;
        //  212    217    356    365    Any
        //  223    228    313    340    Landroid/database/SQLException;
        //  223    228    356    365    Any
        //  230    235    313    340    Landroid/database/SQLException;
        //  230    235    356    365    Any
        //  241    246    313    340    Landroid/database/SQLException;
        //  241    246    356    365    Any
        //  250    255    313    340    Landroid/database/SQLException;
        //  250    255    356    365    Any
        //  261    266    313    340    Landroid/database/SQLException;
        //  261    266    356    365    Any
        //  266    271    313    340    Landroid/database/SQLException;
        //  266    271    356    365    Any
        //  282    288    313    340    Landroid/database/SQLException;
        //  282    288    356    365    Any
        //  303    310    313    340    Landroid/database/SQLException;
        //  303    310    356    365    Any
        //  310    313    313    340    Landroid/database/SQLException;
        //  310    313    356    365    Any
        //  318    323    356    365    Any
        //  328    334    356    365    Any
        //  340    344    313    340    Landroid/database/SQLException;
        //  340    344    356    365    Any
        //  345    350    313    340    Landroid/database/SQLException;
        //  345    350    356    365    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0340:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:317)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:238)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:123)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    public void removeGhostWidgets(final SQLiteDatabase p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokevirtual   com/android/launcher3/LauncherProvider$DatabaseHelper.newLauncherWidgetHost:()Landroid/appwidget/AppWidgetHost;
        //     4: astore_2       
        //     5: ldc_w           Landroid/appwidget/AppWidgetHost;.class
        //     8: astore_3       
        //     9: ldc_w           "getAppWidgetIds"
        //    12: astore          4
        //    14: iconst_0       
        //    15: istore          5
        //    17: aconst_null    
        //    18: astore          6
        //    20: iconst_0       
        //    21: anewarray       Ljava/lang/Class;
        //    24: astore          6
        //    26: aload_3        
        //    27: aload           4
        //    29: aload           6
        //    31: invokevirtual   java/lang/Class.getDeclaredMethod:(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
        //    34: astore_3       
        //    35: iconst_1       
        //    36: istore          7
        //    38: aload_3        
        //    39: iload           7
        //    41: invokevirtual   java/lang/reflect/Method.setAccessible:(Z)V
        //    44: iconst_0       
        //    45: istore          7
        //    47: aconst_null    
        //    48: astore          4
        //    50: iconst_0       
        //    51: anewarray       Ljava/lang/Object;
        //    54: astore          4
        //    56: aload_3        
        //    57: aload_2        
        //    58: aload           4
        //    60: invokevirtual   java/lang/reflect/Method.invoke:(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
        //    63: astore_3       
        //    64: aload_3        
        //    65: astore          8
        //    67: aload_3        
        //    68: checkcast       [I
        //    71: astore          8
        //    73: aload           8
        //    75: astore          9
        //    77: ldc             "favorites"
        //    79: astore          4
        //    81: iconst_1       
        //    82: istore          10
        //    84: iload           10
        //    86: anewarray       Ljava/lang/String;
        //    89: astore          6
        //    91: ldc_w           "appWidgetId"
        //    94: astore_3       
        //    95: iconst_0       
        //    96: istore          11
        //    98: aconst_null    
        //    99: astore          12
        //   101: aload           6
        //   103: iconst_0       
        //   104: aload_3        
        //   105: aastore        
        //   106: ldc_w           "itemType=4"
        //   109: astore          12
        //   111: iconst_0       
        //   112: istore          13
        //   114: aconst_null    
        //   115: astore          14
        //   117: aconst_null    
        //   118: astore          15
        //   120: aconst_null    
        //   121: astore          16
        //   123: aload_1        
        //   124: astore_3       
        //   125: aload_1        
        //   126: aload           4
        //   128: aload           6
        //   130: aload           12
        //   132: aconst_null    
        //   133: aconst_null    
        //   134: aconst_null    
        //   135: aconst_null    
        //   136: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //   139: astore_3       
        //   140: new             Ljava/util/HashSet;
        //   143: astore          4
        //   145: aload           4
        //   147: invokespecial   java/util/HashSet.<init>:()V
        //   150: aload_3        
        //   151: invokeinterface android/database/Cursor.moveToNext:()Z
        //   156: istore          5
        //   158: iload           5
        //   160: ifeq            228
        //   163: iconst_0       
        //   164: istore          5
        //   166: aconst_null    
        //   167: astore          6
        //   169: aload_3        
        //   170: iconst_0       
        //   171: invokeinterface android/database/Cursor.getInt:(I)I
        //   176: istore          5
        //   178: iload           5
        //   180: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   183: astore          6
        //   185: aload           4
        //   187: aload           6
        //   189: invokevirtual   java/util/HashSet.add:(Ljava/lang/Object;)Z
        //   192: pop            
        //   193: goto            150
        //   196: astore_3       
        //   197: ldc             "LauncherProvider"
        //   199: astore          4
        //   201: ldc_w           "Error getting widgets list"
        //   204: astore          6
        //   206: aload           4
        //   208: aload           6
        //   210: aload_3        
        //   211: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   214: pop            
        //   215: return         
        //   216: astore_3       
        //   217: ldc             "LauncherProvider"
        //   219: ldc_w           "getAppWidgetIds not supported"
        //   222: aload_3        
        //   223: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   226: pop            
        //   227: return         
        //   228: aload_3        
        //   229: invokeinterface android/database/Cursor.close:()V
        //   234: aload           9
        //   236: arraylength    
        //   237: istore          5
        //   239: iconst_0       
        //   240: istore          10
        //   242: aconst_null    
        //   243: astore_3       
        //   244: iload           10
        //   246: iload           5
        //   248: if_icmpge       215
        //   251: aload           9
        //   253: iload           10
        //   255: iaload         
        //   256: istore          11
        //   258: iload           11
        //   260: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   263: astore          14
        //   265: aload           4
        //   267: aload           14
        //   269: invokevirtual   java/util/HashSet.contains:(Ljava/lang/Object;)Z
        //   272: istore          13
        //   274: iload           13
        //   276: ifne            336
        //   279: ldc             "LauncherProvider"
        //   281: astore          14
        //   283: new             Ljava/lang/StringBuilder;
        //   286: astore          15
        //   288: aload           15
        //   290: invokespecial   java/lang/StringBuilder.<init>:()V
        //   293: ldc_w           "Deleting invalid widget "
        //   296: astore          16
        //   298: aload           15
        //   300: aload           16
        //   302: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   305: astore          15
        //   307: aload           15
        //   309: iload           11
        //   311: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //   314: astore          15
        //   316: aload           15
        //   318: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   321: astore          15
        //   323: aload           14
        //   325: aload           15
        //   327: invokestatic    com/android/launcher3/logging/FileLog.d:(Ljava/lang/String;Ljava/lang/String;)V
        //   330: aload_2        
        //   331: iload           11
        //   333: invokevirtual   android/appwidget/AppWidgetHost.deleteAppWidgetId:(I)V
        //   336: iload           10
        //   338: iconst_1       
        //   339: iadd           
        //   340: istore          10
        //   342: goto            244
        //   345: astore          12
        //   347: goto            336
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                           
        //  -----  -----  -----  -----  -------------------------------
        //  20     24     216    228    Ljava/lang/Exception;
        //  29     34     216    228    Ljava/lang/Exception;
        //  39     44     216    228    Ljava/lang/Exception;
        //  50     54     216    228    Ljava/lang/Exception;
        //  58     63     216    228    Ljava/lang/Exception;
        //  67     71     216    228    Ljava/lang/Exception;
        //  84     89     196    215    Landroid/database/SQLException;
        //  104    106    196    215    Landroid/database/SQLException;
        //  135    139    196    215    Landroid/database/SQLException;
        //  140    143    196    215    Landroid/database/SQLException;
        //  145    150    196    215    Landroid/database/SQLException;
        //  150    156    196    215    Landroid/database/SQLException;
        //  170    176    196    215    Landroid/database/SQLException;
        //  178    183    196    215    Landroid/database/SQLException;
        //  187    193    196    215    Landroid/database/SQLException;
        //  228    234    196    215    Landroid/database/SQLException;
        //  234    237    196    215    Landroid/database/SQLException;
        //  253    256    196    215    Landroid/database/SQLException;
        //  258    263    196    215    Landroid/database/SQLException;
        //  267    272    196    215    Landroid/database/SQLException;
        //  283    286    345    350    Ljava/lang/RuntimeException;
        //  283    286    196    215    Landroid/database/SQLException;
        //  288    293    345    350    Ljava/lang/RuntimeException;
        //  288    293    196    215    Landroid/database/SQLException;
        //  300    305    345    350    Ljava/lang/RuntimeException;
        //  300    305    196    215    Landroid/database/SQLException;
        //  309    314    345    350    Ljava/lang/RuntimeException;
        //  309    314    196    215    Landroid/database/SQLException;
        //  316    321    345    350    Ljava/lang/RuntimeException;
        //  316    321    196    215    Landroid/database/SQLException;
        //  325    330    345    350    Ljava/lang/RuntimeException;
        //  325    330    196    215    Landroid/database/SQLException;
        //  331    336    345    350    Ljava/lang/RuntimeException;
        //  331    336    196    215    Landroid/database/SQLException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 182, Size: 182
        //     at java.util.ArrayList.rangeCheck(Unknown Source)
        //     at java.util.ArrayList.get(Unknown Source)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3303)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3551)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3417)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3417)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3417)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3417)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3417)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3417)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3417)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:113)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:317)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:238)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:123)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    boolean updateFolderItemsRank(final SQLiteDatabase sqLiteDatabase, final boolean b) {
        final boolean b2 = true;
        sqLiteDatabase.beginTransaction();
        Label_0021: {
            if (!b) {
                break Label_0021;
            }
            final String s = "ALTER TABLE favorites ADD COLUMN rank INTEGER NOT NULL DEFAULT 0;";
            try {
                sqLiteDatabase.execSQL(s);
                final Cursor rawQuery = sqLiteDatabase.rawQuery("SELECT container, MAX(cellX) FROM favorites WHERE container IN (SELECT _id FROM favorites WHERE itemType = ?) GROUP BY container;", new String[] { Integer.toString(2) });
                try {
                    while (true) {
                        Label_0210: {
                            if (!rawQuery.moveToNext()) {
                                break Label_0210;
                            }
                            final String s2 = "UPDATE favorites SET rank=cellX+(cellY*?) WHERE container=? AND cellX IS NOT NULL AND cellY IS NOT NULL;";
                            final Object[] array = { rawQuery.getLong(1) + 1L, null };
                            final long long1 = rawQuery.getLong(0);
                            try {
                                array[1] = long1;
                                sqLiteDatabase.execSQL(s2, array);
                            }
                            catch (SQLException ex) {
                                Log.e("LauncherProvider", ex.getMessage(), (Throwable)ex);
                                return false;
                                final Cursor cursor;
                                cursor.close();
                                sqLiteDatabase.setTransactionSuccessful();
                                return b2;
                            }
                        }
                    }
                }
                catch (SQLException ex2) {}
            }
            catch (SQLException ex3) {}
            finally {
                sqLiteDatabase.endTransaction();
            }
        }
    }
}
