// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.provider;

import com.android.launcher3.model.GridSizeMigrationTask;
import com.android.launcher3.config.ProviderConfig;
import com.android.launcher3.LauncherSettings$WorkspaceScreens;
import android.content.ContentValues;
import android.content.ContentProviderOperation;
import java.util.ArrayList;
import com.android.launcher3.logging.FileLog;
import java.util.Iterator;
import android.os.Process;
import android.content.pm.ProviderInfo;
import com.android.launcher3.LauncherSettings$Settings;
import android.text.TextUtils;
import android.util.LongSparseArray;
import com.android.launcher3.LauncherAppState;
import android.content.SharedPreferences;
import android.content.Intent;
import android.net.Uri;
import android.content.Context;

public class ImportDataTask
{
    private final Context mContext;
    private int mHotseatSize;
    private int mMaxGridSizeX;
    private int mMaxGridSizeY;
    private final Uri mOtherFavoritesUri;
    private final Uri mOtherScreensUri;
    
    private ImportDataTask(final Context mContext, final String s) {
        this.mContext = mContext;
        this.mOtherScreensUri = Uri.parse("content://" + s + "/" + "workspaceScreens");
        this.mOtherFavoritesUri = Uri.parse("content://" + s + "/" + "favorites");
    }
    
    private static SharedPreferences getDevicePrefs(final Context context) {
        return context.getSharedPreferences("com.android.launcher3.device.prefs", 0);
    }
    
    private static final int getMyHotseatLayoutId(final Context context) {
        int n;
        if (LauncherAppState.getIDP(context).numHotseatIcons <= 5) {
            n = 2131230731;
        }
        else {
            n = 2131230734;
        }
        return n;
    }
    
    private static final String getPackage(final Intent intent) {
        String s;
        if (intent.getComponent() != null) {
            s = intent.getComponent().getPackageName();
        }
        else {
            s = intent.getPackage();
        }
        return s;
    }
    
    private void importWorkspaceItems(final long p0, final LongSparseArray p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: astore          4
        //     3: aload_0        
        //     4: getfield        com/android/launcher3/provider/ImportDataTask.mContext:Landroid/content/Context;
        //     7: invokestatic    com/android/launcher3/compat/UserManagerCompat.getInstance:(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;
        //    10: astore          5
        //    12: invokestatic    android/os/Process.myUserHandle:()Landroid/os/UserHandle;
        //    15: astore          6
        //    17: aload           5
        //    19: aload           6
        //    21: invokevirtual   com/android/launcher3/compat/UserManagerCompat.getSerialNumberForUser:(Landroid/os/UserHandle;)J
        //    24: lstore          7
        //    26: lload           7
        //    28: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //    31: astore          9
        //    33: aconst_null    
        //    34: astore          10
        //    36: iconst_0       
        //    37: istore          11
        //    39: aconst_null    
        //    40: astore          12
        //    42: aload_0        
        //    43: getfield        com/android/launcher3/provider/ImportDataTask.mContext:Landroid/content/Context;
        //    46: astore          5
        //    48: aload           5
        //    50: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //    53: astore          5
        //    55: aload_0        
        //    56: getfield        com/android/launcher3/provider/ImportDataTask.mOtherFavoritesUri:Landroid/net/Uri;
        //    59: astore          6
        //    61: ldc             "profileId = ? AND container = -100 AND screen = ? AND cellY = 0"
        //    63: astore          13
        //    65: iconst_2       
        //    66: istore          14
        //    68: iload           14
        //    70: anewarray       Ljava/lang/String;
        //    73: astore          15
        //    75: iconst_0       
        //    76: istore          14
        //    78: aconst_null    
        //    79: astore          16
        //    81: aload           15
        //    83: iconst_0       
        //    84: aload           9
        //    86: aastore        
        //    87: lload_1        
        //    88: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //    91: astore          16
        //    93: iconst_1       
        //    94: istore          17
        //    96: aload           15
        //    98: iload           17
        //   100: aload           16
        //   102: aastore        
        //   103: iconst_0       
        //   104: istore          14
        //   106: aconst_null    
        //   107: astore          16
        //   109: iconst_0       
        //   110: istore          17
        //   112: aconst_null    
        //   113: astore          18
        //   115: aload           5
        //   117: aload           6
        //   119: aconst_null    
        //   120: aload           13
        //   122: aload           15
        //   124: aconst_null    
        //   125: invokevirtual   android/content/ContentResolver.query:(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //   128: astore          6
        //   130: aload           6
        //   132: invokeinterface android/database/Cursor.moveToNext:()Z
        //   137: istore          19
        //   139: aload           6
        //   141: ifnull          151
        //   144: aload           6
        //   146: invokeinterface android/database/Cursor.close:()V
        //   151: aload           10
        //   153: ifnull          240
        //   156: aload           10
        //   158: athrow         
        //   159: astore          10
        //   161: goto            151
        //   164: astore          5
        //   166: aconst_null    
        //   167: astore          6
        //   169: aload           5
        //   171: athrow         
        //   172: astore          16
        //   174: aload           6
        //   176: astore          12
        //   178: aload           5
        //   180: astore          6
        //   182: aload           16
        //   184: astore          5
        //   186: aload           12
        //   188: ifnull          198
        //   191: aload           12
        //   193: invokeinterface android/database/Cursor.close:()V
        //   198: aload           6
        //   200: ifnull          237
        //   203: aload           6
        //   205: athrow         
        //   206: astore          16
        //   208: aload           6
        //   210: ifnonnull       220
        //   213: aload           16
        //   215: astore          6
        //   217: goto            198
        //   220: aload           6
        //   222: aload           16
        //   224: if_acmpeq       198
        //   227: aload           6
        //   229: aload           16
        //   231: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   234: goto            198
        //   237: aload           5
        //   239: athrow         
        //   240: new             Ljava/util/ArrayList;
        //   243: astore          20
        //   245: bipush          15
        //   247: istore          21
        //   249: aload           20
        //   251: astore          4
        //   253: aload           20
        //   255: iload           21
        //   257: invokespecial   java/util/ArrayList.<init>:(I)V
        //   260: new             Ljava/util/HashSet;
        //   263: astore          22
        //   265: aload           22
        //   267: invokespecial   java/util/HashSet.<init>:()V
        //   270: iconst_0       
        //   271: istore          23
        //   273: aconst_null    
        //   274: astore          24
        //   276: iconst_0       
        //   277: istore          25
        //   279: aconst_null    
        //   280: astore          26
        //   282: aconst_null    
        //   283: astore          10
        //   285: iconst_0       
        //   286: istore          11
        //   288: aconst_null    
        //   289: astore          12
        //   291: aload_0        
        //   292: astore          4
        //   294: aload_0        
        //   295: getfield        com/android/launcher3/provider/ImportDataTask.mContext:Landroid/content/Context;
        //   298: astore          5
        //   300: aload           5
        //   302: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //   305: astore          5
        //   307: aload_0        
        //   308: getfield        com/android/launcher3/provider/ImportDataTask.mOtherFavoritesUri:Landroid/net/Uri;
        //   311: astore          6
        //   313: ldc             "profileId = ?"
        //   315: astore          13
        //   317: iconst_1       
        //   318: istore          14
        //   320: iload           14
        //   322: anewarray       Ljava/lang/String;
        //   325: astore          15
        //   327: iconst_0       
        //   328: istore          14
        //   330: aconst_null    
        //   331: astore          16
        //   333: aload           15
        //   335: iconst_0       
        //   336: aload           9
        //   338: aastore        
        //   339: ldc             "container"
        //   341: astore          18
        //   343: iconst_0       
        //   344: istore          14
        //   346: aconst_null    
        //   347: astore          16
        //   349: aload           5
        //   351: aload           6
        //   353: aconst_null    
        //   354: aload           13
        //   356: aload           15
        //   358: aload           18
        //   360: invokevirtual   android/content/ContentResolver.query:(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //   363: astore          6
        //   365: ldc             "_id"
        //   367: astore          5
        //   369: aload           6
        //   371: aload           5
        //   373: invokeinterface android/database/Cursor.getColumnIndexOrThrow:(Ljava/lang/String;)I
        //   378: istore          11
        //   380: ldc             "intent"
        //   382: astore          5
        //   384: aload           6
        //   386: aload           5
        //   388: invokeinterface android/database/Cursor.getColumnIndexOrThrow:(Ljava/lang/String;)I
        //   393: istore          27
        //   395: ldc             "title"
        //   397: astore          5
        //   399: aload           6
        //   401: aload           5
        //   403: invokeinterface android/database/Cursor.getColumnIndexOrThrow:(Ljava/lang/String;)I
        //   408: istore          28
        //   410: ldc             "container"
        //   412: astore          5
        //   414: aload           6
        //   416: aload           5
        //   418: invokeinterface android/database/Cursor.getColumnIndexOrThrow:(Ljava/lang/String;)I
        //   423: istore          29
        //   425: ldc             "itemType"
        //   427: astore          5
        //   429: aload           6
        //   431: aload           5
        //   433: invokeinterface android/database/Cursor.getColumnIndexOrThrow:(Ljava/lang/String;)I
        //   438: istore          30
        //   440: ldc             "appWidgetProvider"
        //   442: astore          5
        //   444: aload           6
        //   446: aload           5
        //   448: invokeinterface android/database/Cursor.getColumnIndexOrThrow:(Ljava/lang/String;)I
        //   453: istore          31
        //   455: ldc             "screen"
        //   457: astore          5
        //   459: aload           6
        //   461: aload           5
        //   463: invokeinterface android/database/Cursor.getColumnIndexOrThrow:(Ljava/lang/String;)I
        //   468: istore          32
        //   470: ldc             "cellX"
        //   472: astore          5
        //   474: aload           6
        //   476: aload           5
        //   478: invokeinterface android/database/Cursor.getColumnIndexOrThrow:(Ljava/lang/String;)I
        //   483: istore          33
        //   485: ldc             "cellY"
        //   487: astore          5
        //   489: aload           6
        //   491: aload           5
        //   493: invokeinterface android/database/Cursor.getColumnIndexOrThrow:(Ljava/lang/String;)I
        //   498: istore          34
        //   500: ldc             "spanX"
        //   502: astore          5
        //   504: aload           6
        //   506: aload           5
        //   508: invokeinterface android/database/Cursor.getColumnIndexOrThrow:(Ljava/lang/String;)I
        //   513: istore          35
        //   515: ldc             "spanY"
        //   517: astore          5
        //   519: aload           6
        //   521: aload           5
        //   523: invokeinterface android/database/Cursor.getColumnIndexOrThrow:(Ljava/lang/String;)I
        //   528: istore          36
        //   530: ldc             "rank"
        //   532: astore          5
        //   534: aload           6
        //   536: aload           5
        //   538: invokeinterface android/database/Cursor.getColumnIndexOrThrow:(Ljava/lang/String;)I
        //   543: istore          37
        //   545: ldc             "icon"
        //   547: astore          5
        //   549: aload           6
        //   551: aload           5
        //   553: invokeinterface android/database/Cursor.getColumnIndexOrThrow:(Ljava/lang/String;)I
        //   558: istore          38
        //   560: ldc             "iconPackage"
        //   562: astore          5
        //   564: aload           6
        //   566: aload           5
        //   568: invokeinterface android/database/Cursor.getColumnIndexOrThrow:(Ljava/lang/String;)I
        //   573: istore          39
        //   575: ldc             "iconResource"
        //   577: astore          5
        //   579: aload           6
        //   581: aload           5
        //   583: invokeinterface android/database/Cursor.getColumnIndexOrThrow:(Ljava/lang/String;)I
        //   588: istore          40
        //   590: new             Landroid/util/SparseBooleanArray;
        //   593: astore          41
        //   595: aload           41
        //   597: invokespecial   android/util/SparseBooleanArray.<init>:()V
        //   600: new             Landroid/content/ContentValues;
        //   603: astore          42
        //   605: aload           42
        //   607: invokespecial   android/content/ContentValues.<init>:()V
        //   610: iconst_0       
        //   611: istore          14
        //   613: aconst_null    
        //   614: astore          16
        //   616: iconst_0       
        //   617: istore          43
        //   619: aconst_null    
        //   620: astore          13
        //   622: aload           6
        //   624: invokeinterface android/database/Cursor.moveToNext:()Z
        //   629: istore          21
        //   631: iload           21
        //   633: ifeq            2121
        //   636: aload           42
        //   638: invokevirtual   android/content/ContentValues.clear:()V
        //   641: aload           6
        //   643: iload           11
        //   645: invokeinterface android/database/Cursor.getInt:(I)I
        //   650: istore          44
        //   652: iload           44
        //   654: istore          45
        //   656: iload           43
        //   658: iload           44
        //   660: invokestatic    java/lang/Math.max:(II)I
        //   663: istore          17
        //   665: iload           30
        //   667: istore          45
        //   669: aload           6
        //   671: iload           30
        //   673: invokeinterface android/database/Cursor.getInt:(I)I
        //   678: istore          43
        //   680: iload           29
        //   682: istore          45
        //   684: aload           6
        //   686: iload           29
        //   688: invokeinterface android/database/Cursor.getInt:(I)I
        //   693: istore          46
        //   695: iload           32
        //   697: istore          45
        //   699: aload           6
        //   701: iload           32
        //   703: invokeinterface android/database/Cursor.getLong:(I)J
        //   708: lstore          47
        //   710: iload           33
        //   712: istore          45
        //   714: aload           6
        //   716: iload           33
        //   718: invokeinterface android/database/Cursor.getInt:(I)I
        //   723: istore          49
        //   725: iload           34
        //   727: istore          45
        //   729: aload           6
        //   731: iload           34
        //   733: invokeinterface android/database/Cursor.getInt:(I)I
        //   738: istore          50
        //   740: iload           35
        //   742: istore          45
        //   744: aload           6
        //   746: iload           35
        //   748: invokeinterface android/database/Cursor.getInt:(I)I
        //   753: istore          51
        //   755: iload           36
        //   757: istore          45
        //   759: aload           6
        //   761: iload           36
        //   763: invokeinterface android/database/Cursor.getInt:(I)I
        //   768: istore          52
        //   770: iload           46
        //   772: tableswitch {
        //             -202: 1261
        //             -201: 908
        //          default: 796
        //        }
        //   796: aload           41
        //   798: astore          4
        //   800: aload           41
        //   802: iload           46
        //   804: invokevirtual   android/util/SparseBooleanArray.get:(I)Z
        //   807: istore          21
        //   809: iload           21
        //   811: ifne            1134
        //   814: ldc             "ImportDataTask"
        //   816: astore          5
        //   818: ldc             "Skipping item %d, type %d not in a valid folder %d"
        //   820: astore          15
        //   822: iconst_3       
        //   823: istore          25
        //   825: iload           25
        //   827: anewarray       Ljava/lang/Object;
        //   830: astore          26
        //   832: iload           44
        //   834: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   837: astore          24
        //   839: iconst_0       
        //   840: istore          44
        //   842: aconst_null    
        //   843: astore          53
        //   845: aload           26
        //   847: iconst_0       
        //   848: aload           24
        //   850: aastore        
        //   851: iload           43
        //   853: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   856: astore          13
        //   858: iconst_1       
        //   859: istore          23
        //   861: aload           26
        //   863: iload           23
        //   865: aload           13
        //   867: aastore        
        //   868: iload           46
        //   870: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   873: astore          13
        //   875: iconst_2       
        //   876: istore          23
        //   878: aload           26
        //   880: iload           23
        //   882: aload           13
        //   884: aastore        
        //   885: aload           15
        //   887: aload           26
        //   889: invokestatic    java/lang/String.format:(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //   892: astore          13
        //   894: aload           5
        //   896: aload           13
        //   898: invokestatic    com/android/launcher3/logging/FileLog.d:(Ljava/lang/String;Ljava/lang/String;)V
        //   901: iload           17
        //   903: istore          43
        //   905: goto            622
        //   908: aload_3        
        //   909: astore          4
        //   911: aload_3        
        //   912: lload           47
        //   914: invokevirtual   android/util/LongSparseArray.get:(J)Ljava/lang/Object;
        //   917: astore          5
        //   919: aload           5
        //   921: checkcast       Ljava/lang/Long;
        //   924: astore          5
        //   926: aload           5
        //   928: ifnonnull       1026
        //   931: ldc             "ImportDataTask"
        //   933: astore          5
        //   935: ldc             "Skipping item %d, type %d not on a valid screen %d"
        //   937: astore          15
        //   939: iconst_3       
        //   940: istore          46
        //   942: iload           46
        //   944: istore          45
        //   946: iload           46
        //   948: anewarray       Ljava/lang/Object;
        //   951: astore          4
        //   953: iload           44
        //   955: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   958: astore          53
        //   960: iconst_0       
        //   961: istore          49
        //   963: aload           4
        //   965: iconst_0       
        //   966: aload           53
        //   968: aastore        
        //   969: iload           43
        //   971: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   974: astore          13
        //   976: iconst_1       
        //   977: istore          44
        //   979: aload           4
        //   981: iload           44
        //   983: aload           13
        //   985: aastore        
        //   986: lload           47
        //   988: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   991: astore          13
        //   993: iconst_2       
        //   994: istore          25
        //   996: aload           4
        //   998: iload           25
        //  1000: aload           13
        //  1002: aastore        
        //  1003: aload           15
        //  1005: aload           4
        //  1007: invokestatic    java/lang/String.format:(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //  1010: astore          13
        //  1012: aload           5
        //  1014: aload           13
        //  1016: invokestatic    com/android/launcher3/logging/FileLog.d:(Ljava/lang/String;Ljava/lang/String;)V
        //  1019: iload           17
        //  1021: istore          43
        //  1023: goto            622
        //  1026: aload           5
        //  1028: invokevirtual   java/lang/Long.longValue:()J
        //  1031: lstore          47
        //  1033: iload           19
        //  1035: ifeq            1254
        //  1038: lconst_0       
        //  1039: lstore          54
        //  1041: lload           47
        //  1043: lload           54
        //  1045: lcmp           
        //  1046: istore          21
        //  1048: iload           21
        //  1050: ifne            1254
        //  1053: iload           50
        //  1055: iconst_1       
        //  1056: iadd           
        //  1057: istore          50
        //  1059: iload           50
        //  1061: istore          21
        //  1063: aload_0        
        //  1064: astore          4
        //  1066: aload_0        
        //  1067: getfield        com/android/launcher3/provider/ImportDataTask.mMaxGridSizeX:I
        //  1070: istore          50
        //  1072: iload           49
        //  1074: iload           51
        //  1076: iadd           
        //  1077: istore          56
        //  1079: iload           56
        //  1081: istore          45
        //  1083: iload           50
        //  1085: iload           56
        //  1087: invokestatic    java/lang/Math.max:(II)I
        //  1090: istore          50
        //  1092: aload_0        
        //  1093: iload           50
        //  1095: putfield        com/android/launcher3/provider/ImportDataTask.mMaxGridSizeX:I
        //  1098: aload_0        
        //  1099: getfield        com/android/launcher3/provider/ImportDataTask.mMaxGridSizeY:I
        //  1102: istore          50
        //  1104: iload           21
        //  1106: iload           52
        //  1108: iadd           
        //  1109: istore          56
        //  1111: iload           56
        //  1113: istore          45
        //  1115: iload           50
        //  1117: iload           56
        //  1119: invokestatic    java/lang/Math.max:(II)I
        //  1122: istore          50
        //  1124: aload_0        
        //  1125: iload           50
        //  1127: putfield        com/android/launcher3/provider/ImportDataTask.mMaxGridSizeY:I
        //  1130: iload           21
        //  1132: istore          50
        //  1134: iconst_0       
        //  1135: istore          21
        //  1137: aconst_null    
        //  1138: astore          5
        //  1140: iload           43
        //  1142: tableswitch {
        //                0: 1509
        //                1: 1509
        //                2: 1342
        //                3: 1176
        //                4: 1449
        //          default: 1176
        //        }
        //  1176: ldc             "ImportDataTask"
        //  1178: astore          5
        //  1180: ldc_w           "Skipping item %d, not a valid type %d"
        //  1183: astore          15
        //  1185: iconst_2       
        //  1186: istore          25
        //  1188: iload           25
        //  1190: anewarray       Ljava/lang/Object;
        //  1193: astore          26
        //  1195: iload           44
        //  1197: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1200: astore          24
        //  1202: iconst_0       
        //  1203: istore          44
        //  1205: aconst_null    
        //  1206: astore          53
        //  1208: aload           26
        //  1210: iconst_0       
        //  1211: aload           24
        //  1213: aastore        
        //  1214: iload           43
        //  1216: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1219: astore          13
        //  1221: iconst_1       
        //  1222: istore          23
        //  1224: aload           26
        //  1226: iload           23
        //  1228: aload           13
        //  1230: aastore        
        //  1231: aload           15
        //  1233: aload           26
        //  1235: invokestatic    java/lang/String.format:(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //  1238: astore          13
        //  1240: aload           5
        //  1242: aload           13
        //  1244: invokestatic    com/android/launcher3/logging/FileLog.d:(Ljava/lang/String;Ljava/lang/String;)V
        //  1247: iload           17
        //  1249: istore          43
        //  1251: goto            622
        //  1254: iload           50
        //  1256: istore          21
        //  1258: goto            1063
        //  1261: aload_0        
        //  1262: astore          4
        //  1264: aload_0        
        //  1265: getfield        com/android/launcher3/provider/ImportDataTask.mHotseatSize:I
        //  1268: istore          21
        //  1270: lload           47
        //  1272: l2i            
        //  1273: istore          45
        //  1275: iload           45
        //  1277: istore          56
        //  1279: iload           45
        //  1281: iconst_1       
        //  1282: iadd           
        //  1283: istore          56
        //  1285: iload           56
        //  1287: istore          45
        //  1289: iload           21
        //  1291: iload           56
        //  1293: invokestatic    java/lang/Math.max:(II)I
        //  1296: istore          21
        //  1298: aload_0        
        //  1299: iload           21
        //  1301: putfield        com/android/launcher3/provider/ImportDataTask.mHotseatSize:I
        //  1304: goto            1134
        //  1307: astore          5
        //  1309: aload           5
        //  1311: athrow         
        //  1312: astore          57
        //  1314: aload           5
        //  1316: astore          16
        //  1318: aload           57
        //  1320: astore          5
        //  1322: aload           6
        //  1324: ifnull          1334
        //  1327: aload           6
        //  1329: invokeinterface android/database/Cursor.close:()V
        //  1334: aload           16
        //  1336: ifnull          2177
        //  1339: aload           16
        //  1341: athrow         
        //  1342: iconst_1       
        //  1343: istore          21
        //  1345: aload           41
        //  1347: astore          4
        //  1349: aload           41
        //  1351: iload           44
        //  1353: iload           21
        //  1355: invokevirtual   android/util/SparseBooleanArray.put:(IZ)V
        //  1358: new             Landroid/content/Intent;
        //  1361: astore          5
        //  1363: aload           5
        //  1365: invokespecial   android/content/Intent.<init>:()V
        //  1368: bipush          -101
        //  1370: istore          56
        //  1372: iload           46
        //  1374: istore          45
        //  1376: iload           46
        //  1378: iload           56
        //  1380: if_icmpne       1809
        //  1383: aload           5
        //  1385: ifnonnull       1752
        //  1388: ldc             "ImportDataTask"
        //  1390: astore          5
        //  1392: ldc_w           "Skipping item %d, null intent on hotseat"
        //  1395: astore          13
        //  1397: iconst_1       
        //  1398: istore          50
        //  1400: iload           50
        //  1402: anewarray       Ljava/lang/Object;
        //  1405: astore          15
        //  1407: iload           44
        //  1409: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1412: astore          26
        //  1414: iconst_0       
        //  1415: istore          23
        //  1417: aconst_null    
        //  1418: astore          24
        //  1420: aload           15
        //  1422: iconst_0       
        //  1423: aload           26
        //  1425: aastore        
        //  1426: aload           13
        //  1428: aload           15
        //  1430: invokestatic    java/lang/String.format:(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //  1433: astore          13
        //  1435: aload           5
        //  1437: aload           13
        //  1439: invokestatic    com/android/launcher3/logging/FileLog.d:(Ljava/lang/String;Ljava/lang/String;)V
        //  1442: iload           17
        //  1444: istore          43
        //  1446: goto            622
        //  1449: ldc_w           "restored"
        //  1452: astore          58
        //  1454: bipush          7
        //  1456: istore          59
        //  1458: iload           59
        //  1460: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1463: astore          60
        //  1465: aload           42
        //  1467: astore          4
        //  1469: aload           42
        //  1471: aload           58
        //  1473: aload           60
        //  1475: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //  1478: ldc             "appWidgetProvider"
        //  1480: astore          58
        //  1482: iload           31
        //  1484: istore          45
        //  1486: aload           6
        //  1488: iload           31
        //  1490: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //  1495: astore          60
        //  1497: aload           42
        //  1499: aload           58
        //  1501: aload           60
        //  1503: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
        //  1506: goto            1368
        //  1509: aload           6
        //  1511: iload           27
        //  1513: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //  1518: astore          5
        //  1520: iconst_0       
        //  1521: istore          56
        //  1523: aconst_null    
        //  1524: astore          58
        //  1526: iconst_0       
        //  1527: istore          45
        //  1529: aconst_null    
        //  1530: astore          4
        //  1532: aload           5
        //  1534: iconst_0       
        //  1535: invokestatic    android/content/Intent.parseUri:(Ljava/lang/String;I)Landroid/content/Intent;
        //  1538: astore          5
        //  1540: aload           5
        //  1542: invokestatic    com/android/launcher3/Utilities.isLauncherAppTarget:(Landroid/content/Intent;)Z
        //  1545: istore          56
        //  1547: iload           56
        //  1549: ifeq            1689
        //  1552: iconst_0       
        //  1553: istore          43
        //  1555: aconst_null    
        //  1556: astore          13
        //  1558: ldc             "icon"
        //  1560: astore          58
        //  1562: iload           38
        //  1564: istore          45
        //  1566: aload           6
        //  1568: iload           38
        //  1570: invokeinterface android/database/Cursor.getBlob:(I)[B
        //  1575: astore          60
        //  1577: aload           42
        //  1579: astore          4
        //  1581: aload           42
        //  1583: aload           58
        //  1585: aload           60
        //  1587: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;[B)V
        //  1590: ldc             "intent"
        //  1592: astore          58
        //  1594: iconst_0       
        //  1595: istore          59
        //  1597: aconst_null    
        //  1598: astore          60
        //  1600: iconst_0       
        //  1601: istore          45
        //  1603: aconst_null    
        //  1604: astore          4
        //  1606: aload           5
        //  1608: iconst_0       
        //  1609: invokevirtual   android/content/Intent.toUri:(I)Ljava/lang/String;
        //  1612: astore          60
        //  1614: aload           42
        //  1616: astore          4
        //  1618: aload           42
        //  1620: aload           58
        //  1622: aload           60
        //  1624: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
        //  1627: ldc             "rank"
        //  1629: astore          58
        //  1631: iload           37
        //  1633: istore          45
        //  1635: aload           6
        //  1637: iload           37
        //  1639: invokeinterface android/database/Cursor.getInt:(I)I
        //  1644: istore          59
        //  1646: iload           59
        //  1648: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1651: astore          60
        //  1653: aload           42
        //  1655: aload           58
        //  1657: aload           60
        //  1659: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //  1662: ldc_w           "restored"
        //  1665: astore          58
        //  1667: iconst_1       
        //  1668: istore          59
        //  1670: iload           59
        //  1672: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1675: astore          60
        //  1677: aload           42
        //  1679: aload           58
        //  1681: aload           60
        //  1683: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //  1686: goto            1368
        //  1689: ldc             "iconPackage"
        //  1691: astore          58
        //  1693: iload           39
        //  1695: istore          45
        //  1697: aload           6
        //  1699: iload           39
        //  1701: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //  1706: astore          60
        //  1708: aload           42
        //  1710: astore          4
        //  1712: aload           42
        //  1714: aload           58
        //  1716: aload           60
        //  1718: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
        //  1721: ldc             "iconResource"
        //  1723: astore          58
        //  1725: iload           40
        //  1727: istore          45
        //  1729: aload           6
        //  1731: iload           40
        //  1733: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //  1738: astore          60
        //  1740: aload           42
        //  1742: aload           58
        //  1744: aload           60
        //  1746: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
        //  1749: goto            1558
        //  1752: aload           5
        //  1754: invokevirtual   android/content/Intent.getComponent:()Landroid/content/ComponentName;
        //  1757: astore          58
        //  1759: aload           58
        //  1761: ifnull          1790
        //  1764: aload           5
        //  1766: invokevirtual   android/content/Intent.getComponent:()Landroid/content/ComponentName;
        //  1769: astore          58
        //  1771: aload           58
        //  1773: invokevirtual   android/content/ComponentName.getPackageName:()Ljava/lang/String;
        //  1776: astore          58
        //  1778: aload           58
        //  1780: astore          4
        //  1782: aload           5
        //  1784: aload           58
        //  1786: invokevirtual   android/content/Intent.setPackage:(Ljava/lang/String;)Landroid/content/Intent;
        //  1789: pop            
        //  1790: aload           5
        //  1792: invokestatic    com/android/launcher3/provider/ImportDataTask.getPackage:(Landroid/content/Intent;)Ljava/lang/String;
        //  1795: astore          5
        //  1797: aload           22
        //  1799: astore          4
        //  1801: aload           22
        //  1803: aload           5
        //  1805: invokevirtual   java/util/HashSet.add:(Ljava/lang/Object;)Z
        //  1808: pop            
        //  1809: ldc             "_id"
        //  1811: astore          5
        //  1813: iload           44
        //  1815: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1818: astore          53
        //  1820: aload           42
        //  1822: astore          4
        //  1824: aload           42
        //  1826: aload           5
        //  1828: aload           53
        //  1830: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //  1833: ldc             "itemType"
        //  1835: astore          5
        //  1837: iload           43
        //  1839: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1842: astore          13
        //  1844: aload           42
        //  1846: aload           5
        //  1848: aload           13
        //  1850: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //  1853: ldc             "container"
        //  1855: astore          5
        //  1857: iload           46
        //  1859: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1862: astore          13
        //  1864: aload           42
        //  1866: aload           5
        //  1868: aload           13
        //  1870: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //  1873: ldc             "screen"
        //  1875: astore          5
        //  1877: lload           47
        //  1879: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //  1882: astore          13
        //  1884: aload           42
        //  1886: aload           5
        //  1888: aload           13
        //  1890: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Long;)V
        //  1893: ldc             "cellX"
        //  1895: astore          5
        //  1897: iload           49
        //  1899: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1902: astore          13
        //  1904: aload           42
        //  1906: aload           5
        //  1908: aload           13
        //  1910: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //  1913: ldc             "cellY"
        //  1915: astore          5
        //  1917: iload           50
        //  1919: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1922: astore          13
        //  1924: aload           42
        //  1926: aload           5
        //  1928: aload           13
        //  1930: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //  1933: ldc             "spanX"
        //  1935: astore          5
        //  1937: iload           51
        //  1939: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1942: astore          13
        //  1944: aload           42
        //  1946: aload           5
        //  1948: aload           13
        //  1950: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //  1953: ldc             "spanY"
        //  1955: astore          5
        //  1957: iload           52
        //  1959: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1962: astore          13
        //  1964: aload           42
        //  1966: aload           5
        //  1968: aload           13
        //  1970: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //  1973: ldc             "title"
        //  1975: astore          5
        //  1977: iload           28
        //  1979: istore          45
        //  1981: aload           6
        //  1983: iload           28
        //  1985: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //  1990: astore          13
        //  1992: aload           42
        //  1994: aload           5
        //  1996: aload           13
        //  1998: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
        //  2001: getstatic       com/android/launcher3/LauncherSettings$Favorites.CONTENT_URI:Landroid/net/Uri;
        //  2004: astore          5
        //  2006: aload           5
        //  2008: invokestatic    android/content/ContentProviderOperation.newInsert:(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
        //  2011: astore          5
        //  2013: aload           5
        //  2015: aload           42
        //  2017: invokevirtual   android/content/ContentProviderOperation$Builder.withValues:(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
        //  2020: astore          5
        //  2022: aload           5
        //  2024: invokevirtual   android/content/ContentProviderOperation$Builder.build:()Landroid/content/ContentProviderOperation;
        //  2027: astore          5
        //  2029: aload           20
        //  2031: astore          4
        //  2033: aload           20
        //  2035: aload           5
        //  2037: invokevirtual   java/util/ArrayList.add:(Ljava/lang/Object;)Z
        //  2040: pop            
        //  2041: iload           46
        //  2043: ifge            2508
        //  2046: iload           14
        //  2048: iconst_1       
        //  2049: iadd           
        //  2050: istore          21
        //  2052: aload           20
        //  2054: invokevirtual   java/util/ArrayList.size:()I
        //  2057: istore          14
        //  2059: bipush          15
        //  2061: istore          43
        //  2063: iload           14
        //  2065: iload           43
        //  2067: if_icmplt       2110
        //  2070: aload_0        
        //  2071: astore          4
        //  2073: aload_0        
        //  2074: getfield        com/android/launcher3/provider/ImportDataTask.mContext:Landroid/content/Context;
        //  2077: astore          16
        //  2079: aload           16
        //  2081: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //  2084: astore          16
        //  2086: getstatic       com/android/launcher3/config/ProviderConfig.AUTHORITY:Ljava/lang/String;
        //  2089: astore          13
        //  2091: aload           20
        //  2093: astore          4
        //  2095: aload           16
        //  2097: aload           13
        //  2099: aload           20
        //  2101: invokevirtual   android/content/ContentResolver.applyBatch:(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
        //  2104: pop            
        //  2105: aload           20
        //  2107: invokevirtual   java/util/ArrayList.clear:()V
        //  2110: iload           21
        //  2112: istore          14
        //  2114: iload           17
        //  2116: istore          43
        //  2118: goto            622
        //  2121: aload           6
        //  2123: ifnull          2133
        //  2126: aload           6
        //  2128: invokeinterface android/database/Cursor.close:()V
        //  2133: aload           10
        //  2135: ifnull          2180
        //  2138: aload           10
        //  2140: athrow         
        //  2141: astore          10
        //  2143: goto            2133
        //  2146: astore          6
        //  2148: aload           16
        //  2150: ifnonnull       2160
        //  2153: aload           6
        //  2155: astore          16
        //  2157: goto            1334
        //  2160: aload           16
        //  2162: aload           6
        //  2164: if_acmpeq       1334
        //  2167: aload           16
        //  2169: aload           6
        //  2171: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //  2174: goto            1334
        //  2177: aload           5
        //  2179: athrow         
        //  2180: ldc             "ImportDataTask"
        //  2182: astore          5
        //  2184: new             Ljava/lang/StringBuilder;
        //  2187: astore          6
        //  2189: aload           6
        //  2191: invokespecial   java/lang/StringBuilder.<init>:()V
        //  2194: aload           6
        //  2196: iload           14
        //  2198: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //  2201: astore          6
        //  2203: ldc_w           " items imported from external source"
        //  2206: astore          15
        //  2208: aload           6
        //  2210: aload           15
        //  2212: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  2215: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  2218: astore          6
        //  2220: aload           5
        //  2222: aload           6
        //  2224: invokestatic    com/android/launcher3/logging/FileLog.d:(Ljava/lang/String;Ljava/lang/String;)V
        //  2227: bipush          6
        //  2229: istore          21
        //  2231: iload           14
        //  2233: iload           21
        //  2235: if_icmpge       2254
        //  2238: new             Ljava/lang/Exception;
        //  2241: astore          5
        //  2243: aload           5
        //  2245: ldc_w           "Insufficient data"
        //  2248: invokespecial   java/lang/Exception.<init>:(Ljava/lang/String;)V
        //  2251: aload           5
        //  2253: athrow         
        //  2254: aload           20
        //  2256: invokevirtual   java/util/ArrayList.isEmpty:()Z
        //  2259: istore          21
        //  2261: iload           21
        //  2263: ifne            2302
        //  2266: aload_0        
        //  2267: astore          4
        //  2269: aload_0        
        //  2270: getfield        com/android/launcher3/provider/ImportDataTask.mContext:Landroid/content/Context;
        //  2273: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //  2276: astore          5
        //  2278: getstatic       com/android/launcher3/config/ProviderConfig.AUTHORITY:Ljava/lang/String;
        //  2281: astore          6
        //  2283: aload           20
        //  2285: astore          4
        //  2287: aload           5
        //  2289: aload           6
        //  2291: aload           20
        //  2293: invokevirtual   android/content/ContentResolver.applyBatch:(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
        //  2296: pop            
        //  2297: aload           20
        //  2299: invokevirtual   java/util/ArrayList.clear:()V
        //  2302: aload_0        
        //  2303: astore          4
        //  2305: aload_0        
        //  2306: getfield        com/android/launcher3/provider/ImportDataTask.mContext:Landroid/content/Context;
        //  2309: invokestatic    com/android/launcher3/model/GridSizeMigrationTask.removeBrokenHotseatItems:(Landroid/content/Context;)Lcom/android/launcher3/util/LongArrayMap;
        //  2312: astore          16
        //  2314: aload_0        
        //  2315: getfield        com/android/launcher3/provider/ImportDataTask.mContext:Landroid/content/Context;
        //  2318: invokestatic    com/android/launcher3/LauncherAppState.getIDP:(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;
        //  2321: astore          5
        //  2323: aload           5
        //  2325: getfield        com/android/launcher3/InvariantDeviceProfile.numHotseatIcons:I
        //  2328: istore          17
        //  2330: aload           16
        //  2332: invokevirtual   com/android/launcher3/util/LongArrayMap.size:()I
        //  2335: istore          21
        //  2337: iload           21
        //  2339: iload           17
        //  2341: if_icmpge       2494
        //  2344: new             Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;
        //  2347: astore          5
        //  2349: iload           43
        //  2351: iconst_1       
        //  2352: iadd           
        //  2353: istore          50
        //  2355: aload           22
        //  2357: astore          6
        //  2359: aload           20
        //  2361: astore          13
        //  2363: aload           5
        //  2365: aload           22
        //  2367: aload           16
        //  2369: aload           20
        //  2371: iload           50
        //  2373: iload           17
        //  2375: invokespecial   com/android/launcher3/provider/ImportDataTask$HotseatParserCallback.<init>:(Ljava/util/HashSet;Lcom/android/launcher3/util/LongArrayMap;Ljava/util/ArrayList;II)V
        //  2378: new             Lcom/android/launcher3/provider/ImportDataTask$HotseatLayoutParser;
        //  2381: astore          6
        //  2383: aload_0        
        //  2384: getfield        com/android/launcher3/provider/ImportDataTask.mContext:Landroid/content/Context;
        //  2387: astore          13
        //  2389: aload           6
        //  2391: aload           13
        //  2393: aload           5
        //  2395: invokespecial   com/android/launcher3/provider/ImportDataTask$HotseatLayoutParser.<init>:(Landroid/content/Context;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;)V
        //  2398: new             Ljava/util/ArrayList;
        //  2401: astore          5
        //  2403: aload           5
        //  2405: invokespecial   java/util/ArrayList.<init>:()V
        //  2408: iconst_0       
        //  2409: istore          43
        //  2411: aconst_null    
        //  2412: astore          13
        //  2414: aload           6
        //  2416: aconst_null    
        //  2417: aload           5
        //  2419: invokevirtual   com/android/launcher3/provider/ImportDataTask$HotseatLayoutParser.loadLayout:(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)I
        //  2422: pop            
        //  2423: aload           16
        //  2425: invokevirtual   com/android/launcher3/util/LongArrayMap.size:()I
        //  2428: iconst_m1      
        //  2429: iadd           
        //  2430: istore          21
        //  2432: aload           16
        //  2434: iload           21
        //  2436: invokevirtual   com/android/launcher3/util/LongArrayMap.keyAt:(I)J
        //  2439: lstore          7
        //  2441: lload           7
        //  2443: l2i            
        //  2444: iconst_1       
        //  2445: iadd           
        //  2446: istore          21
        //  2448: aload_0        
        //  2449: iload           21
        //  2451: putfield        com/android/launcher3/provider/ImportDataTask.mHotseatSize:I
        //  2454: aload           20
        //  2456: invokevirtual   java/util/ArrayList.isEmpty:()Z
        //  2459: istore          21
        //  2461: iload           21
        //  2463: ifne            2494
        //  2466: aload_0        
        //  2467: getfield        com/android/launcher3/provider/ImportDataTask.mContext:Landroid/content/Context;
        //  2470: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //  2473: astore          5
        //  2475: getstatic       com/android/launcher3/config/ProviderConfig.AUTHORITY:Ljava/lang/String;
        //  2478: astore          6
        //  2480: aload           20
        //  2482: astore          4
        //  2484: aload           5
        //  2486: aload           6
        //  2488: aload           20
        //  2490: invokevirtual   android/content/ContentResolver.applyBatch:(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
        //  2493: pop            
        //  2494: return         
        //  2495: astore          5
        //  2497: aconst_null    
        //  2498: astore          6
        //  2500: goto            1309
        //  2503: astore          5
        //  2505: goto            169
        //  2508: iload           14
        //  2510: istore          21
        //  2512: goto            2052
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  42     46     164    172    Any
        //  48     53     164    172    Any
        //  55     59     164    172    Any
        //  68     73     164    172    Any
        //  84     87     164    172    Any
        //  87     91     164    172    Any
        //  100    103    164    172    Any
        //  124    128    164    172    Any
        //  130    137    2503   172    Any
        //  144    151    159    164    Any
        //  169    172    172    240    Any
        //  191    198    206    237    Any
        //  294    298    2495   1312   Any
        //  300    305    2495   1312   Any
        //  307    311    2495   1312   Any
        //  320    325    2495   1312   Any
        //  336    339    2495   1312   Any
        //  358    363    2495   1312   Any
        //  371    378    1307   1312   Any
        //  386    393    1307   1312   Any
        //  401    408    1307   1312   Any
        //  416    423    1307   1312   Any
        //  431    438    1307   1312   Any
        //  446    453    1307   1312   Any
        //  461    468    1307   1312   Any
        //  476    483    1307   1312   Any
        //  491    498    1307   1312   Any
        //  506    513    1307   1312   Any
        //  521    528    1307   1312   Any
        //  536    543    1307   1312   Any
        //  551    558    1307   1312   Any
        //  566    573    1307   1312   Any
        //  581    588    1307   1312   Any
        //  590    593    1307   1312   Any
        //  595    600    1307   1312   Any
        //  600    603    1307   1312   Any
        //  605    610    1307   1312   Any
        //  622    629    1307   1312   Any
        //  636    641    1307   1312   Any
        //  643    650    1307   1312   Any
        //  658    663    1307   1312   Any
        //  671    678    1307   1312   Any
        //  686    693    1307   1312   Any
        //  701    708    1307   1312   Any
        //  716    723    1307   1312   Any
        //  731    738    1307   1312   Any
        //  746    753    1307   1312   Any
        //  761    768    1307   1312   Any
        //  802    807    1307   1312   Any
        //  825    830    1307   1312   Any
        //  832    837    1307   1312   Any
        //  848    851    1307   1312   Any
        //  851    856    1307   1312   Any
        //  865    868    1307   1312   Any
        //  868    873    1307   1312   Any
        //  882    885    1307   1312   Any
        //  887    892    1307   1312   Any
        //  896    901    1307   1312   Any
        //  912    917    1307   1312   Any
        //  919    924    1307   1312   Any
        //  946    951    1307   1312   Any
        //  953    958    1307   1312   Any
        //  966    969    1307   1312   Any
        //  969    974    1307   1312   Any
        //  983    986    1307   1312   Any
        //  986    991    1307   1312   Any
        //  1000   1003   1307   1312   Any
        //  1005   1010   1307   1312   Any
        //  1014   1019   1307   1312   Any
        //  1026   1031   1307   1312   Any
        //  1066   1070   1307   1312   Any
        //  1085   1090   1307   1312   Any
        //  1093   1098   1307   1312   Any
        //  1098   1102   1307   1312   Any
        //  1117   1122   1307   1312   Any
        //  1125   1130   1307   1312   Any
        //  1188   1193   1307   1312   Any
        //  1195   1200   1307   1312   Any
        //  1211   1214   1307   1312   Any
        //  1214   1219   1307   1312   Any
        //  1228   1231   1307   1312   Any
        //  1233   1238   1307   1312   Any
        //  1242   1247   1307   1312   Any
        //  1264   1268   1307   1312   Any
        //  1291   1296   1307   1312   Any
        //  1299   1304   1307   1312   Any
        //  1309   1312   1312   2180   Any
        //  1327   1334   2146   2177   Any
        //  1353   1358   1307   1312   Any
        //  1358   1361   1307   1312   Any
        //  1363   1368   1307   1312   Any
        //  1400   1405   1307   1312   Any
        //  1407   1412   1307   1312   Any
        //  1423   1426   1307   1312   Any
        //  1428   1433   1307   1312   Any
        //  1437   1442   1307   1312   Any
        //  1458   1463   1307   1312   Any
        //  1473   1478   1307   1312   Any
        //  1488   1495   1307   1312   Any
        //  1501   1506   1307   1312   Any
        //  1511   1518   1307   1312   Any
        //  1534   1538   1307   1312   Any
        //  1540   1545   1307   1312   Any
        //  1568   1575   1307   1312   Any
        //  1585   1590   1307   1312   Any
        //  1608   1612   1307   1312   Any
        //  1622   1627   1307   1312   Any
        //  1637   1644   1307   1312   Any
        //  1646   1651   1307   1312   Any
        //  1657   1662   1307   1312   Any
        //  1670   1675   1307   1312   Any
        //  1681   1686   1307   1312   Any
        //  1699   1706   1307   1312   Any
        //  1716   1721   1307   1312   Any
        //  1731   1738   1307   1312   Any
        //  1744   1749   1307   1312   Any
        //  1752   1757   1307   1312   Any
        //  1764   1769   1307   1312   Any
        //  1771   1776   1307   1312   Any
        //  1784   1790   1307   1312   Any
        //  1790   1795   1307   1312   Any
        //  1803   1809   1307   1312   Any
        //  1813   1818   1307   1312   Any
        //  1828   1833   1307   1312   Any
        //  1837   1842   1307   1312   Any
        //  1848   1853   1307   1312   Any
        //  1857   1862   1307   1312   Any
        //  1868   1873   1307   1312   Any
        //  1877   1882   1307   1312   Any
        //  1888   1893   1307   1312   Any
        //  1897   1902   1307   1312   Any
        //  1908   1913   1307   1312   Any
        //  1917   1922   1307   1312   Any
        //  1928   1933   1307   1312   Any
        //  1937   1942   1307   1312   Any
        //  1948   1953   1307   1312   Any
        //  1957   1962   1307   1312   Any
        //  1968   1973   1307   1312   Any
        //  1983   1990   1307   1312   Any
        //  1996   2001   1307   1312   Any
        //  2001   2004   1307   1312   Any
        //  2006   2011   1307   1312   Any
        //  2015   2020   1307   1312   Any
        //  2022   2027   1307   1312   Any
        //  2035   2041   1307   1312   Any
        //  2052   2057   1307   1312   Any
        //  2073   2077   1307   1312   Any
        //  2079   2084   1307   1312   Any
        //  2086   2089   1307   1312   Any
        //  2099   2105   1307   1312   Any
        //  2105   2110   1307   1312   Any
        //  2126   2133   2141   2146   Any
        // 
        // The error that occurred was:
        // 
        // java.lang.OutOfMemoryError: Java heap space
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    public static boolean performImportIfPossible(final Context context) {
        final SharedPreferences devicePrefs = getDevicePrefs(context);
        final String string = devicePrefs.getString("data_import_src_pkg", "");
        final String string2 = devicePrefs.getString("data_import_src_authority", "");
        if (TextUtils.isEmpty((CharSequence)string) || TextUtils.isEmpty((CharSequence)string2)) {
            return false;
        }
        devicePrefs.edit().remove("data_import_src_pkg").remove("data_import_src_authority").commit();
        if (!LauncherSettings$Settings.call(context.getContentResolver(), "get_empty_db_flag").getBoolean("value", false)) {
            return false;
        }
        for (final ProviderInfo providerInfo : context.getPackageManager().queryContentProviders((String)null, context.getApplicationInfo().uid, 0)) {
            if (string.equals(providerInfo.packageName)) {
                if ((providerInfo.applicationInfo.flags & 0x1) == 0x0) {
                    return false;
                }
                if (string2.equals(providerInfo.authority) && (TextUtils.isEmpty((CharSequence)providerInfo.readPermission) || context.checkPermission(providerInfo.readPermission, Process.myPid(), Process.myUid()) == 0)) {
                    return new ImportDataTask(context, string2).importWorkspace();
                }
                continue;
            }
        }
        return false;
    }
    
    public boolean importWorkspace() {
        final ArrayList screenIdsFromCursor = LauncherDbUtils.getScreenIdsFromCursor(this.mContext.getContentResolver().query(this.mOtherScreensUri, (String[])null, (String)null, (String[])null, "screenRank"));
        FileLog.d("ImportDataTask", "Importing DB from " + this.mOtherFavoritesUri);
        if (screenIdsFromCursor.isEmpty()) {
            FileLog.e("ImportDataTask", "No data found to import");
            return false;
        }
        this.mMaxGridSizeY = 0;
        this.mMaxGridSizeX = 0;
        this.mHotseatSize = 0;
        final ArrayList<ContentProviderOperation> list = new ArrayList<ContentProviderOperation>();
        final int size = screenIdsFromCursor.size();
        final LongSparseArray longSparseArray = new LongSparseArray(size);
        for (int i = 0; i < size; ++i) {
            final ContentValues contentValues = new ContentValues();
            contentValues.put("_id", i);
            contentValues.put("screenRank", i);
            longSparseArray.put((long)screenIdsFromCursor.get(i), (Object)(long)i);
            list.add(ContentProviderOperation.newInsert(LauncherSettings$WorkspaceScreens.CONTENT_URI).withValues(contentValues).build());
        }
        this.mContext.getContentResolver().applyBatch(ProviderConfig.AUTHORITY, (ArrayList)list);
        this.importWorkspaceItems(screenIdsFromCursor.get(0), longSparseArray);
        GridSizeMigrationTask.markForMigration(this.mContext, this.mMaxGridSizeX, this.mMaxGridSizeY, this.mHotseatSize);
        LauncherSettings$Settings.call(this.mContext.getContentResolver(), "clear_empty_db_flag");
        return true;
    }
}
