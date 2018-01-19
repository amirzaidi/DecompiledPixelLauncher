// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import java.util.Iterator;
import android.os.Message;
import com.android.launcher3.util.Preconditions;
import android.content.SharedPreferences$Editor;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import android.database.Cursor;
import android.content.IntentFilter;
import com.google.android.apps.nexuslauncher.b.a;
import android.os.HandlerThread;
import android.os.Handler;
import java.util.ArrayList;
import android.content.Context;
import android.database.ContentObserver;
import android.content.SharedPreferences;
import android.content.BroadcastReceiver;
import android.net.Uri;
import android.os.Handler$Callback;

public class f implements Handler$Callback
{
    private static final Uri cM;
    private static final Uri cN;
    private static final Uri cO;
    private static final Uri cP;
    private static f cU;
    private final BroadcastReceiver cQ;
    private final BroadcastReceiver cR;
    private final SharedPreferences cS;
    private final ContentObserver cT;
    private final Context mContext;
    private final ArrayList mListeners;
    private final Handler mUiHandler;
    private final Handler mWorkerHandler;
    
    static {
        cN = Uri.parse("content://com.google.android.googlequicksearchbox.GsaPublicContentProvider/publicvalue");
        cM = f.cN.buildUpon().appendPath("pixel_2017_qsb_background_color").build();
        cO = f.cN.buildUpon().appendPath("pixel_2017_qsb_hint_text").build();
        cP = f.cN.buildUpon().appendPath("pixel_2017_qsb_use_colored_g").build();
    }
    
    private f(final Context mContext) {
        final int n = 1;
        this.mListeners = new ArrayList(n);
        this.cQ = new p(this);
        this.cR = new q(this);
        this.mContext = mContext;
        this.cS = mContext.getSharedPreferences("dynamic_qsb_prefs", 0);
        this.mUiHandler = new Handler((Handler$Callback)this);
        final HandlerThread handlerThread = new HandlerThread("qsb-experiments");
        handlerThread.start();
        this.mWorkerHandler = new Handler(handlerThread.getLooper(), (Handler$Callback)this);
        this.cT = new r(this, this.mWorkerHandler);
        final BroadcastReceiver cq = this.cQ;
        final String[] array = { "android.intent.action.PACKAGE_ADDED", null };
        array[n] = "android.intent.action.PACKAGE_CHANGED";
        mContext.registerReceiver(cq, a.eM("com.google.android.googlequicksearchbox", array), (String)null, this.mWorkerHandler);
        mContext.registerReceiver(this.cR, new IntentFilter("android.intent.action.LOCALE_CHANGED"), (String)null, this.mWorkerHandler);
        this.mWorkerHandler.sendEmptyMessage(101);
    }
    
    private static String cG(final Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            if (cursor.getCount() < 1) {
                return null;
            }
            final int columnIndex = cursor.getColumnIndex("value");
            if (columnIndex < 0) {
                return null;
            }
            cursor.moveToNext();
            return cursor.getString(columnIndex);
        }
        finally {
            cursor.close();
        }
    }
    
    private void cH() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: sipush          201
        //     3: istore_1       
        //     4: iconst_1       
        //     5: istore_2       
        //     6: aconst_null    
        //     7: astore_3       
        //     8: aload_0        
        //     9: getfield        com/google/android/apps/nexuslauncher/qsb/f.mContext:Landroid/content/Context;
        //    12: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //    15: astore          4
        //    17: aload_0        
        //    18: getfield        com/google/android/apps/nexuslauncher/qsb/f.cT:Landroid/database/ContentObserver;
        //    21: astore          5
        //    23: aload           4
        //    25: aload           5
        //    27: invokevirtual   android/content/ContentResolver.unregisterContentObserver:(Landroid/database/ContentObserver;)V
        //    30: getstatic       com/google/android/apps/nexuslauncher/qsb/f.cM:Landroid/net/Uri;
        //    33: astore          5
        //    35: aload_0        
        //    36: getfield        com/google/android/apps/nexuslauncher/qsb/f.cT:Landroid/database/ContentObserver;
        //    39: astore          6
        //    41: aload           4
        //    43: aload           5
        //    45: iconst_0       
        //    46: aload           6
        //    48: invokevirtual   android/content/ContentResolver.registerContentObserver:(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
        //    51: getstatic       com/google/android/apps/nexuslauncher/qsb/f.cO:Landroid/net/Uri;
        //    54: astore          5
        //    56: aload_0        
        //    57: getfield        com/google/android/apps/nexuslauncher/qsb/f.cT:Landroid/database/ContentObserver;
        //    60: astore          6
        //    62: aload           4
        //    64: aload           5
        //    66: iconst_0       
        //    67: aload           6
        //    69: invokevirtual   android/content/ContentResolver.registerContentObserver:(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
        //    72: getstatic       com/google/android/apps/nexuslauncher/qsb/f.cP:Landroid/net/Uri;
        //    75: astore          5
        //    77: aload_0        
        //    78: getfield        com/google/android/apps/nexuslauncher/qsb/f.cT:Landroid/database/ContentObserver;
        //    81: astore          6
        //    83: aload           4
        //    85: aload           5
        //    87: iconst_0       
        //    88: aload           6
        //    90: invokevirtual   android/content/ContentResolver.registerContentObserver:(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
        //    93: getstatic       com/google/android/apps/nexuslauncher/qsb/f.cN:Landroid/net/Uri;
        //    96: astore          5
        //    98: aload           4
        //   100: aload           5
        //   102: invokevirtual   android/content/ContentResolver.acquireContentProviderClient:(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
        //   105: astore          4
        //   107: aload           4
        //   109: ifnonnull       238
        //   112: ldc             "QsbUiManager"
        //   114: astore          5
        //   116: ldc             "Unable to get content provider client, skipping"
        //   118: astore          6
        //   120: aload           5
        //   122: aload           6
        //   124: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   127: pop            
        //   128: aload           4
        //   130: ifnull          138
        //   133: aload           4
        //   135: invokevirtual   android/content/ContentProviderClient.close:()V
        //   138: aload_3        
        //   139: ifnull          237
        //   142: aload_3        
        //   143: athrow         
        //   144: astore          4
        //   146: ldc             "QsbUiManager"
        //   148: astore          5
        //   150: ldc             "Error getting client "
        //   152: astore          6
        //   154: aload           5
        //   156: aload           6
        //   158: aload           4
        //   160: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   163: pop            
        //   164: return         
        //   165: astore          5
        //   167: ldc             "Unable to register for configuration changes, UI changes will be reset"
        //   169: astore          6
        //   171: ldc             "QsbUiManager"
        //   173: aload           6
        //   175: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   178: pop            
        //   179: aload_0        
        //   180: getfield        com/google/android/apps/nexuslauncher/qsb/f.cS:Landroid/content/SharedPreferences;
        //   183: invokeinterface android/content/SharedPreferences.getAll:()Ljava/util/Map;
        //   188: astore          5
        //   190: aload           5
        //   192: invokeinterface java/util/Map.isEmpty:()Z
        //   197: istore          7
        //   199: iload           7
        //   201: ifne            93
        //   204: aload_0        
        //   205: getfield        com/google/android/apps/nexuslauncher/qsb/f.cS:Landroid/content/SharedPreferences;
        //   208: invokeinterface android/content/SharedPreferences.edit:()Landroid/content/SharedPreferences$Editor;
        //   213: invokeinterface android/content/SharedPreferences$Editor.clear:()Landroid/content/SharedPreferences$Editor;
        //   218: invokeinterface android/content/SharedPreferences$Editor.apply:()V
        //   223: aload_0        
        //   224: getfield        com/google/android/apps/nexuslauncher/qsb/f.mUiHandler:Landroid/os/Handler;
        //   227: iload_1        
        //   228: invokevirtual   android/os/Handler.sendEmptyMessage:(I)Z
        //   231: pop            
        //   232: return         
        //   233: astore_3       
        //   234: goto            138
        //   237: return         
        //   238: getstatic       com/google/android/apps/nexuslauncher/qsb/f.cM:Landroid/net/Uri;
        //   241: astore          5
        //   243: iconst_0       
        //   244: istore          8
        //   246: aconst_null    
        //   247: astore          6
        //   249: iconst_0       
        //   250: istore_1       
        //   251: aload           4
        //   253: aload           5
        //   255: aconst_null    
        //   256: aconst_null    
        //   257: aconst_null    
        //   258: aconst_null    
        //   259: invokevirtual   android/content/ContentProviderClient.query:(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //   262: astore          5
        //   264: aload_0        
        //   265: aload           5
        //   267: invokespecial   com/google/android/apps/nexuslauncher/qsb/f.cJ:(Landroid/database/Cursor;)Z
        //   270: istore          9
        //   272: getstatic       com/google/android/apps/nexuslauncher/qsb/f.cO:Landroid/net/Uri;
        //   275: astore          5
        //   277: iconst_0       
        //   278: istore          8
        //   280: aconst_null    
        //   281: astore          6
        //   283: iconst_0       
        //   284: istore_1       
        //   285: aload           4
        //   287: aload           5
        //   289: aconst_null    
        //   290: aconst_null    
        //   291: aconst_null    
        //   292: aconst_null    
        //   293: invokevirtual   android/content/ContentProviderClient.query:(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //   296: astore          5
        //   298: aload_0        
        //   299: aload           5
        //   301: invokespecial   com/google/android/apps/nexuslauncher/qsb/f.cK:(Landroid/database/Cursor;)Z
        //   304: istore          7
        //   306: iload           7
        //   308: ifeq            314
        //   311: iload_2        
        //   312: istore          9
        //   314: getstatic       com/google/android/apps/nexuslauncher/qsb/f.cP:Landroid/net/Uri;
        //   317: astore          5
        //   319: iconst_0       
        //   320: istore          8
        //   322: aconst_null    
        //   323: astore          6
        //   325: iconst_0       
        //   326: istore_1       
        //   327: aload           4
        //   329: aload           5
        //   331: aconst_null    
        //   332: aconst_null    
        //   333: aconst_null    
        //   334: aconst_null    
        //   335: invokevirtual   android/content/ContentProviderClient.query:(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //   338: astore          5
        //   340: aload_0        
        //   341: aload           5
        //   343: invokespecial   com/google/android/apps/nexuslauncher/qsb/f.cM:(Landroid/database/Cursor;)Z
        //   346: istore          7
        //   348: iload           7
        //   350: ifeq            487
        //   353: iload_2        
        //   354: istore          7
        //   356: iload           7
        //   358: ifeq            380
        //   361: aload_0        
        //   362: getfield        com/google/android/apps/nexuslauncher/qsb/f.mUiHandler:Landroid/os/Handler;
        //   365: astore          5
        //   367: sipush          201
        //   370: istore          8
        //   372: aload           5
        //   374: iload           8
        //   376: invokevirtual   android/os/Handler.sendEmptyMessage:(I)Z
        //   379: pop            
        //   380: aload           4
        //   382: ifnull          390
        //   385: aload           4
        //   387: invokevirtual   android/content/ContentProviderClient.close:()V
        //   390: aload_3        
        //   391: ifnull          164
        //   394: aload_3        
        //   395: athrow         
        //   396: astore_3       
        //   397: goto            390
        //   400: astore          4
        //   402: iconst_0       
        //   403: istore          7
        //   405: aconst_null    
        //   406: astore          5
        //   408: aload           4
        //   410: athrow         
        //   411: astore          6
        //   413: aload           5
        //   415: astore_3       
        //   416: aload           4
        //   418: astore          5
        //   420: aload           6
        //   422: astore          4
        //   424: aload_3        
        //   425: ifnull          432
        //   428: aload_3        
        //   429: invokevirtual   android/content/ContentProviderClient.close:()V
        //   432: aload           5
        //   434: ifnull          471
        //   437: aload           5
        //   439: athrow         
        //   440: astore          6
        //   442: aload           5
        //   444: ifnonnull       454
        //   447: aload           6
        //   449: astore          5
        //   451: goto            432
        //   454: aload           5
        //   456: aload           6
        //   458: if_acmpeq       432
        //   461: aload           5
        //   463: aload           6
        //   465: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   468: goto            432
        //   471: aload           4
        //   473: athrow         
        //   474: astore          10
        //   476: aload           4
        //   478: astore          5
        //   480: aload           10
        //   482: astore          4
        //   484: goto            408
        //   487: iload           9
        //   489: istore          7
        //   491: goto            356
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                         
        //  -----  -----  -----  -----  -----------------------------
        //  30     33     165    233    Ljava/lang/SecurityException;
        //  35     39     165    233    Ljava/lang/SecurityException;
        //  46     51     165    233    Ljava/lang/SecurityException;
        //  51     54     165    233    Ljava/lang/SecurityException;
        //  56     60     165    233    Ljava/lang/SecurityException;
        //  67     72     165    233    Ljava/lang/SecurityException;
        //  72     75     165    233    Ljava/lang/SecurityException;
        //  77     81     165    233    Ljava/lang/SecurityException;
        //  88     93     165    233    Ljava/lang/SecurityException;
        //  93     96     400    408    Any
        //  100    105    400    408    Any
        //  122    128    474    487    Any
        //  133    138    233    237    Any
        //  142    144    144    164    Ljava/lang/Exception;
        //  238    241    474    487    Any
        //  258    262    474    487    Any
        //  265    270    474    487    Any
        //  272    275    474    487    Any
        //  292    296    474    487    Any
        //  299    304    474    487    Any
        //  314    317    474    487    Any
        //  334    338    474    487    Any
        //  341    346    474    487    Any
        //  361    365    474    487    Any
        //  374    380    474    487    Any
        //  385    390    396    400    Any
        //  394    396    144    164    Ljava/lang/Exception;
        //  408    411    411    474    Any
        //  428    432    440    471    Any
        //  437    440    144    164    Ljava/lang/Exception;
        //  463    468    144    164    Ljava/lang/Exception;
        //  471    474    144    164    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 246, Size: 246
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
    
    private void cI(final boolean p0, final Uri p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore_3       
        //     2: aload_0        
        //     3: getfield        com/google/android/apps/nexuslauncher/qsb/f.mContext:Landroid/content/Context;
        //     6: astore          4
        //     8: aload           4
        //    10: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //    13: astore          4
        //    15: iconst_0       
        //    16: istore          5
        //    18: aconst_null    
        //    19: astore          6
        //    21: aload_2        
        //    22: astore          7
        //    24: aload           4
        //    26: aload_2        
        //    27: aconst_null    
        //    28: aconst_null    
        //    29: aconst_null    
        //    30: aconst_null    
        //    31: invokevirtual   android/content/ContentResolver.query:(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    34: astore          7
        //    36: getstatic       com/google/android/apps/nexuslauncher/qsb/f.cM:Landroid/net/Uri;
        //    39: astore          4
        //    41: aload           4
        //    43: aload_2        
        //    44: invokevirtual   android/net/Uri.equals:(Ljava/lang/Object;)Z
        //    47: istore          8
        //    49: iload           8
        //    51: ifeq            150
        //    54: aload_0        
        //    55: aload           7
        //    57: invokespecial   com/google/android/apps/nexuslauncher/qsb/f.cJ:(Landroid/database/Cursor;)Z
        //    60: istore          8
        //    62: iload           8
        //    64: ifeq            86
        //    67: aload_0        
        //    68: getfield        com/google/android/apps/nexuslauncher/qsb/f.mUiHandler:Landroid/os/Handler;
        //    71: astore          4
        //    73: sipush          201
        //    76: istore          5
        //    78: aload           4
        //    80: iload           5
        //    82: invokevirtual   android/os/Handler.sendEmptyMessage:(I)Z
        //    85: pop            
        //    86: aload           7
        //    88: ifnull          98
        //    91: aload           7
        //    93: invokeinterface android/database/Cursor.close:()V
        //    98: aload_3        
        //    99: ifnull          149
        //   102: aload_3        
        //   103: athrow         
        //   104: astore          4
        //   106: ldc             "QsbUiManager"
        //   108: astore          4
        //   110: new             Ljava/lang/StringBuilder;
        //   113: astore          7
        //   115: aload           7
        //   117: invokespecial   java/lang/StringBuilder.<init>:()V
        //   120: ldc_w           "Error fetching update: "
        //   123: astore          6
        //   125: aload           7
        //   127: aload           6
        //   129: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   132: aload_2        
        //   133: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   136: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   139: astore          7
        //   141: aload           4
        //   143: aload           7
        //   145: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   148: pop            
        //   149: return         
        //   150: getstatic       com/google/android/apps/nexuslauncher/qsb/f.cO:Landroid/net/Uri;
        //   153: astore          4
        //   155: aload           4
        //   157: aload_2        
        //   158: invokevirtual   android/net/Uri.equals:(Ljava/lang/Object;)Z
        //   161: istore          8
        //   163: iload           8
        //   165: ifeq            179
        //   168: aload_0        
        //   169: aload           7
        //   171: invokespecial   com/google/android/apps/nexuslauncher/qsb/f.cK:(Landroid/database/Cursor;)Z
        //   174: istore          8
        //   176: goto            62
        //   179: getstatic       com/google/android/apps/nexuslauncher/qsb/f.cP:Landroid/net/Uri;
        //   182: astore          4
        //   184: aload           4
        //   186: aload_2        
        //   187: invokevirtual   android/net/Uri.equals:(Ljava/lang/Object;)Z
        //   190: istore          8
        //   192: iload           8
        //   194: ifeq            208
        //   197: aload_0        
        //   198: aload           7
        //   200: invokespecial   com/google/android/apps/nexuslauncher/qsb/f.cM:(Landroid/database/Cursor;)Z
        //   203: istore          8
        //   205: goto            62
        //   208: iconst_0       
        //   209: istore          8
        //   211: aconst_null    
        //   212: astore          4
        //   214: goto            62
        //   217: astore_3       
        //   218: goto            98
        //   221: astore          4
        //   223: aconst_null    
        //   224: astore          7
        //   226: aload           4
        //   228: athrow         
        //   229: astore          6
        //   231: aload           4
        //   233: astore_3       
        //   234: aload           6
        //   236: astore          4
        //   238: aload           7
        //   240: ifnull          250
        //   243: aload           7
        //   245: invokeinterface android/database/Cursor.close:()V
        //   250: aload_3        
        //   251: ifnull          283
        //   254: aload_3        
        //   255: athrow         
        //   256: astore          7
        //   258: aload_3        
        //   259: ifnonnull       268
        //   262: aload           7
        //   264: astore_3       
        //   265: goto            250
        //   268: aload_3        
        //   269: aload           7
        //   271: if_acmpeq       250
        //   274: aload_3        
        //   275: aload           7
        //   277: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   280: goto            250
        //   283: aload           4
        //   285: athrow         
        //   286: astore          4
        //   288: goto            226
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  2      6      221    226    Any
        //  8      13     221    226    Any
        //  30     34     221    226    Any
        //  36     39     286    291    Any
        //  43     47     286    291    Any
        //  55     60     286    291    Any
        //  67     71     286    291    Any
        //  80     86     286    291    Any
        //  91     98     217    221    Any
        //  102    104    104    149    Ljava/lang/Exception;
        //  150    153    286    291    Any
        //  157    161    286    291    Any
        //  169    174    286    291    Any
        //  179    182    286    291    Any
        //  186    190    286    291    Any
        //  198    203    286    291    Any
        //  226    229    229    286    Any
        //  243    250    256    283    Any
        //  254    256    104    149    Ljava/lang/Exception;
        //  275    280    104    149    Ljava/lang/Exception;
        //  283    286    104    149    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0062:
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
    
    private boolean cJ(final Cursor cursor) {
        String s = cG(cursor);
        while (true) {
            try {
                final int int1 = Integer.parseInt(s);
                if (int1 != this.cE()) {
                    this.cS.edit().putInt("pixel_2017_qsb_background_color", int1).apply();
                    return true;
                }
            }
            catch (Exception ex) {
                final String s2 = "QsbUiManager";
                s = "Invalid color value: " + s;
                Log.e(s2, s);
                final int int1 = -1711604998;
                continue;
            }
            break;
        }
        return false;
    }
    
    private boolean cK(final Cursor cursor) {
        return this.cL(cG(cursor));
    }
    
    private boolean cL(final String s) {
        final String cf = this.cF();
        if (TextUtils.isEmpty((CharSequence)s)) {
            this.cS.edit().remove("pixel_2017_qsb_hint_text").remove("pixel_2017_qsb_hint_text_value").apply();
            return TextUtils.isEmpty((CharSequence)cf) ^ true;
        }
        try {
            final Context mContext = this.mContext;
            try {
                final Resources resourcesForApplication = mContext.getPackageManager().getResourcesForApplication("com.google.android.googlequicksearchbox");
                final int identifier = resourcesForApplication.getIdentifier(s, "string", "com.google.android.googlequicksearchbox");
                Label_0176: {
                    if (identifier == 0) {
                        break Label_0176;
                    }
                    String string = resourcesForApplication.getString(identifier);
                    try {
                        while (true) {
                            final SharedPreferences cs = this.cS;
                            try {
                                final SharedPreferences$Editor putString = cs.edit().putString("pixel_2017_qsb_hint_text", s).putString("pixel_2017_qsb_hint_text_value", string);
                                try {
                                    putString.apply();
                                    final String s2 = cf;
                                    try {
                                        return s2.equals(string) ^ true;
                                        string = "";
                                    }
                                    catch (Exception ex) {
                                        Log.e("QsbUiManager", "Error loading hint text: " + s);
                                        return false;
                                    }
                                }
                                catch (Exception ex2) {}
                            }
                            catch (Exception ex3) {}
                        }
                    }
                    catch (Exception ex4) {}
                }
            }
            catch (Exception ex5) {}
        }
        catch (Exception ex6) {}
    }
    
    private boolean cM(final Cursor cursor) {
        String cg = cG(cursor);
        while (true) {
            try {
                final boolean boolean1 = Boolean.parseBoolean(cg);
                if (boolean1 != this.cD()) {
                    this.cS.edit().putBoolean("pixel_2017_qsb_use_colored_g", boolean1).apply();
                    return true;
                }
            }
            catch (Exception ex) {
                Log.e("QsbUiManager", "Invalid boolean value: " + cg);
                final boolean boolean1 = false;
                cg = null;
                continue;
            }
            break;
        }
        return false;
    }
    
    public static f getInstance(final Context context) {
        Preconditions.assertUIThread();
        if (f.cU == null) {
            f.cU = new f(context.getApplicationContext());
        }
        return f.cU;
    }
    
    public void cB(final g g) {
        this.mListeners.add(g);
    }
    
    public void cC(final g g) {
        this.mListeners.remove(g);
    }
    
    public boolean cD() {
        return this.cS.getBoolean("pixel_2017_qsb_use_colored_g", false);
    }
    
    public int cE() {
        return this.cS.getInt("pixel_2017_qsb_background_color", -1711604998);
    }
    
    public String cF() {
        return this.cS.getString("pixel_2017_qsb_hint_text_value", "");
    }
    
    public boolean handleMessage(final Message message) {
        final boolean b = true;
        switch (message.what) {
            default: {
                return false;
            }
            case 101: {
                this.cH();
                return b;
            }
            case 201: {
                final Iterator iterator = this.mListeners.iterator();
                while (iterator.hasNext()) {
                    iterator.next().cp();
                }
                return b;
            }
        }
    }
}
