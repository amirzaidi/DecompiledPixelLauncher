// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.os.Message;
import com.android.launcher3.util.Preconditions;
import android.database.sqlite.SQLiteQueryBuilder;
import com.android.launcher3.graphics.IconShapeOverride;
import com.android.launcher3.logging.FileLog;
import android.os.Handler$Callback;
import android.database.ContentObserver;
import android.content.ContentUris;
import android.text.TextUtils;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import com.android.launcher3.provider.RestoreDbTask;
import java.io.Serializable;
import android.net.Uri;
import android.content.ContentProviderResult;
import android.os.Process;
import android.os.Binder;
import android.database.Cursor;
import java.util.ArrayList;
import android.database.sqlite.SQLiteDatabase;
import android.content.res.Resources;
import android.os.Bundle;
import android.content.Context;
import android.content.pm.PackageManager$NameNotFoundException;
import android.util.Log;
import android.os.UserManager;
import android.appwidget.AppWidgetHost;
import android.content.ContentValues;
import android.os.Handler;
import android.content.ContentProvider;

public class LauncherProvider extends ContentProvider
{
    public static final String AUTHORITY;
    private Handler mListenerHandler;
    private final LauncherProvider$ChangeListenerWrapper mListenerWrapper;
    protected LauncherProvider$DatabaseHelper mOpenHelper;
    
    static {
        AUTHORITY = "com.google.android.apps.nexuslauncher.settings".intern();
    }
    
    public LauncherProvider() {
        this.mListenerWrapper = new LauncherProvider$ChangeListenerWrapper(null);
    }
    
    static void addModifiedTime(final ContentValues contentValues) {
        contentValues.put("modified", System.currentTimeMillis());
    }
    
    private void clearFlagEmptyDbCreated() {
        Utilities.getPrefs(this.getContext()).edit().remove("EMPTY_DATABASE_CREATED").commit();
    }
    
    private AutoInstallsLayout createWorkspaceLoaderFromAppRestriction(final AppWidgetHost appWidgetHost) {
        final Context context = this.getContext();
        final Bundle applicationRestrictions = ((UserManager)context.getSystemService("user")).getApplicationRestrictions(context.getPackageName());
        if (applicationRestrictions == null) {
            return null;
        }
        final String string = applicationRestrictions.getString("workspace.configuration.package.name");
        if (string != null) {
            try {
                final Resources resourcesForApplication = context.getPackageManager().getResourcesForApplication(string);
                try {
                    return AutoInstallsLayout.get(context, string, resourcesForApplication, appWidgetHost, this.mOpenHelper);
                }
                catch (PackageManager$NameNotFoundException ex) {
                    Log.e("LauncherProvider", "Target package for restricted profile not found", (Throwable)ex);
                    return null;
                }
            }
            catch (PackageManager$NameNotFoundException ex2) {}
        }
        return null;
    }
    
    static long dbInsertAndCheck(final LauncherProvider$DatabaseHelper launcherProvider$DatabaseHelper, final SQLiteDatabase sqLiteDatabase, final String s, final String s2, final ContentValues contentValues) {
        if (contentValues == null) {
            throw new RuntimeException("Error: attempting to insert null values");
        }
        if (!contentValues.containsKey("_id")) {
            throw new RuntimeException("Error: attempting to add item without specifying an id");
        }
        launcherProvider$DatabaseHelper.checkId(s, contentValues);
        return sqLiteDatabase.insert(s, s2, contentValues);
    }
    
    private ArrayList deleteEmptyFolders() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore_1       
        //     2: new             Ljava/util/ArrayList;
        //     5: astore_2       
        //     6: aload_2        
        //     7: invokespecial   java/util/ArrayList.<init>:()V
        //    10: aload_0        
        //    11: getfield        com/android/launcher3/LauncherProvider.mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
        //    14: invokevirtual   com/android/launcher3/LauncherProvider$DatabaseHelper.getWritableDatabase:()Landroid/database/sqlite/SQLiteDatabase;
        //    17: astore_3       
        //    18: new             Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
        //    21: astore          4
        //    23: aload           4
        //    25: aload_3        
        //    26: invokespecial   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.<init>:(Landroid/database/sqlite/SQLiteDatabase;)V
        //    29: ldc             "itemType = 2 AND _id NOT IN (SELECT container FROM favorites)"
        //    31: astore          5
        //    33: ldc             "favorites"
        //    35: astore          6
        //    37: iconst_1       
        //    38: istore          7
        //    40: iload           7
        //    42: anewarray       Ljava/lang/String;
        //    45: astore          8
        //    47: ldc             "_id"
        //    49: astore          9
        //    51: aload           8
        //    53: iconst_0       
        //    54: aload           9
        //    56: aastore        
        //    57: aconst_null    
        //    58: astore          9
        //    60: aload_3        
        //    61: aload           6
        //    63: aload           8
        //    65: aload           5
        //    67: aconst_null    
        //    68: aconst_null    
        //    69: aconst_null    
        //    70: aconst_null    
        //    71: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    74: astore          6
        //    76: iconst_0       
        //    77: istore          7
        //    79: aconst_null    
        //    80: astore          8
        //    82: aload           6
        //    84: iconst_0       
        //    85: aload_2        
        //    86: invokestatic    com/android/launcher3/provider/LauncherDbUtils.iterateCursor:(Landroid/database/Cursor;ILjava/util/Collection;)Ljava/util/Collection;
        //    89: pop            
        //    90: aload           6
        //    92: ifnull          102
        //    95: aload           6
        //    97: invokeinterface android/database/Cursor.close:()V
        //   102: iconst_0       
        //   103: istore          10
        //   105: aconst_null    
        //   106: astore          6
        //   108: aload           6
        //   110: ifnull          249
        //   113: aload           6
        //   115: athrow         
        //   116: astore_3       
        //   117: aload           4
        //   119: astore_1       
        //   120: aload_3        
        //   121: athrow         
        //   122: astore          6
        //   124: aload_1        
        //   125: astore          4
        //   127: aload_3        
        //   128: astore_1       
        //   129: aload           6
        //   131: astore_3       
        //   132: aload           4
        //   134: ifnull          142
        //   137: aload           4
        //   139: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.close:()V
        //   142: aload_1        
        //   143: ifnull          341
        //   146: aload_1        
        //   147: athrow         
        //   148: astore_3       
        //   149: ldc             "LauncherProvider"
        //   151: astore          6
        //   153: aload_3        
        //   154: invokevirtual   android/database/SQLException.getMessage:()Ljava/lang/String;
        //   157: astore          8
        //   159: aload           6
        //   161: aload           8
        //   163: aload_3        
        //   164: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   167: pop            
        //   168: aload_2        
        //   169: invokevirtual   java/util/ArrayList.clear:()V
        //   172: aload_2        
        //   173: areturn        
        //   174: astore          6
        //   176: goto            108
        //   179: astore_3       
        //   180: iconst_0       
        //   181: istore          10
        //   183: aconst_null    
        //   184: astore          6
        //   186: aload_3        
        //   187: athrow         
        //   188: astore          11
        //   190: aload_3        
        //   191: astore          8
        //   193: aload           11
        //   195: astore_3       
        //   196: aload           6
        //   198: ifnull          208
        //   201: aload           6
        //   203: invokeinterface android/database/Cursor.close:()V
        //   208: aload           8
        //   210: ifnull          247
        //   213: aload           8
        //   215: athrow         
        //   216: astore          6
        //   218: aload           8
        //   220: ifnonnull       230
        //   223: aload           6
        //   225: astore          8
        //   227: goto            208
        //   230: aload           8
        //   232: aload           6
        //   234: if_acmpeq       208
        //   237: aload           8
        //   239: aload           6
        //   241: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   244: goto            208
        //   247: aload_3        
        //   248: athrow         
        //   249: aload_2        
        //   250: invokevirtual   java/util/ArrayList.isEmpty:()Z
        //   253: istore          10
        //   255: iload           10
        //   257: ifne            289
        //   260: ldc             "favorites"
        //   262: astore          6
        //   264: ldc             "_id"
        //   266: astore          8
        //   268: aload           8
        //   270: aload_2        
        //   271: invokestatic    com/android/launcher3/Utilities.createDbSelectionQuery:(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
        //   274: astore          8
        //   276: aconst_null    
        //   277: astore          5
        //   279: aload_3        
        //   280: aload           6
        //   282: aload           8
        //   284: aconst_null    
        //   285: invokevirtual   android/database/sqlite/SQLiteDatabase.delete:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
        //   288: pop            
        //   289: aload           4
        //   291: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.commit:()V
        //   294: aload           4
        //   296: ifnull          304
        //   299: aload           4
        //   301: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.close:()V
        //   304: aload_1        
        //   305: ifnull          172
        //   308: aload_1        
        //   309: athrow         
        //   310: astore_1       
        //   311: goto            304
        //   314: astore          6
        //   316: aload_1        
        //   317: ifnonnull       326
        //   320: aload           6
        //   322: astore_1       
        //   323: goto            142
        //   326: aload_1        
        //   327: aload           6
        //   329: if_acmpeq       142
        //   332: aload_1        
        //   333: aload           6
        //   335: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   338: goto            142
        //   341: aload_3        
        //   342: athrow         
        //   343: astore_3       
        //   344: goto            120
        //   347: astore_3       
        //   348: goto            186
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                           
        //  -----  -----  -----  -----  -------------------------------
        //  18     21     343    347    Any
        //  25     29     343    347    Any
        //  40     45     179    186    Any
        //  54     57     179    186    Any
        //  70     74     179    186    Any
        //  85     90     347    351    Any
        //  95     102    174    179    Any
        //  113    116    116    120    Any
        //  120    122    122    343    Any
        //  137    142    314    341    Any
        //  146    148    148    172    Landroid/database/SQLException;
        //  186    188    188    249    Any
        //  201    208    216    247    Any
        //  213    216    116    120    Any
        //  239    244    116    120    Any
        //  247    249    116    120    Any
        //  249    253    116    120    Any
        //  270    274    116    120    Any
        //  284    289    116    120    Any
        //  289    294    116    120    Any
        //  299    304    310    314    Any
        //  308    310    148    172    Landroid/database/SQLException;
        //  333    338    148    172    Landroid/database/SQLException;
        //  341    343    148    172    Landroid/database/SQLException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0142:
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
    
    private DefaultLayoutParser getDefaultLayoutParser(final AppWidgetHost appWidgetHost) {
        return new DefaultLayoutParser(this.getContext(), appWidgetHost, this.mOpenHelper, this.getContext().getResources(), LauncherAppState.getIDP(this.getContext()).defaultLayoutId);
    }
    
    static long getMaxId(final SQLiteDatabase sqLiteDatabase, final String s) {
        final long n = -1;
        final Cursor rawQuery = sqLiteDatabase.rawQuery("SELECT MAX(_id) FROM " + s, (String[])null);
        long long1;
        if (rawQuery != null) {
            if (rawQuery.moveToNext()) {
                long1 = rawQuery.getLong(0);
            }
            else {
                long1 = n;
            }
        }
        else {
            long1 = n;
        }
        if (rawQuery != null) {
            rawQuery.close();
        }
        if (long1 == n) {
            throw new RuntimeException("Error: could not query max id in " + s);
        }
        return long1;
    }
    
    private boolean initializeExternalAdd(final ContentValues p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_1       
        //     1: istore_2       
        //     2: aconst_null    
        //     3: astore_3       
        //     4: aload_0        
        //     5: getfield        com/android/launcher3/LauncherProvider.mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
        //     8: invokevirtual   com/android/launcher3/LauncherProvider$DatabaseHelper.generateNewItemId:()J
        //    11: lstore          4
        //    13: lload           4
        //    15: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //    18: astore          6
        //    20: aload_1        
        //    21: ldc             "_id"
        //    23: aload           6
        //    25: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Long;)V
        //    28: aload_1        
        //    29: ldc_w           "itemType"
        //    32: invokevirtual   android/content/ContentValues.getAsInteger:(Ljava/lang/String;)Ljava/lang/Integer;
        //    35: astore          7
        //    37: aload           7
        //    39: ifnull          185
        //    42: aload           7
        //    44: invokevirtual   java/lang/Integer.intValue:()I
        //    47: istore          8
        //    49: iconst_4       
        //    50: istore          9
        //    52: iload           8
        //    54: iload           9
        //    56: if_icmpne       185
        //    59: ldc_w           "appWidgetId"
        //    62: astore          7
        //    64: aload_1        
        //    65: aload           7
        //    67: invokevirtual   android/content/ContentValues.containsKey:(Ljava/lang/String;)Z
        //    70: iconst_1       
        //    71: ixor           
        //    72: istore          8
        //    74: iload           8
        //    76: ifeq            185
        //    79: aload_0        
        //    80: invokevirtual   com/android/launcher3/LauncherProvider.getContext:()Landroid/content/Context;
        //    83: invokestatic    android/appwidget/AppWidgetManager.getInstance:(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;
        //    86: astore          7
        //    88: aload_1        
        //    89: ldc_w           "appWidgetProvider"
        //    92: invokevirtual   android/content/ContentValues.getAsString:(Ljava/lang/String;)Ljava/lang/String;
        //    95: invokestatic    android/content/ComponentName.unflattenFromString:(Ljava/lang/String;)Landroid/content/ComponentName;
        //    98: astore          6
        //   100: aload           6
        //   102: ifnull          183
        //   105: aload_0        
        //   106: getfield        com/android/launcher3/LauncherProvider.mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
        //   109: astore          10
        //   111: aload           10
        //   113: invokevirtual   com/android/launcher3/LauncherProvider$DatabaseHelper.newLauncherWidgetHost:()Landroid/appwidget/AppWidgetHost;
        //   116: astore          10
        //   118: aload           10
        //   120: invokevirtual   android/appwidget/AppWidgetHost.allocateAppWidgetId:()I
        //   123: istore          11
        //   125: ldc_w           "appWidgetId"
        //   128: astore          12
        //   130: iload           11
        //   132: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   135: astore          13
        //   137: aload_1        
        //   138: aload           12
        //   140: aload           13
        //   142: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //   145: aload           7
        //   147: iload           11
        //   149: aload           6
        //   151: invokevirtual   android/appwidget/AppWidgetManager.bindAppWidgetIdIfAllowed:(ILandroid/content/ComponentName;)Z
        //   154: istore          8
        //   156: iload           8
        //   158: ifne            185
        //   161: aload           10
        //   163: iload           11
        //   165: invokevirtual   android/appwidget/AppWidgetHost.deleteAppWidgetId:(I)V
        //   168: iconst_0       
        //   169: ireturn        
        //   170: astore_3       
        //   171: ldc             "LauncherProvider"
        //   173: ldc_w           "Failed to initialize external widget"
        //   176: aload_3        
        //   177: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   180: pop            
        //   181: iconst_0       
        //   182: ireturn        
        //   183: iconst_0       
        //   184: ireturn        
        //   185: aload_1        
        //   186: ldc_w           "screen"
        //   189: invokevirtual   android/content/ContentValues.getAsLong:(Ljava/lang/String;)Ljava/lang/Long;
        //   192: astore          7
        //   194: aload           7
        //   196: invokevirtual   java/lang/Long.longValue:()J
        //   199: lstore          4
        //   201: aload_0        
        //   202: getfield        com/android/launcher3/LauncherProvider.mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
        //   205: astore          7
        //   207: aload           7
        //   209: invokevirtual   com/android/launcher3/LauncherProvider$DatabaseHelper.getWritableDatabase:()Landroid/database/sqlite/SQLiteDatabase;
        //   212: astore          7
        //   214: ldc_w           "INSERT OR IGNORE INTO workspaceScreens (_id, screenRank) select ?, (ifnull(MAX(screenRank), -1)+1) from workspaceScreens"
        //   217: astore          14
        //   219: aload           7
        //   221: aload           14
        //   223: invokevirtual   android/database/sqlite/SQLiteDatabase.compileStatement:(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
        //   226: astore_3       
        //   227: iconst_1       
        //   228: istore          8
        //   230: aload_3        
        //   231: iload           8
        //   233: lload           4
        //   235: invokevirtual   android/database/sqlite/SQLiteStatement.bindLong:(IJ)V
        //   238: new             Landroid/content/ContentValues;
        //   241: astore          7
        //   243: aload           7
        //   245: invokespecial   android/content/ContentValues.<init>:()V
        //   248: ldc             "_id"
        //   250: astore          6
        //   252: aload_3        
        //   253: invokevirtual   android/database/sqlite/SQLiteStatement.executeInsert:()J
        //   256: lstore          15
        //   258: lload           15
        //   260: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   263: astore          10
        //   265: aload           7
        //   267: aload           6
        //   269: aload           10
        //   271: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Long;)V
        //   274: aload_0        
        //   275: getfield        com/android/launcher3/LauncherProvider.mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
        //   278: astore          6
        //   280: ldc_w           "workspaceScreens"
        //   283: astore          10
        //   285: aload           6
        //   287: aload           10
        //   289: aload           7
        //   291: invokevirtual   com/android/launcher3/LauncherProvider$DatabaseHelper.checkId:(Ljava/lang/String;Landroid/content/ContentValues;)V
        //   294: aload_3        
        //   295: invokestatic    com/android/launcher3/Utilities.closeSilently:(Ljava/io/Closeable;)V
        //   298: iload_2        
        //   299: ireturn        
        //   300: astore          7
        //   302: aload_3        
        //   303: invokestatic    com/android/launcher3/Utilities.closeSilently:(Ljava/io/Closeable;)V
        //   306: iconst_0       
        //   307: ireturn        
        //   308: astore          17
        //   310: iconst_0       
        //   311: istore          8
        //   313: aconst_null    
        //   314: astore          7
        //   316: aload           17
        //   318: astore_3       
        //   319: aload           7
        //   321: invokestatic    com/android/launcher3/Utilities.closeSilently:(Ljava/io/Closeable;)V
        //   324: aload_3        
        //   325: athrow         
        //   326: astore          17
        //   328: aload_3        
        //   329: astore          7
        //   331: aload           17
        //   333: astore_3       
        //   334: goto            319
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                        
        //  -----  -----  -----  -----  ----------------------------
        //  105    109    170    183    Ljava/lang/RuntimeException;
        //  111    116    170    183    Ljava/lang/RuntimeException;
        //  118    123    170    183    Ljava/lang/RuntimeException;
        //  130    135    170    183    Ljava/lang/RuntimeException;
        //  140    145    170    183    Ljava/lang/RuntimeException;
        //  149    154    170    183    Ljava/lang/RuntimeException;
        //  163    168    170    183    Ljava/lang/RuntimeException;
        //  201    205    300    308    Ljava/lang/Exception;
        //  201    205    308    319    Any
        //  207    212    300    308    Ljava/lang/Exception;
        //  207    212    308    319    Any
        //  221    226    300    308    Ljava/lang/Exception;
        //  221    226    308    319    Any
        //  233    238    300    308    Ljava/lang/Exception;
        //  233    238    326    337    Any
        //  238    241    300    308    Ljava/lang/Exception;
        //  238    241    326    337    Any
        //  243    248    300    308    Ljava/lang/Exception;
        //  243    248    326    337    Any
        //  252    256    300    308    Ljava/lang/Exception;
        //  252    256    326    337    Any
        //  258    263    300    308    Ljava/lang/Exception;
        //  258    263    326    337    Any
        //  269    274    300    308    Ljava/lang/Exception;
        //  269    274    326    337    Any
        //  274    278    300    308    Ljava/lang/Exception;
        //  274    278    326    337    Any
        //  289    294    300    308    Ljava/lang/Exception;
        //  289    294    326    337    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 166, Size: 166
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
    
    private void loadDefaultFavoritesIfNecessary() {
        synchronized (this) {
            if (Utilities.getPrefs(this.getContext()).getBoolean("EMPTY_DATABASE_CREATED", false)) {
                Log.d("LauncherProvider", "loading default workspace");
                final AppWidgetHost launcherWidgetHost = this.mOpenHelper.newLauncherWidgetHost();
                AutoInstallsLayout autoInstallsLayout = this.createWorkspaceLoaderFromAppRestriction(launcherWidgetHost);
                if (autoInstallsLayout == null) {
                    autoInstallsLayout = AutoInstallsLayout.get(this.getContext(), launcherWidgetHost, this.mOpenHelper);
                }
                if (autoInstallsLayout == null) {
                    final Partner value = Partner.get(this.getContext().getPackageManager());
                    if (value != null && value.hasDefaultLayout()) {
                        final Resources resources = value.getResources();
                        final int identifier = resources.getIdentifier("partner_default_layout", "xml", value.getPackageName());
                        if (identifier != 0) {
                            autoInstallsLayout = new DefaultLayoutParser(this.getContext(), launcherWidgetHost, this.mOpenHelper, resources, identifier);
                        }
                    }
                }
                boolean b;
                if (autoInstallsLayout != null) {
                    b = true;
                }
                else {
                    b = false;
                }
                if (autoInstallsLayout == null) {
                    autoInstallsLayout = this.getDefaultLayoutParser(launcherWidgetHost);
                }
                this.mOpenHelper.createEmptyDB(this.mOpenHelper.getWritableDatabase());
                if (this.mOpenHelper.loadFavorites(this.mOpenHelper.getWritableDatabase(), autoInstallsLayout) <= 0 && b) {
                    this.mOpenHelper.createEmptyDB(this.mOpenHelper.getWritableDatabase());
                    this.mOpenHelper.loadFavorites(this.mOpenHelper.getWritableDatabase(), this.getDefaultLayoutParser(launcherWidgetHost));
                }
                this.clearFlagEmptyDbCreated();
            }
        }
    }
    
    private void reloadLauncherIfExternal() {
        if (Utilities.ATLEAST_MARSHMALLOW && Binder.getCallingPid() != Process.myPid()) {
            final LauncherAppState instanceNoCreate = LauncherAppState.getInstanceNoCreate();
            if (instanceNoCreate != null) {
                instanceNoCreate.getModel().forceReload();
            }
        }
    }
    
    public ContentProviderResult[] applyBatch(final ArrayList p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore_2       
        //     2: aload_0        
        //     3: invokevirtual   com/android/launcher3/LauncherProvider.createDbIfNotExists:()V
        //     6: new             Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
        //     9: astore_3       
        //    10: aload_0        
        //    11: getfield        com/android/launcher3/LauncherProvider.mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
        //    14: astore          4
        //    16: aload           4
        //    18: invokevirtual   com/android/launcher3/LauncherProvider$DatabaseHelper.getWritableDatabase:()Landroid/database/sqlite/SQLiteDatabase;
        //    21: astore          4
        //    23: aload_3        
        //    24: aload           4
        //    26: invokespecial   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.<init>:(Landroid/database/sqlite/SQLiteDatabase;)V
        //    29: aload_0        
        //    30: aload_1        
        //    31: invokespecial   android/content/ContentProvider.applyBatch:(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
        //    34: astore          4
        //    36: aload_3        
        //    37: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.commit:()V
        //    40: aload_0        
        //    41: invokespecial   com/android/launcher3/LauncherProvider.reloadLauncherIfExternal:()V
        //    44: aload_3        
        //    45: ifnull          52
        //    48: aload_3        
        //    49: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.close:()V
        //    52: aload_2        
        //    53: ifnull          62
        //    56: aload_2        
        //    57: athrow         
        //    58: astore_2       
        //    59: goto            52
        //    62: aload           4
        //    64: areturn        
        //    65: astore          4
        //    67: aconst_null    
        //    68: astore_3       
        //    69: aload           4
        //    71: athrow         
        //    72: astore          5
        //    74: aload           4
        //    76: astore_2       
        //    77: aload           5
        //    79: astore          4
        //    81: aload_3        
        //    82: ifnull          89
        //    85: aload_3        
        //    86: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.close:()V
        //    89: aload_2        
        //    90: ifnull          118
        //    93: aload_2        
        //    94: athrow         
        //    95: astore_3       
        //    96: aload_2        
        //    97: ifnonnull       105
        //   100: aload_3        
        //   101: astore_2       
        //   102: goto            89
        //   105: aload_2        
        //   106: aload_3        
        //   107: if_acmpeq       89
        //   110: aload_2        
        //   111: aload_3        
        //   112: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   115: goto            89
        //   118: aload           4
        //   120: athrow         
        //   121: astore          4
        //   123: goto            69
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  6      9      65     72     Any
        //  10     14     65     72     Any
        //  16     21     65     72     Any
        //  24     29     65     72     Any
        //  30     34     121    72     Any
        //  36     40     121    72     Any
        //  40     44     121    72     Any
        //  48     52     58     62     Any
        //  69     72     72     121    Any
        //  85     89     95     118    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.OutOfMemoryError: Java heap space
        //     at java.util.Arrays.copyOf(Unknown Source)
        //     at java.util.ArrayList.grow(Unknown Source)
        //     at java.util.ArrayList.ensureExplicitCapacity(Unknown Source)
        //     at java.util.ArrayList.ensureCapacityInternal(Unknown Source)
        //     at java.util.ArrayList.add(Unknown Source)
        //     at com.strobel.decompiler.ast.AstBuilder$FinallyInlining.collectNodes(AstBuilder.java:4624)
        //     at com.strobel.decompiler.ast.AstBuilder$FinallyInlining.processFinally(AstBuilder.java:4354)
        //     at com.strobel.decompiler.ast.AstBuilder$FinallyInlining.runCore(AstBuilder.java:4317)
        //     at com.strobel.decompiler.ast.AstBuilder$FinallyInlining.run(AstBuilder.java:4277)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:100)
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
    
    public int bulkInsert(final Uri p0, final ContentValues[] p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore_3       
        //     2: aload_0        
        //     3: invokevirtual   com/android/launcher3/LauncherProvider.createDbIfNotExists:()V
        //     6: new             Lcom/android/launcher3/LauncherProvider$SqlArguments;
        //     9: astore          4
        //    11: aload           4
        //    13: aload_1        
        //    14: invokespecial   com/android/launcher3/LauncherProvider$SqlArguments.<init>:(Landroid/net/Uri;)V
        //    17: aload_0        
        //    18: getfield        com/android/launcher3/LauncherProvider.mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
        //    21: astore          5
        //    23: aload           5
        //    25: invokevirtual   com/android/launcher3/LauncherProvider$DatabaseHelper.getWritableDatabase:()Landroid/database/sqlite/SQLiteDatabase;
        //    28: astore          6
        //    30: new             Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
        //    33: astore          7
        //    35: aload           7
        //    37: aload           6
        //    39: invokespecial   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.<init>:(Landroid/database/sqlite/SQLiteDatabase;)V
        //    42: aload_2        
        //    43: arraylength    
        //    44: istore          8
        //    46: iconst_0       
        //    47: istore          9
        //    49: aconst_null    
        //    50: astore          5
        //    52: iload           9
        //    54: iload           8
        //    56: if_icmpge       149
        //    59: aload_2        
        //    60: iload           9
        //    62: aaload         
        //    63: astore          10
        //    65: aload           10
        //    67: invokestatic    com/android/launcher3/LauncherProvider.addModifiedTime:(Landroid/content/ContentValues;)V
        //    70: aload_0        
        //    71: getfield        com/android/launcher3/LauncherProvider.mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
        //    74: astore          10
        //    76: aload           4
        //    78: getfield        com/android/launcher3/LauncherProvider$SqlArguments.table:Ljava/lang/String;
        //    81: astore          11
        //    83: aload_2        
        //    84: iload           9
        //    86: aaload         
        //    87: astore          12
        //    89: aload           10
        //    91: aload           6
        //    93: aload           11
        //    95: aconst_null    
        //    96: aload           12
        //    98: invokestatic    com/android/launcher3/LauncherProvider.dbInsertAndCheck:(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
        //   101: lstore          13
        //   103: lconst_0       
        //   104: lstore          15
        //   106: lload           13
        //   108: lload           15
        //   110: lcmp           
        //   111: istore          17
        //   113: iload           17
        //   115: ifge            140
        //   118: aload           7
        //   120: ifnull          128
        //   123: aload           7
        //   125: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.close:()V
        //   128: aload_3        
        //   129: ifnull          138
        //   132: aload_3        
        //   133: athrow         
        //   134: astore_3       
        //   135: goto            128
        //   138: iconst_0       
        //   139: ireturn        
        //   140: iload           9
        //   142: iconst_1       
        //   143: iadd           
        //   144: istore          9
        //   146: goto            52
        //   149: aload           7
        //   151: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.commit:()V
        //   154: aload           7
        //   156: ifnull          164
        //   159: aload           7
        //   161: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.close:()V
        //   164: aload_3        
        //   165: ifnull          237
        //   168: aload_3        
        //   169: athrow         
        //   170: astore_3       
        //   171: goto            164
        //   174: astore          5
        //   176: aconst_null    
        //   177: astore          7
        //   179: aload           5
        //   181: athrow         
        //   182: astore          18
        //   184: aload           5
        //   186: astore_3       
        //   187: aload           18
        //   189: astore          5
        //   191: aload           7
        //   193: ifnull          201
        //   196: aload           7
        //   198: invokevirtual   com/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction.close:()V
        //   201: aload_3        
        //   202: ifnull          234
        //   205: aload_3        
        //   206: athrow         
        //   207: astore          7
        //   209: aload_3        
        //   210: ifnonnull       219
        //   213: aload           7
        //   215: astore_3       
        //   216: goto            201
        //   219: aload_3        
        //   220: aload           7
        //   222: if_acmpeq       201
        //   225: aload_3        
        //   226: aload           7
        //   228: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   231: goto            201
        //   234: aload           5
        //   236: athrow         
        //   237: aload_0        
        //   238: invokevirtual   com/android/launcher3/LauncherProvider.notifyListeners:()V
        //   241: aload_0        
        //   242: invokespecial   com/android/launcher3/LauncherProvider.reloadLauncherIfExternal:()V
        //   245: aload_2        
        //   246: arraylength    
        //   247: ireturn        
        //   248: astore          5
        //   250: goto            179
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  30     33     174    182    Any
        //  37     42     174    182    Any
        //  42     44     248    182    Any
        //  60     63     248    182    Any
        //  65     70     248    182    Any
        //  70     74     248    182    Any
        //  76     81     248    182    Any
        //  84     87     248    182    Any
        //  96     101    248    182    Any
        //  123    128    134    138    Any
        //  149    154    248    182    Any
        //  159    164    170    174    Any
        //  179    182    182    237    Any
        //  196    201    207    234    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.OutOfMemoryError: Java heap space
        //     at java.util.Arrays.copyOf(Unknown Source)
        //     at java.util.ArrayList.grow(Unknown Source)
        //     at java.util.ArrayList.ensureExplicitCapacity(Unknown Source)
        //     at java.util.ArrayList.ensureCapacityInternal(Unknown Source)
        //     at java.util.ArrayList.add(Unknown Source)
        //     at com.strobel.decompiler.ast.AstBuilder$FinallyInlining.collectNodes(AstBuilder.java:4624)
        //     at com.strobel.decompiler.ast.AstBuilder$FinallyInlining.processFinally(AstBuilder.java:4354)
        //     at com.strobel.decompiler.ast.AstBuilder$FinallyInlining.runCore(AstBuilder.java:4317)
        //     at com.strobel.decompiler.ast.AstBuilder$FinallyInlining.run(AstBuilder.java:4277)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:100)
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
    
    public Bundle call(final String s, final String s2, final Bundle bundle) {
        if (Binder.getCallingUid() != Process.myUid()) {
            return null;
        }
        this.createDbIfNotExists();
        if (s.equals("set_extracted_colors_and_wallpaper_id_setting")) {
            final String string = bundle.getString("extra_extractedColors");
            Utilities.getPrefs(this.getContext()).edit().putString("pref_extractedColors", string).putInt("pref_wallpaperId", bundle.getInt("extra_wallpaperId")).apply();
            this.mListenerHandler.sendEmptyMessage(2);
            final Bundle bundle2 = new Bundle();
            bundle2.putString("value", string);
            return bundle2;
        }
        if (s.equals("clear_empty_db_flag")) {
            this.clearFlagEmptyDbCreated();
            return null;
        }
        if (s.equals("get_empty_db_flag")) {
            final Bundle bundle3 = new Bundle();
            bundle3.putBoolean("value", Utilities.getPrefs(this.getContext()).getBoolean("EMPTY_DATABASE_CREATED", false));
            return bundle3;
        }
        if (s.equals("delete_empty_folders")) {
            final Bundle bundle4 = new Bundle();
            bundle4.putSerializable("value", (Serializable)this.deleteEmptyFolders());
            return bundle4;
        }
        if (s.equals("generate_new_item_id")) {
            final Bundle bundle5 = new Bundle();
            bundle5.putLong("value", this.mOpenHelper.generateNewItemId());
            return bundle5;
        }
        if (s.equals("generate_new_screen_id")) {
            final Bundle bundle6 = new Bundle();
            bundle6.putLong("value", this.mOpenHelper.generateNewScreenId());
            return bundle6;
        }
        if (s.equals("create_empty_db")) {
            this.mOpenHelper.createEmptyDB(this.mOpenHelper.getWritableDatabase());
            return null;
        }
        if (s.equals("load_default_favorites")) {
            this.loadDefaultFavoritesIfNecessary();
            return null;
        }
        if (s.equals("remove_ghost_widgets")) {
            this.mOpenHelper.removeGhostWidgets(this.mOpenHelper.getWritableDatabase());
            return null;
        }
        return null;
    }
    
    protected void createDbIfNotExists() {
        synchronized (this) {
            if (this.mOpenHelper == null) {
                this.mOpenHelper = new LauncherProvider$DatabaseHelper(this.getContext(), this.mListenerHandler);
                if (RestoreDbTask.isPending(this.getContext())) {
                    if (!RestoreDbTask.performRestore(this.mOpenHelper)) {
                        this.mOpenHelper.createEmptyDB(this.mOpenHelper.getWritableDatabase());
                    }
                    RestoreDbTask.setPending(this.getContext(), false);
                }
            }
        }
    }
    
    public int delete(final Uri uri, final String s, final String[] array) {
        this.createDbIfNotExists();
        final LauncherProvider$SqlArguments launcherProvider$SqlArguments = new LauncherProvider$SqlArguments(uri, s, array);
        final SQLiteDatabase writableDatabase = this.mOpenHelper.getWritableDatabase();
        if (Binder.getCallingPid() != Process.myPid() && "favorites".equalsIgnoreCase(launcherProvider$SqlArguments.table)) {
            this.mOpenHelper.removeGhostWidgets(this.mOpenHelper.getWritableDatabase());
        }
        final int delete = writableDatabase.delete(launcherProvider$SqlArguments.table, launcherProvider$SqlArguments.where, launcherProvider$SqlArguments.args);
        if (delete > 0) {
            this.notifyListeners();
            this.reloadLauncherIfExternal();
        }
        return delete;
    }
    
    public void dump(final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        final LauncherAppState instanceNoCreate = LauncherAppState.getInstanceNoCreate();
        if (instanceNoCreate == null || (instanceNoCreate.getModel().isModelLoaded() ^ true)) {
            return;
        }
        instanceNoCreate.getModel().dumpState("", fileDescriptor, printWriter, array);
    }
    
    public String getType(final Uri uri) {
        final LauncherProvider$SqlArguments launcherProvider$SqlArguments = new LauncherProvider$SqlArguments(uri, null, null);
        if (TextUtils.isEmpty((CharSequence)launcherProvider$SqlArguments.where)) {
            return "vnd.android.cursor.dir/" + launcherProvider$SqlArguments.table;
        }
        return "vnd.android.cursor.item/" + launcherProvider$SqlArguments.table;
    }
    
    public Uri insert(final Uri uri, final ContentValues contentValues) {
        this.createDbIfNotExists();
        final LauncherProvider$SqlArguments launcherProvider$SqlArguments = new LauncherProvider$SqlArguments(uri);
        if (Binder.getCallingPid() != Process.myPid() && !this.initializeExternalAdd(contentValues)) {
            return null;
        }
        final SQLiteDatabase writableDatabase = this.mOpenHelper.getWritableDatabase();
        addModifiedTime(contentValues);
        final long dbInsertAndCheck = dbInsertAndCheck(this.mOpenHelper, writableDatabase, launcherProvider$SqlArguments.table, null, contentValues);
        if (dbInsertAndCheck < 0L) {
            return null;
        }
        final Uri withAppendedId = ContentUris.withAppendedId(uri, dbInsertAndCheck);
        this.notifyListeners();
        if (Utilities.ATLEAST_MARSHMALLOW) {
            this.reloadLauncherIfExternal();
        }
        else {
            final LauncherAppState instanceNoCreate = LauncherAppState.getInstanceNoCreate();
            if (instanceNoCreate != null && "true".equals(withAppendedId.getQueryParameter("isExternalAdd"))) {
                instanceNoCreate.getModel().forceReload();
            }
            final String queryParameter = withAppendedId.getQueryParameter("notify");
            if (queryParameter == null || "true".equals(queryParameter)) {
                this.getContext().getContentResolver().notifyChange(withAppendedId, (ContentObserver)null);
            }
        }
        return withAppendedId;
    }
    
    protected void notifyListeners() {
        this.mListenerHandler.sendEmptyMessage(1);
    }
    
    public boolean onCreate() {
        this.mListenerHandler = new Handler((Handler$Callback)this.mListenerWrapper);
        FileLog.setDir(this.getContext().getApplicationContext().getFilesDir());
        IconShapeOverride.apply(this.getContext());
        SessionCommitReceiver.applyDefaultUserPrefs(this.getContext());
        return true;
    }
    
    public Cursor query(final Uri uri, final String[] array, final String s, final String[] array2, final String s2) {
        this.createDbIfNotExists();
        final LauncherProvider$SqlArguments launcherProvider$SqlArguments = new LauncherProvider$SqlArguments(uri, s, array2);
        final SQLiteQueryBuilder sqLiteQueryBuilder = new SQLiteQueryBuilder();
        sqLiteQueryBuilder.setTables(launcherProvider$SqlArguments.table);
        final Cursor query = sqLiteQueryBuilder.query(this.mOpenHelper.getWritableDatabase(), array, launcherProvider$SqlArguments.where, launcherProvider$SqlArguments.args, (String)null, (String)null, s2);
        query.setNotificationUri(this.getContext().getContentResolver(), uri);
        return query;
    }
    
    public void setLauncherProviderChangeListener(final LauncherProviderChangeListener launcherProviderChangeListener) {
        Preconditions.assertUIThread();
        this.mListenerWrapper.mListener = launcherProviderChangeListener;
    }
    
    public int update(final Uri uri, final ContentValues contentValues, final String s, final String[] array) {
        this.createDbIfNotExists();
        final LauncherProvider$SqlArguments launcherProvider$SqlArguments = new LauncherProvider$SqlArguments(uri, s, array);
        addModifiedTime(contentValues);
        final int update = this.mOpenHelper.getWritableDatabase().update(launcherProvider$SqlArguments.table, contentValues, launcherProvider$SqlArguments.where, launcherProvider$SqlArguments.args);
        if (update > 0) {
            this.notifyListeners();
        }
        this.reloadLauncherIfExternal();
        return update;
    }
}
