// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.search;

import android.os.Message;
import com.android.launcher3.allapps.search.AllAppsSearchBarController$Callbacks;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Handler$Callback;
import com.android.launcher3.allapps.search.SearchAlgorithm;

public class b implements SearchAlgorithm, Handler$Callback
{
    private static HandlerThread eF;
    private final Handler eE;
    private final Context mContext;
    private final Handler mUiHandler;
    
    public b(final Context mContext) {
        this.mContext = mContext;
        this.mUiHandler = new Handler((Handler$Callback)this);
        if (b.eF == null) {
            (b.eF = new HandlerThread("search-thread", -2)).start();
        }
        this.eE = new Handler(b.eF.getLooper(), (Handler$Callback)this);
    }
    
    private void dj(final c p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore_2       
        //     2: new             Landroid/net/Uri$Builder;
        //     5: astore_3       
        //     6: aload_3        
        //     7: invokespecial   android/net/Uri$Builder.<init>:()V
        //    10: aload_3        
        //    11: ldc             "content"
        //    13: invokevirtual   android/net/Uri$Builder.scheme:(Ljava/lang/String;)Landroid/net/Uri$Builder;
        //    16: ldc             "com.google.android.apps.nexuslauncher.appssearch"
        //    18: invokevirtual   android/net/Uri$Builder.authority:(Ljava/lang/String;)Landroid/net/Uri$Builder;
        //    21: astore_3       
        //    22: aload_1        
        //    23: getfield        com/google/android/apps/nexuslauncher/search/c.eH:Ljava/lang/String;
        //    26: astore          4
        //    28: aload_3        
        //    29: aload           4
        //    31: invokevirtual   android/net/Uri$Builder.appendPath:(Ljava/lang/String;)Landroid/net/Uri$Builder;
        //    34: astore_3       
        //    35: aload_3        
        //    36: invokevirtual   android/net/Uri$Builder.build:()Landroid/net/Uri;
        //    39: astore          4
        //    41: aload_0        
        //    42: getfield        com/google/android/apps/nexuslauncher/search/b.mContext:Landroid/content/Context;
        //    45: astore_3       
        //    46: aload_3        
        //    47: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //    50: astore_3       
        //    51: iconst_0       
        //    52: istore          5
        //    54: aconst_null    
        //    55: astore          6
        //    57: aconst_null    
        //    58: astore          7
        //    60: aconst_null    
        //    61: astore          8
        //    63: aload_3        
        //    64: aload           4
        //    66: aconst_null    
        //    67: aconst_null    
        //    68: aconst_null    
        //    69: aconst_null    
        //    70: invokevirtual   android/content/ContentResolver.query:(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    73: astore          4
        //    75: ldc             "suggest_intent_data"
        //    77: astore_3       
        //    78: aload           4
        //    80: aload_3        
        //    81: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //    86: istore          9
        //    88: aload           4
        //    90: invokeinterface android/database/Cursor.moveToNext:()Z
        //    95: istore          5
        //    97: iload           5
        //    99: ifeq            180
        //   102: aload_1        
        //   103: getfield        com/google/android/apps/nexuslauncher/search/c.eI:Ljava/util/ArrayList;
        //   106: astore          6
        //   108: aload           4
        //   110: iload           9
        //   112: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   117: astore          7
        //   119: aload           7
        //   121: invokestatic    android/net/Uri.parse:(Ljava/lang/String;)Landroid/net/Uri;
        //   124: astore          7
        //   126: aload_0        
        //   127: getfield        com/google/android/apps/nexuslauncher/search/b.mContext:Landroid/content/Context;
        //   130: astore          8
        //   132: aload           7
        //   134: aload           8
        //   136: invokestatic    com/google/android/apps/nexuslauncher/search/AppSearchProvider.dl:(Landroid/net/Uri;Landroid/content/Context;)Lcom/android/launcher3/util/ComponentKey;
        //   139: astore          7
        //   141: aload           6
        //   143: aload           7
        //   145: invokevirtual   java/util/ArrayList.add:(Ljava/lang/Object;)Z
        //   148: pop            
        //   149: goto            88
        //   152: astore_3       
        //   153: aload_3        
        //   154: athrow         
        //   155: astore          6
        //   157: aload_3        
        //   158: astore_2       
        //   159: aload           6
        //   161: astore_3       
        //   162: aload           4
        //   164: ifnull          174
        //   167: aload           4
        //   169: invokeinterface android/database/Cursor.close:()V
        //   174: aload_2        
        //   175: ifnull          229
        //   178: aload_2        
        //   179: athrow         
        //   180: aload           4
        //   182: ifnull          192
        //   185: aload           4
        //   187: invokeinterface android/database/Cursor.close:()V
        //   192: aload_2        
        //   193: ifnull          231
        //   196: aload_2        
        //   197: athrow         
        //   198: astore_2       
        //   199: goto            192
        //   202: astore          4
        //   204: aload_2        
        //   205: ifnonnull       214
        //   208: aload           4
        //   210: astore_2       
        //   211: goto            174
        //   214: aload_2        
        //   215: aload           4
        //   217: if_acmpeq       174
        //   220: aload_2        
        //   221: aload           4
        //   223: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   226: goto            174
        //   229: aload_3        
        //   230: athrow         
        //   231: aload_0        
        //   232: getfield        com/google/android/apps/nexuslauncher/search/b.mUiHandler:Landroid/os/Handler;
        //   235: sipush          200
        //   238: aload_1        
        //   239: invokestatic    android/os/Message.obtain:(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
        //   242: invokevirtual   android/os/Message.sendToTarget:()V
        //   245: return         
        //   246: astore_3       
        //   247: aconst_null    
        //   248: astore          4
        //   250: goto            153
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  41     45     246    155    Any
        //  46     50     246    155    Any
        //  69     73     246    155    Any
        //  80     86     152    155    Any
        //  88     95     152    155    Any
        //  102    106    152    155    Any
        //  110    117    152    155    Any
        //  119    124    152    155    Any
        //  126    130    152    155    Any
        //  134    139    152    155    Any
        //  143    149    152    155    Any
        //  153    155    155    231    Any
        //  167    174    202    229    Any
        //  185    192    198    202    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.OutOfMemoryError: Java heap space
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    public void cancel(final boolean b) {
        this.eE.removeMessages(100);
        if (b) {
            this.mUiHandler.removeMessages(200);
        }
    }
    
    public void doSearch(final String s, final AllAppsSearchBarController$Callbacks allAppsSearchBarController$Callbacks) {
        final int n = 100;
        this.eE.removeMessages(n);
        Message.obtain(this.eE, n, (Object)new c(s, allAppsSearchBarController$Callbacks)).sendToTarget();
    }
    
    public boolean handleMessage(final Message message) {
        final boolean b = true;
        switch (message.what) {
            default: {
                return false;
            }
            case 100: {
                this.dj((c)message.obj);
                return b;
            }
            case 200: {
                final c c = (c)message.obj;
                c.eG.onSearchResult(c.eH, c.eI);
                return b;
            }
        }
    }
}
