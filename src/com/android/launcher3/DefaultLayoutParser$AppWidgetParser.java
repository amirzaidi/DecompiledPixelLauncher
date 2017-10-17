// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.os.Bundle;
import android.content.ComponentName;

class DefaultLayoutParser$AppWidgetParser extends AutoInstallsLayout$PendingWidgetParser
{
    final /* synthetic */ DefaultLayoutParser this$0;
    
    protected DefaultLayoutParser$AppWidgetParser(final DefaultLayoutParser this$0) {
        this.this$0 = this$0;
        super(this$0);
    }
    
    protected long verifyAndInsert(final ComponentName p0, final Bundle p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_m1      
        //     1: i2l            
        //     2: lstore_3       
        //     3: aconst_null    
        //     4: astore          5
        //     6: aload_0        
        //     7: getfield        com/android/launcher3/DefaultLayoutParser$AppWidgetParser.this$0:Lcom/android/launcher3/DefaultLayoutParser;
        //    10: astore          6
        //    12: aload           6
        //    14: getfield        com/android/launcher3/DefaultLayoutParser.mPackageManager:Landroid/content/pm/PackageManager;
        //    17: astore          6
        //    19: iconst_0       
        //    20: istore          7
        //    22: aconst_null    
        //    23: astore          8
        //    25: aload           6
        //    27: aload_1        
        //    28: iconst_0       
        //    29: invokevirtual   android/content/pm/PackageManager.getReceiverInfo:(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
        //    32: pop            
        //    33: aload_0        
        //    34: getfield        com/android/launcher3/DefaultLayoutParser$AppWidgetParser.this$0:Lcom/android/launcher3/DefaultLayoutParser;
        //    37: getfield        com/android/launcher3/DefaultLayoutParser.mContext:Landroid/content/Context;
        //    40: invokestatic    android/appwidget/AppWidgetManager.getInstance:(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;
        //    43: astore          6
        //    45: aload_0        
        //    46: getfield        com/android/launcher3/DefaultLayoutParser$AppWidgetParser.this$0:Lcom/android/launcher3/DefaultLayoutParser;
        //    49: astore          8
        //    51: aload           8
        //    53: getfield        com/android/launcher3/DefaultLayoutParser.mAppWidgetHost:Landroid/appwidget/AppWidgetHost;
        //    56: astore          8
        //    58: aload           8
        //    60: invokevirtual   android/appwidget/AppWidgetHost.allocateAppWidgetId:()I
        //    63: istore          7
        //    65: aload           6
        //    67: iload           7
        //    69: aload_1        
        //    70: invokevirtual   android/appwidget/AppWidgetManager.bindAppWidgetIdIfAllowed:(ILandroid/content/ComponentName;)Z
        //    73: istore          9
        //    75: iload           9
        //    77: ifne            301
        //    80: ldc             "DefaultLayoutParser"
        //    82: astore          6
        //    84: new             Ljava/lang/StringBuilder;
        //    87: astore          10
        //    89: aload           10
        //    91: invokespecial   java/lang/StringBuilder.<init>:()V
        //    94: ldc             "Unable to bind app widget id "
        //    96: astore          5
        //    98: aload           10
        //   100: aload           5
        //   102: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   105: astore          10
        //   107: aload           10
        //   109: aload_1        
        //   110: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   113: astore          10
        //   115: aload           10
        //   117: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   120: astore          10
        //   122: aload           6
        //   124: aload           10
        //   126: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   129: pop            
        //   130: aload_0        
        //   131: getfield        com/android/launcher3/DefaultLayoutParser$AppWidgetParser.this$0:Lcom/android/launcher3/DefaultLayoutParser;
        //   134: astore          6
        //   136: aload           6
        //   138: getfield        com/android/launcher3/DefaultLayoutParser.mAppWidgetHost:Landroid/appwidget/AppWidgetHost;
        //   141: astore          6
        //   143: aload           6
        //   145: iload           7
        //   147: invokevirtual   android/appwidget/AppWidgetHost.deleteAppWidgetId:(I)V
        //   150: lload_3        
        //   151: lreturn        
        //   152: astore          6
        //   154: aload_0        
        //   155: getfield        com/android/launcher3/DefaultLayoutParser$AppWidgetParser.this$0:Lcom/android/launcher3/DefaultLayoutParser;
        //   158: getfield        com/android/launcher3/DefaultLayoutParser.mPackageManager:Landroid/content/pm/PackageManager;
        //   161: astore          6
        //   163: iconst_1       
        //   164: istore          7
        //   166: iload           7
        //   168: anewarray       Ljava/lang/String;
        //   171: astore          8
        //   173: aload_1        
        //   174: invokevirtual   android/content/ComponentName.getPackageName:()Ljava/lang/String;
        //   177: astore          10
        //   179: aload           8
        //   181: iconst_0       
        //   182: aload           10
        //   184: aastore        
        //   185: aload           6
        //   187: aload           8
        //   189: invokevirtual   android/content/pm/PackageManager.currentToCanonicalPackageNames:([Ljava/lang/String;)[Ljava/lang/String;
        //   192: astore          8
        //   194: new             Landroid/content/ComponentName;
        //   197: astore          6
        //   199: aload           8
        //   201: iconst_0       
        //   202: aaload         
        //   203: astore          8
        //   205: aload_1        
        //   206: invokevirtual   android/content/ComponentName.getClassName:()Ljava/lang/String;
        //   209: astore          10
        //   211: aload           6
        //   213: aload           8
        //   215: aload           10
        //   217: invokespecial   android/content/ComponentName.<init>:(Ljava/lang/String;Ljava/lang/String;)V
        //   220: aload_0        
        //   221: getfield        com/android/launcher3/DefaultLayoutParser$AppWidgetParser.this$0:Lcom/android/launcher3/DefaultLayoutParser;
        //   224: astore          8
        //   226: aload           8
        //   228: getfield        com/android/launcher3/DefaultLayoutParser.mPackageManager:Landroid/content/pm/PackageManager;
        //   231: astore          8
        //   233: aconst_null    
        //   234: astore          10
        //   236: aload           8
        //   238: aload           6
        //   240: iconst_0       
        //   241: invokevirtual   android/content/pm/PackageManager.getReceiverInfo:(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
        //   244: pop            
        //   245: aload           6
        //   247: astore_1       
        //   248: goto            33
        //   251: astore          8
        //   253: new             Ljava/lang/StringBuilder;
        //   256: astore          10
        //   258: aload           10
        //   260: invokespecial   java/lang/StringBuilder.<init>:()V
        //   263: aload           10
        //   265: ldc             "Can't find widget provider: "
        //   267: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   270: astore          10
        //   272: aload           6
        //   274: invokevirtual   android/content/ComponentName.getClassName:()Ljava/lang/String;
        //   277: astore          6
        //   279: aload           10
        //   281: aload           6
        //   283: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   286: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   289: astore          6
        //   291: ldc             "DefaultLayoutParser"
        //   293: aload           6
        //   295: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   298: pop            
        //   299: lload_3        
        //   300: lreturn        
        //   301: aload_0        
        //   302: getfield        com/android/launcher3/DefaultLayoutParser$AppWidgetParser.this$0:Lcom/android/launcher3/DefaultLayoutParser;
        //   305: astore          6
        //   307: aload           6
        //   309: getfield        com/android/launcher3/DefaultLayoutParser.mValues:Landroid/content/ContentValues;
        //   312: astore          6
        //   314: ldc             "appWidgetId"
        //   316: astore          10
        //   318: iload           7
        //   320: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   323: astore          5
        //   325: aload           6
        //   327: aload           10
        //   329: aload           5
        //   331: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //   334: aload_0        
        //   335: getfield        com/android/launcher3/DefaultLayoutParser$AppWidgetParser.this$0:Lcom/android/launcher3/DefaultLayoutParser;
        //   338: astore          6
        //   340: aload           6
        //   342: getfield        com/android/launcher3/DefaultLayoutParser.mValues:Landroid/content/ContentValues;
        //   345: astore          6
        //   347: ldc             "appWidgetProvider"
        //   349: astore          10
        //   351: aload_1        
        //   352: invokevirtual   android/content/ComponentName.flattenToString:()Ljava/lang/String;
        //   355: astore          5
        //   357: aload           6
        //   359: aload           10
        //   361: aload           5
        //   363: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
        //   366: aload_0        
        //   367: getfield        com/android/launcher3/DefaultLayoutParser$AppWidgetParser.this$0:Lcom/android/launcher3/DefaultLayoutParser;
        //   370: astore          6
        //   372: aload           6
        //   374: getfield        com/android/launcher3/DefaultLayoutParser.mValues:Landroid/content/ContentValues;
        //   377: astore          6
        //   379: ldc             "_id"
        //   381: astore          10
        //   383: aload_0        
        //   384: getfield        com/android/launcher3/DefaultLayoutParser$AppWidgetParser.this$0:Lcom/android/launcher3/DefaultLayoutParser;
        //   387: astore          5
        //   389: aload           5
        //   391: getfield        com/android/launcher3/DefaultLayoutParser.mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;
        //   394: astore          5
        //   396: aload           5
        //   398: invokeinterface com/android/launcher3/AutoInstallsLayout$LayoutParserCallback.generateNewItemId:()J
        //   403: lstore          11
        //   405: lload           11
        //   407: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   410: astore          5
        //   412: aload           6
        //   414: aload           10
        //   416: aload           5
        //   418: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Long;)V
        //   421: aload_0        
        //   422: getfield        com/android/launcher3/DefaultLayoutParser$AppWidgetParser.this$0:Lcom/android/launcher3/DefaultLayoutParser;
        //   425: astore          6
        //   427: aload           6
        //   429: getfield        com/android/launcher3/DefaultLayoutParser.mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;
        //   432: astore          6
        //   434: aload_0        
        //   435: getfield        com/android/launcher3/DefaultLayoutParser$AppWidgetParser.this$0:Lcom/android/launcher3/DefaultLayoutParser;
        //   438: astore          10
        //   440: aload           10
        //   442: getfield        com/android/launcher3/DefaultLayoutParser.mDb:Landroid/database/sqlite/SQLiteDatabase;
        //   445: astore          10
        //   447: aload_0        
        //   448: getfield        com/android/launcher3/DefaultLayoutParser$AppWidgetParser.this$0:Lcom/android/launcher3/DefaultLayoutParser;
        //   451: astore          5
        //   453: aload           5
        //   455: getfield        com/android/launcher3/DefaultLayoutParser.mValues:Landroid/content/ContentValues;
        //   458: astore          5
        //   460: aload           6
        //   462: aload           10
        //   464: aload           5
        //   466: invokeinterface com/android/launcher3/AutoInstallsLayout$LayoutParserCallback.insertAndCheck:(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
        //   471: lstore_3       
        //   472: lconst_0       
        //   473: lstore          13
        //   475: lload_3        
        //   476: lload           13
        //   478: lcmp           
        //   479: istore          9
        //   481: iload           9
        //   483: ifge            508
        //   486: aload_0        
        //   487: getfield        com/android/launcher3/DefaultLayoutParser$AppWidgetParser.this$0:Lcom/android/launcher3/DefaultLayoutParser;
        //   490: astore          6
        //   492: aload           6
        //   494: getfield        com/android/launcher3/DefaultLayoutParser.mAppWidgetHost:Landroid/appwidget/AppWidgetHost;
        //   497: astore          6
        //   499: aload           6
        //   501: iload           7
        //   503: invokevirtual   android/appwidget/AppWidgetHost.deleteAppWidgetId:(I)V
        //   506: lload_3        
        //   507: lreturn        
        //   508: aload_2        
        //   509: invokevirtual   android/os/Bundle.isEmpty:()Z
        //   512: istore          9
        //   514: iload           9
        //   516: ifne            583
        //   519: new             Landroid/content/Intent;
        //   522: astore          6
        //   524: ldc             "com.android.launcher.action.APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE"
        //   526: astore          10
        //   528: aload           6
        //   530: aload           10
        //   532: invokespecial   android/content/Intent.<init>:(Ljava/lang/String;)V
        //   535: aload           6
        //   537: aload_1        
        //   538: invokevirtual   android/content/Intent.setComponent:(Landroid/content/ComponentName;)Landroid/content/Intent;
        //   541: pop            
        //   542: aload           6
        //   544: aload_2        
        //   545: invokevirtual   android/content/Intent.putExtras:(Landroid/os/Bundle;)Landroid/content/Intent;
        //   548: pop            
        //   549: ldc             "appWidgetId"
        //   551: astore          10
        //   553: aload           6
        //   555: aload           10
        //   557: iload           7
        //   559: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;I)Landroid/content/Intent;
        //   562: pop            
        //   563: aload_0        
        //   564: getfield        com/android/launcher3/DefaultLayoutParser$AppWidgetParser.this$0:Lcom/android/launcher3/DefaultLayoutParser;
        //   567: astore          8
        //   569: aload           8
        //   571: getfield        com/android/launcher3/DefaultLayoutParser.mContext:Landroid/content/Context;
        //   574: astore          8
        //   576: aload           8
        //   578: aload           6
        //   580: invokevirtual   android/content/Context.sendBroadcast:(Landroid/content/Intent;)V
        //   583: lload_3        
        //   584: lreturn        
        //   585: astore          6
        //   587: ldc             "DefaultLayoutParser"
        //   589: astore          8
        //   591: ldc             "Problem allocating appWidgetId"
        //   593: astore          10
        //   595: aload           8
        //   597: aload           10
        //   599: aload           6
        //   601: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   604: pop            
        //   605: goto            583
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                        
        //  -----  -----  -----  -----  ----------------------------
        //  6      10     152    301    Ljava/lang/Exception;
        //  12     17     152    301    Ljava/lang/Exception;
        //  28     33     152    301    Ljava/lang/Exception;
        //  45     49     585    608    Ljava/lang/RuntimeException;
        //  51     56     585    608    Ljava/lang/RuntimeException;
        //  58     63     585    608    Ljava/lang/RuntimeException;
        //  69     73     585    608    Ljava/lang/RuntimeException;
        //  84     87     585    608    Ljava/lang/RuntimeException;
        //  89     94     585    608    Ljava/lang/RuntimeException;
        //  100    105    585    608    Ljava/lang/RuntimeException;
        //  109    113    585    608    Ljava/lang/RuntimeException;
        //  115    120    585    608    Ljava/lang/RuntimeException;
        //  124    130    585    608    Ljava/lang/RuntimeException;
        //  130    134    585    608    Ljava/lang/RuntimeException;
        //  136    141    585    608    Ljava/lang/RuntimeException;
        //  145    150    585    608    Ljava/lang/RuntimeException;
        //  220    224    251    301    Ljava/lang/Exception;
        //  226    231    251    301    Ljava/lang/Exception;
        //  240    245    251    301    Ljava/lang/Exception;
        //  301    305    585    608    Ljava/lang/RuntimeException;
        //  307    312    585    608    Ljava/lang/RuntimeException;
        //  318    323    585    608    Ljava/lang/RuntimeException;
        //  329    334    585    608    Ljava/lang/RuntimeException;
        //  334    338    585    608    Ljava/lang/RuntimeException;
        //  340    345    585    608    Ljava/lang/RuntimeException;
        //  351    355    585    608    Ljava/lang/RuntimeException;
        //  361    366    585    608    Ljava/lang/RuntimeException;
        //  366    370    585    608    Ljava/lang/RuntimeException;
        //  372    377    585    608    Ljava/lang/RuntimeException;
        //  383    387    585    608    Ljava/lang/RuntimeException;
        //  389    394    585    608    Ljava/lang/RuntimeException;
        //  396    403    585    608    Ljava/lang/RuntimeException;
        //  405    410    585    608    Ljava/lang/RuntimeException;
        //  416    421    585    608    Ljava/lang/RuntimeException;
        //  421    425    585    608    Ljava/lang/RuntimeException;
        //  427    432    585    608    Ljava/lang/RuntimeException;
        //  434    438    585    608    Ljava/lang/RuntimeException;
        //  440    445    585    608    Ljava/lang/RuntimeException;
        //  447    451    585    608    Ljava/lang/RuntimeException;
        //  453    458    585    608    Ljava/lang/RuntimeException;
        //  464    471    585    608    Ljava/lang/RuntimeException;
        //  486    490    585    608    Ljava/lang/RuntimeException;
        //  492    497    585    608    Ljava/lang/RuntimeException;
        //  501    506    585    608    Ljava/lang/RuntimeException;
        //  508    512    585    608    Ljava/lang/RuntimeException;
        //  519    522    585    608    Ljava/lang/RuntimeException;
        //  530    535    585    608    Ljava/lang/RuntimeException;
        //  537    542    585    608    Ljava/lang/RuntimeException;
        //  544    549    585    608    Ljava/lang/RuntimeException;
        //  557    563    585    608    Ljava/lang/RuntimeException;
        //  563    567    585    608    Ljava/lang/RuntimeException;
        //  569    574    585    608    Ljava/lang/RuntimeException;
        //  578    583    585    608    Ljava/lang/RuntimeException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 293, Size: 293
        //     at java.util.ArrayList.rangeCheck(Unknown Source)
        //     at java.util.ArrayList.get(Unknown Source)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3303)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3551)
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
}
