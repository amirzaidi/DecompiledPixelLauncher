// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.content.Context;
import android.os.AsyncTask;

class SessionCommitReceiver$PrefInitTask extends AsyncTask
{
    private final Context mContext;
    
    SessionCommitReceiver$PrefInitTask(final Context mContext) {
        this.mContext = mContext;
    }
    
    protected Void doInBackground(final Void... array) {
        Utilities.getPrefs(this.mContext).edit().putBoolean("pref_add_icon_to_home", this.readValueFromMarketApp()).putBoolean("pref_add_icon_to_home_initialized", true).apply();
        return null;
    }
    
    public boolean readValueFromMarketApp() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_1       
        //     1: istore_1       
        //     2: aconst_null    
        //     3: astore_2       
        //     4: aload_0        
        //     5: getfield        com/android/launcher3/SessionCommitReceiver$PrefInitTask.mContext:Landroid/content/Context;
        //     8: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
        //    11: astore_3       
        //    12: new             Landroid/content/Intent;
        //    15: astore          4
        //    17: aload           4
        //    19: ldc             "android.intent.action.MAIN"
        //    21: invokespecial   android/content/Intent.<init>:(Ljava/lang/String;)V
        //    24: ldc             "android.intent.category.APP_MARKET"
        //    26: astore          5
        //    28: aload           4
        //    30: aload           5
        //    32: invokevirtual   android/content/Intent.addCategory:(Ljava/lang/String;)Landroid/content/Intent;
        //    35: astore          4
        //    37: ldc             1114112
        //    39: istore          6
        //    41: aload_3        
        //    42: aload           4
        //    44: iload           6
        //    46: invokevirtual   android/content/pm/PackageManager.resolveActivity:(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
        //    49: astore          4
        //    51: aload           4
        //    53: ifnonnull       58
        //    56: iload_1        
        //    57: ireturn        
        //    58: aload_0        
        //    59: getfield        com/android/launcher3/SessionCommitReceiver$PrefInitTask.mContext:Landroid/content/Context;
        //    62: astore_3       
        //    63: aload_3        
        //    64: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //    67: astore_3       
        //    68: new             Ljava/lang/StringBuilder;
        //    71: astore          5
        //    73: aload           5
        //    75: invokespecial   java/lang/StringBuilder.<init>:()V
        //    78: ldc             "content://"
        //    80: astore          7
        //    82: aload           5
        //    84: aload           7
        //    86: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    89: astore          5
        //    91: aload           4
        //    93: getfield        android/content/pm/ResolveInfo.activityInfo:Landroid/content/pm/ActivityInfo;
        //    96: astore          4
        //    98: aload           4
        //   100: getfield        android/content/pm/ActivityInfo.packageName:Ljava/lang/String;
        //   103: astore          4
        //   105: aload           5
        //   107: aload           4
        //   109: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   112: astore          4
        //   114: ldc             ".addtohomescreen"
        //   116: astore          5
        //   118: aload           4
        //   120: aload           5
        //   122: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   125: astore          4
        //   127: aload           4
        //   129: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   132: astore          4
        //   134: aload           4
        //   136: invokestatic    android/net/Uri.parse:(Ljava/lang/String;)Landroid/net/Uri;
        //   139: astore          4
        //   141: iconst_0       
        //   142: istore          6
        //   144: aconst_null    
        //   145: astore          5
        //   147: aconst_null    
        //   148: astore          7
        //   150: aload_3        
        //   151: aload           4
        //   153: aconst_null    
        //   154: aconst_null    
        //   155: aconst_null    
        //   156: aconst_null    
        //   157: invokevirtual   android/content/ContentResolver.query:(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //   160: astore          4
        //   162: aload           4
        //   164: invokeinterface android/database/Cursor.moveToNext:()Z
        //   169: istore          8
        //   171: iload           8
        //   173: ifeq            231
        //   176: ldc             "value"
        //   178: astore_3       
        //   179: aload           4
        //   181: aload_3        
        //   182: invokeinterface android/database/Cursor.getColumnIndexOrThrow:(Ljava/lang/String;)I
        //   187: istore          8
        //   189: aload           4
        //   191: iload           8
        //   193: invokeinterface android/database/Cursor.getInt:(I)I
        //   198: istore          8
        //   200: iload           8
        //   202: ifeq            223
        //   205: iload_1        
        //   206: istore          8
        //   208: aload           4
        //   210: ifnull          220
        //   213: aload           4
        //   215: invokeinterface android/database/Cursor.close:()V
        //   220: iload           8
        //   222: ireturn        
        //   223: iconst_0       
        //   224: istore          8
        //   226: aconst_null    
        //   227: astore_3       
        //   228: goto            208
        //   231: aload           4
        //   233: ifnull          243
        //   236: aload           4
        //   238: invokeinterface android/database/Cursor.close:()V
        //   243: iload_1        
        //   244: ireturn        
        //   245: astore_3       
        //   246: aconst_null    
        //   247: astore          4
        //   249: ldc             "SessionCommitReceiver"
        //   251: astore          5
        //   253: ldc             "Error reading add to homescreen preference"
        //   255: astore          7
        //   257: aload           5
        //   259: aload           7
        //   261: aload_3        
        //   262: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   265: pop            
        //   266: aload           4
        //   268: ifnull          243
        //   271: aload           4
        //   273: invokeinterface android/database/Cursor.close:()V
        //   278: goto            243
        //   281: astore_3       
        //   282: aload_2        
        //   283: ifnull          292
        //   286: aload_2        
        //   287: invokeinterface android/database/Cursor.close:()V
        //   292: aload_3        
        //   293: athrow         
        //   294: astore_3       
        //   295: aload           4
        //   297: astore_2       
        //   298: goto            282
        //   301: astore_3       
        //   302: goto            249
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  58     62     245    249    Ljava/lang/Exception;
        //  58     62     281    282    Any
        //  63     67     245    249    Ljava/lang/Exception;
        //  63     67     281    282    Any
        //  68     71     245    249    Ljava/lang/Exception;
        //  68     71     281    282    Any
        //  73     78     245    249    Ljava/lang/Exception;
        //  73     78     281    282    Any
        //  84     89     245    249    Ljava/lang/Exception;
        //  84     89     281    282    Any
        //  91     96     245    249    Ljava/lang/Exception;
        //  91     96     281    282    Any
        //  98     103    245    249    Ljava/lang/Exception;
        //  98     103    281    282    Any
        //  107    112    245    249    Ljava/lang/Exception;
        //  107    112    281    282    Any
        //  120    125    245    249    Ljava/lang/Exception;
        //  120    125    281    282    Any
        //  127    132    245    249    Ljava/lang/Exception;
        //  127    132    281    282    Any
        //  134    139    245    249    Ljava/lang/Exception;
        //  134    139    281    282    Any
        //  156    160    245    249    Ljava/lang/Exception;
        //  156    160    281    282    Any
        //  162    169    301    305    Ljava/lang/Exception;
        //  162    169    294    301    Any
        //  181    187    301    305    Ljava/lang/Exception;
        //  181    187    294    301    Any
        //  191    198    301    305    Ljava/lang/Exception;
        //  191    198    294    301    Any
        //  261    266    294    301    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0208:
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
}
