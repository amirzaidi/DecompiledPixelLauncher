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
import android.database.SQLException;
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
import com.android.launcher3.config.ProviderConfig;
import android.os.Handler;
import android.content.ContentProvider;

public class LauncherProvider extends ContentProvider
{
    public static final String AUTHORITY;
    private Handler mListenerHandler;
    private final LauncherProvider$ChangeListenerWrapper mListenerWrapper;
    protected LauncherProvider$DatabaseHelper mOpenHelper;
    
    static {
        AUTHORITY = ProviderConfig.AUTHORITY;
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
        final ArrayList<Long> list = new ArrayList<Long>();
        final SQLiteDatabase writableDatabase = this.mOpenHelper.getWritableDatabase();
        writableDatabase.beginTransaction();
        final String s = "itemType = 2 AND _id NOT IN (SELECT container FROM favorites)";
        final String s2 = "favorites";
        final int n = 1;
        try {
            final String[] array = new String[n];
            array[0] = "_id";
            final Cursor query = writableDatabase.query(s2, array, s, (String[])null, (String)null, (String)null, (String)null);
            try {
                while (true) {
                    Label_0143: {
                        if (!query.moveToNext()) {
                            break Label_0143;
                        }
                        final long long1 = query.getLong(0);
                        try {
                            list.add(long1);
                        }
                        catch (SQLException ex) {
                            Log.e("LauncherProvider", ex.getMessage(), (Throwable)ex);
                            list.clear();
                            return list;
                            writableDatabase.delete("favorites", Utilities.createDbSelectionQuery("_id", list), (String[])null);
                            Label_0189: {
                                writableDatabase.setTransactionSuccessful();
                            }
                            writableDatabase.endTransaction();
                            return list;
                            final Cursor cursor;
                            cursor.close();
                        }
                        // iftrue(Label_0189:, list.isEmpty())
                    }
                }
            }
            catch (SQLException ex2) {}
        }
        catch (SQLException ex3) {}
        finally {
            writableDatabase.endTransaction();
        }
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
    
    public ContentProviderResult[] applyBatch(final ArrayList list) {
        this.createDbIfNotExists();
        final SQLiteDatabase writableDatabase = this.mOpenHelper.getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            final ContentProviderResult[] applyBatch = super.applyBatch(list);
            writableDatabase.setTransactionSuccessful();
            this.reloadLauncherIfExternal();
            return applyBatch;
        }
        finally {
            writableDatabase.endTransaction();
        }
    }
    
    public int bulkInsert(final Uri uri, final ContentValues[] array) {
        this.createDbIfNotExists();
        final LauncherProvider$SqlArguments launcherProvider$SqlArguments = new LauncherProvider$SqlArguments(uri);
        final SQLiteDatabase writableDatabase = this.mOpenHelper.getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            for (int length = array.length, i = 0; i < length; ++i) {
                addModifiedTime(array[i]);
                if (dbInsertAndCheck(this.mOpenHelper, writableDatabase, launcherProvider$SqlArguments.table, null, array[i]) < 0L) {
                    return 0;
                }
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
            this.notifyListeners();
            this.reloadLauncherIfExternal();
            return array.length;
        }
        finally {
            writableDatabase.endTransaction();
        }
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
