// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.provider;

import com.android.launcher3.model.GridSizeMigrationTask;
import com.android.launcher3.LauncherProvider;
import com.android.launcher3.LauncherSettings$WorkspaceScreens;
import android.content.ContentValues;
import android.content.ContentProviderOperation;
import java.util.ArrayList;
import com.android.launcher3.logging.FileLog;
import java.util.Iterator;
import android.content.SharedPreferences;
import android.os.Process;
import android.content.pm.ProviderInfo;
import com.android.launcher3.LauncherSettings$Settings;
import android.text.TextUtils;
import com.android.launcher3.Utilities;
import android.util.LongSparseArray;
import com.android.launcher3.LauncherAppState;
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
    
    private static int getMyHotseatLayoutId(final Context context) {
        int n;
        if (LauncherAppState.getIDP(context).numHotseatIcons <= 5) {
            n = 2131230730;
        }
        else {
            n = 2131230733;
        }
        return n;
    }
    
    private static String getPackage(final Intent intent) {
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
        //   633: ifeq            2120
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
        //             -202: 1260
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
        //  1035: ifeq            1253
        //  1038: lconst_0       
        //  1039: lstore          54
        //  1041: lload           47
        //  1043: lload           54
        //  1045: lcmp           
        //  1046: istore          21
        //  1048: iload           21
        //  1050: ifne            1253
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
        //                0: 1508
        //                1: 1508
        //                2: 1341
        //                3: 1176
        //                4: 1448
        //          default: 1176
        //        }
        //  1176: ldc             "ImportDataTask"
        //  1178: astore          5
        //  1180: ldc             "Skipping item %d, not a valid type %d"
        //  1182: astore          15
        //  1184: iconst_2       
        //  1185: istore          25
        //  1187: iload           25
        //  1189: anewarray       Ljava/lang/Object;
        //  1192: astore          26
        //  1194: iload           44
        //  1196: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1199: astore          24
        //  1201: iconst_0       
        //  1202: istore          44
        //  1204: aconst_null    
        //  1205: astore          53
        //  1207: aload           26
        //  1209: iconst_0       
        //  1210: aload           24
        //  1212: aastore        
        //  1213: iload           43
        //  1215: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1218: astore          13
        //  1220: iconst_1       
        //  1221: istore          23
        //  1223: aload           26
        //  1225: iload           23
        //  1227: aload           13
        //  1229: aastore        
        //  1230: aload           15
        //  1232: aload           26
        //  1234: invokestatic    java/lang/String.format:(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //  1237: astore          13
        //  1239: aload           5
        //  1241: aload           13
        //  1243: invokestatic    com/android/launcher3/logging/FileLog.d:(Ljava/lang/String;Ljava/lang/String;)V
        //  1246: iload           17
        //  1248: istore          43
        //  1250: goto            622
        //  1253: iload           50
        //  1255: istore          21
        //  1257: goto            1063
        //  1260: aload_0        
        //  1261: astore          4
        //  1263: aload_0        
        //  1264: getfield        com/android/launcher3/provider/ImportDataTask.mHotseatSize:I
        //  1267: istore          21
        //  1269: lload           47
        //  1271: l2i            
        //  1272: istore          45
        //  1274: iload           45
        //  1276: istore          56
        //  1278: iload           45
        //  1280: iconst_1       
        //  1281: iadd           
        //  1282: istore          56
        //  1284: iload           56
        //  1286: istore          45
        //  1288: iload           21
        //  1290: iload           56
        //  1292: invokestatic    java/lang/Math.max:(II)I
        //  1295: istore          21
        //  1297: aload_0        
        //  1298: iload           21
        //  1300: putfield        com/android/launcher3/provider/ImportDataTask.mHotseatSize:I
        //  1303: goto            1134
        //  1306: astore          5
        //  1308: aload           5
        //  1310: athrow         
        //  1311: astore          57
        //  1313: aload           5
        //  1315: astore          16
        //  1317: aload           57
        //  1319: astore          5
        //  1321: aload           6
        //  1323: ifnull          1333
        //  1326: aload           6
        //  1328: invokeinterface android/database/Cursor.close:()V
        //  1333: aload           16
        //  1335: ifnull          2176
        //  1338: aload           16
        //  1340: athrow         
        //  1341: iconst_1       
        //  1342: istore          21
        //  1344: aload           41
        //  1346: astore          4
        //  1348: aload           41
        //  1350: iload           44
        //  1352: iload           21
        //  1354: invokevirtual   android/util/SparseBooleanArray.put:(IZ)V
        //  1357: new             Landroid/content/Intent;
        //  1360: astore          5
        //  1362: aload           5
        //  1364: invokespecial   android/content/Intent.<init>:()V
        //  1367: bipush          -101
        //  1369: istore          56
        //  1371: iload           46
        //  1373: istore          45
        //  1375: iload           46
        //  1377: iload           56
        //  1379: if_icmpne       1808
        //  1382: aload           5
        //  1384: ifnonnull       1751
        //  1387: ldc             "ImportDataTask"
        //  1389: astore          5
        //  1391: ldc_w           "Skipping item %d, null intent on hotseat"
        //  1394: astore          13
        //  1396: iconst_1       
        //  1397: istore          50
        //  1399: iload           50
        //  1401: anewarray       Ljava/lang/Object;
        //  1404: astore          15
        //  1406: iload           44
        //  1408: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1411: astore          26
        //  1413: iconst_0       
        //  1414: istore          23
        //  1416: aconst_null    
        //  1417: astore          24
        //  1419: aload           15
        //  1421: iconst_0       
        //  1422: aload           26
        //  1424: aastore        
        //  1425: aload           13
        //  1427: aload           15
        //  1429: invokestatic    java/lang/String.format:(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //  1432: astore          13
        //  1434: aload           5
        //  1436: aload           13
        //  1438: invokestatic    com/android/launcher3/logging/FileLog.d:(Ljava/lang/String;Ljava/lang/String;)V
        //  1441: iload           17
        //  1443: istore          43
        //  1445: goto            622
        //  1448: ldc_w           "restored"
        //  1451: astore          58
        //  1453: bipush          7
        //  1455: istore          59
        //  1457: iload           59
        //  1459: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1462: astore          60
        //  1464: aload           42
        //  1466: astore          4
        //  1468: aload           42
        //  1470: aload           58
        //  1472: aload           60
        //  1474: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //  1477: ldc             "appWidgetProvider"
        //  1479: astore          58
        //  1481: iload           31
        //  1483: istore          45
        //  1485: aload           6
        //  1487: iload           31
        //  1489: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //  1494: astore          60
        //  1496: aload           42
        //  1498: aload           58
        //  1500: aload           60
        //  1502: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
        //  1505: goto            1367
        //  1508: aload           6
        //  1510: iload           27
        //  1512: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //  1517: astore          5
        //  1519: iconst_0       
        //  1520: istore          56
        //  1522: aconst_null    
        //  1523: astore          58
        //  1525: iconst_0       
        //  1526: istore          45
        //  1528: aconst_null    
        //  1529: astore          4
        //  1531: aload           5
        //  1533: iconst_0       
        //  1534: invokestatic    android/content/Intent.parseUri:(Ljava/lang/String;I)Landroid/content/Intent;
        //  1537: astore          5
        //  1539: aload           5
        //  1541: invokestatic    com/android/launcher3/Utilities.isLauncherAppTarget:(Landroid/content/Intent;)Z
        //  1544: istore          56
        //  1546: iload           56
        //  1548: ifeq            1688
        //  1551: iconst_0       
        //  1552: istore          43
        //  1554: aconst_null    
        //  1555: astore          13
        //  1557: ldc             "icon"
        //  1559: astore          58
        //  1561: iload           38
        //  1563: istore          45
        //  1565: aload           6
        //  1567: iload           38
        //  1569: invokeinterface android/database/Cursor.getBlob:(I)[B
        //  1574: astore          60
        //  1576: aload           42
        //  1578: astore          4
        //  1580: aload           42
        //  1582: aload           58
        //  1584: aload           60
        //  1586: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;[B)V
        //  1589: ldc             "intent"
        //  1591: astore          58
        //  1593: iconst_0       
        //  1594: istore          59
        //  1596: aconst_null    
        //  1597: astore          60
        //  1599: iconst_0       
        //  1600: istore          45
        //  1602: aconst_null    
        //  1603: astore          4
        //  1605: aload           5
        //  1607: iconst_0       
        //  1608: invokevirtual   android/content/Intent.toUri:(I)Ljava/lang/String;
        //  1611: astore          60
        //  1613: aload           42
        //  1615: astore          4
        //  1617: aload           42
        //  1619: aload           58
        //  1621: aload           60
        //  1623: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
        //  1626: ldc             "rank"
        //  1628: astore          58
        //  1630: iload           37
        //  1632: istore          45
        //  1634: aload           6
        //  1636: iload           37
        //  1638: invokeinterface android/database/Cursor.getInt:(I)I
        //  1643: istore          59
        //  1645: iload           59
        //  1647: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1650: astore          60
        //  1652: aload           42
        //  1654: aload           58
        //  1656: aload           60
        //  1658: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //  1661: ldc_w           "restored"
        //  1664: astore          58
        //  1666: iconst_1       
        //  1667: istore          59
        //  1669: iload           59
        //  1671: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1674: astore          60
        //  1676: aload           42
        //  1678: aload           58
        //  1680: aload           60
        //  1682: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //  1685: goto            1367
        //  1688: ldc             "iconPackage"
        //  1690: astore          58
        //  1692: iload           39
        //  1694: istore          45
        //  1696: aload           6
        //  1698: iload           39
        //  1700: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //  1705: astore          60
        //  1707: aload           42
        //  1709: astore          4
        //  1711: aload           42
        //  1713: aload           58
        //  1715: aload           60
        //  1717: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
        //  1720: ldc             "iconResource"
        //  1722: astore          58
        //  1724: iload           40
        //  1726: istore          45
        //  1728: aload           6
        //  1730: iload           40
        //  1732: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //  1737: astore          60
        //  1739: aload           42
        //  1741: aload           58
        //  1743: aload           60
        //  1745: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
        //  1748: goto            1557
        //  1751: aload           5
        //  1753: invokevirtual   android/content/Intent.getComponent:()Landroid/content/ComponentName;
        //  1756: astore          58
        //  1758: aload           58
        //  1760: ifnull          1789
        //  1763: aload           5
        //  1765: invokevirtual   android/content/Intent.getComponent:()Landroid/content/ComponentName;
        //  1768: astore          58
        //  1770: aload           58
        //  1772: invokevirtual   android/content/ComponentName.getPackageName:()Ljava/lang/String;
        //  1775: astore          58
        //  1777: aload           58
        //  1779: astore          4
        //  1781: aload           5
        //  1783: aload           58
        //  1785: invokevirtual   android/content/Intent.setPackage:(Ljava/lang/String;)Landroid/content/Intent;
        //  1788: pop            
        //  1789: aload           5
        //  1791: invokestatic    com/android/launcher3/provider/ImportDataTask.getPackage:(Landroid/content/Intent;)Ljava/lang/String;
        //  1794: astore          5
        //  1796: aload           22
        //  1798: astore          4
        //  1800: aload           22
        //  1802: aload           5
        //  1804: invokevirtual   java/util/HashSet.add:(Ljava/lang/Object;)Z
        //  1807: pop            
        //  1808: ldc             "_id"
        //  1810: astore          5
        //  1812: iload           44
        //  1814: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1817: astore          53
        //  1819: aload           42
        //  1821: astore          4
        //  1823: aload           42
        //  1825: aload           5
        //  1827: aload           53
        //  1829: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //  1832: ldc             "itemType"
        //  1834: astore          5
        //  1836: iload           43
        //  1838: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1841: astore          13
        //  1843: aload           42
        //  1845: aload           5
        //  1847: aload           13
        //  1849: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //  1852: ldc             "container"
        //  1854: astore          5
        //  1856: iload           46
        //  1858: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1861: astore          13
        //  1863: aload           42
        //  1865: aload           5
        //  1867: aload           13
        //  1869: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //  1872: ldc             "screen"
        //  1874: astore          5
        //  1876: lload           47
        //  1878: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //  1881: astore          13
        //  1883: aload           42
        //  1885: aload           5
        //  1887: aload           13
        //  1889: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Long;)V
        //  1892: ldc             "cellX"
        //  1894: astore          5
        //  1896: iload           49
        //  1898: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1901: astore          13
        //  1903: aload           42
        //  1905: aload           5
        //  1907: aload           13
        //  1909: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //  1912: ldc             "cellY"
        //  1914: astore          5
        //  1916: iload           50
        //  1918: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1921: astore          13
        //  1923: aload           42
        //  1925: aload           5
        //  1927: aload           13
        //  1929: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //  1932: ldc             "spanX"
        //  1934: astore          5
        //  1936: iload           51
        //  1938: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1941: astore          13
        //  1943: aload           42
        //  1945: aload           5
        //  1947: aload           13
        //  1949: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //  1952: ldc             "spanY"
        //  1954: astore          5
        //  1956: iload           52
        //  1958: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1961: astore          13
        //  1963: aload           42
        //  1965: aload           5
        //  1967: aload           13
        //  1969: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //  1972: ldc             "title"
        //  1974: astore          5
        //  1976: iload           28
        //  1978: istore          45
        //  1980: aload           6
        //  1982: iload           28
        //  1984: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //  1989: astore          13
        //  1991: aload           42
        //  1993: aload           5
        //  1995: aload           13
        //  1997: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
        //  2000: getstatic       com/android/launcher3/LauncherSettings$Favorites.CONTENT_URI:Landroid/net/Uri;
        //  2003: astore          5
        //  2005: aload           5
        //  2007: invokestatic    android/content/ContentProviderOperation.newInsert:(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
        //  2010: astore          5
        //  2012: aload           5
        //  2014: aload           42
        //  2016: invokevirtual   android/content/ContentProviderOperation$Builder.withValues:(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
        //  2019: astore          5
        //  2021: aload           5
        //  2023: invokevirtual   android/content/ContentProviderOperation$Builder.build:()Landroid/content/ContentProviderOperation;
        //  2026: astore          5
        //  2028: aload           20
        //  2030: astore          4
        //  2032: aload           20
        //  2034: aload           5
        //  2036: invokevirtual   java/util/ArrayList.add:(Ljava/lang/Object;)Z
        //  2039: pop            
        //  2040: iload           46
        //  2042: ifge            2507
        //  2045: iload           14
        //  2047: iconst_1       
        //  2048: iadd           
        //  2049: istore          21
        //  2051: aload           20
        //  2053: invokevirtual   java/util/ArrayList.size:()I
        //  2056: istore          14
        //  2058: bipush          15
        //  2060: istore          43
        //  2062: iload           14
        //  2064: iload           43
        //  2066: if_icmplt       2109
        //  2069: aload_0        
        //  2070: astore          4
        //  2072: aload_0        
        //  2073: getfield        com/android/launcher3/provider/ImportDataTask.mContext:Landroid/content/Context;
        //  2076: astore          16
        //  2078: aload           16
        //  2080: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //  2083: astore          16
        //  2085: getstatic       com/android/launcher3/LauncherProvider.AUTHORITY:Ljava/lang/String;
        //  2088: astore          13
        //  2090: aload           20
        //  2092: astore          4
        //  2094: aload           16
        //  2096: aload           13
        //  2098: aload           20
        //  2100: invokevirtual   android/content/ContentResolver.applyBatch:(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
        //  2103: pop            
        //  2104: aload           20
        //  2106: invokevirtual   java/util/ArrayList.clear:()V
        //  2109: iload           21
        //  2111: istore          14
        //  2113: iload           17
        //  2115: istore          43
        //  2117: goto            622
        //  2120: aload           6
        //  2122: ifnull          2132
        //  2125: aload           6
        //  2127: invokeinterface android/database/Cursor.close:()V
        //  2132: aload           10
        //  2134: ifnull          2179
        //  2137: aload           10
        //  2139: athrow         
        //  2140: astore          10
        //  2142: goto            2132
        //  2145: astore          6
        //  2147: aload           16
        //  2149: ifnonnull       2159
        //  2152: aload           6
        //  2154: astore          16
        //  2156: goto            1333
        //  2159: aload           16
        //  2161: aload           6
        //  2163: if_acmpeq       1333
        //  2166: aload           16
        //  2168: aload           6
        //  2170: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //  2173: goto            1333
        //  2176: aload           5
        //  2178: athrow         
        //  2179: ldc             "ImportDataTask"
        //  2181: astore          5
        //  2183: new             Ljava/lang/StringBuilder;
        //  2186: astore          6
        //  2188: aload           6
        //  2190: invokespecial   java/lang/StringBuilder.<init>:()V
        //  2193: aload           6
        //  2195: iload           14
        //  2197: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //  2200: astore          6
        //  2202: ldc_w           " items imported from external source"
        //  2205: astore          15
        //  2207: aload           6
        //  2209: aload           15
        //  2211: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  2214: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  2217: astore          6
        //  2219: aload           5
        //  2221: aload           6
        //  2223: invokestatic    com/android/launcher3/logging/FileLog.d:(Ljava/lang/String;Ljava/lang/String;)V
        //  2226: bipush          6
        //  2228: istore          21
        //  2230: iload           14
        //  2232: iload           21
        //  2234: if_icmpge       2253
        //  2237: new             Ljava/lang/Exception;
        //  2240: astore          5
        //  2242: aload           5
        //  2244: ldc_w           "Insufficient data"
        //  2247: invokespecial   java/lang/Exception.<init>:(Ljava/lang/String;)V
        //  2250: aload           5
        //  2252: athrow         
        //  2253: aload           20
        //  2255: invokevirtual   java/util/ArrayList.isEmpty:()Z
        //  2258: istore          21
        //  2260: iload           21
        //  2262: ifne            2301
        //  2265: aload_0        
        //  2266: astore          4
        //  2268: aload_0        
        //  2269: getfield        com/android/launcher3/provider/ImportDataTask.mContext:Landroid/content/Context;
        //  2272: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //  2275: astore          5
        //  2277: getstatic       com/android/launcher3/LauncherProvider.AUTHORITY:Ljava/lang/String;
        //  2280: astore          6
        //  2282: aload           20
        //  2284: astore          4
        //  2286: aload           5
        //  2288: aload           6
        //  2290: aload           20
        //  2292: invokevirtual   android/content/ContentResolver.applyBatch:(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
        //  2295: pop            
        //  2296: aload           20
        //  2298: invokevirtual   java/util/ArrayList.clear:()V
        //  2301: aload_0        
        //  2302: astore          4
        //  2304: aload_0        
        //  2305: getfield        com/android/launcher3/provider/ImportDataTask.mContext:Landroid/content/Context;
        //  2308: invokestatic    com/android/launcher3/model/GridSizeMigrationTask.removeBrokenHotseatItems:(Landroid/content/Context;)Lcom/android/launcher3/util/LongArrayMap;
        //  2311: astore          16
        //  2313: aload_0        
        //  2314: getfield        com/android/launcher3/provider/ImportDataTask.mContext:Landroid/content/Context;
        //  2317: invokestatic    com/android/launcher3/LauncherAppState.getIDP:(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;
        //  2320: astore          5
        //  2322: aload           5
        //  2324: getfield        com/android/launcher3/InvariantDeviceProfile.numHotseatIcons:I
        //  2327: istore          17
        //  2329: aload           16
        //  2331: invokevirtual   com/android/launcher3/util/LongArrayMap.size:()I
        //  2334: istore          21
        //  2336: iload           21
        //  2338: iload           17
        //  2340: if_icmpge       2493
        //  2343: new             Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;
        //  2346: astore          5
        //  2348: iload           43
        //  2350: iconst_1       
        //  2351: iadd           
        //  2352: istore          50
        //  2354: aload           22
        //  2356: astore          6
        //  2358: aload           20
        //  2360: astore          13
        //  2362: aload           5
        //  2364: aload           22
        //  2366: aload           16
        //  2368: aload           20
        //  2370: iload           50
        //  2372: iload           17
        //  2374: invokespecial   com/android/launcher3/provider/ImportDataTask$HotseatParserCallback.<init>:(Ljava/util/HashSet;Lcom/android/launcher3/util/LongArrayMap;Ljava/util/ArrayList;II)V
        //  2377: new             Lcom/android/launcher3/provider/ImportDataTask$HotseatLayoutParser;
        //  2380: astore          6
        //  2382: aload_0        
        //  2383: getfield        com/android/launcher3/provider/ImportDataTask.mContext:Landroid/content/Context;
        //  2386: astore          13
        //  2388: aload           6
        //  2390: aload           13
        //  2392: aload           5
        //  2394: invokespecial   com/android/launcher3/provider/ImportDataTask$HotseatLayoutParser.<init>:(Landroid/content/Context;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;)V
        //  2397: new             Ljava/util/ArrayList;
        //  2400: astore          5
        //  2402: aload           5
        //  2404: invokespecial   java/util/ArrayList.<init>:()V
        //  2407: iconst_0       
        //  2408: istore          43
        //  2410: aconst_null    
        //  2411: astore          13
        //  2413: aload           6
        //  2415: aconst_null    
        //  2416: aload           5
        //  2418: invokevirtual   com/android/launcher3/provider/ImportDataTask$HotseatLayoutParser.loadLayout:(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)I
        //  2421: pop            
        //  2422: aload           16
        //  2424: invokevirtual   com/android/launcher3/util/LongArrayMap.size:()I
        //  2427: iconst_m1      
        //  2428: iadd           
        //  2429: istore          21
        //  2431: aload           16
        //  2433: iload           21
        //  2435: invokevirtual   com/android/launcher3/util/LongArrayMap.keyAt:(I)J
        //  2438: lstore          7
        //  2440: lload           7
        //  2442: l2i            
        //  2443: iconst_1       
        //  2444: iadd           
        //  2445: istore          21
        //  2447: aload_0        
        //  2448: iload           21
        //  2450: putfield        com/android/launcher3/provider/ImportDataTask.mHotseatSize:I
        //  2453: aload           20
        //  2455: invokevirtual   java/util/ArrayList.isEmpty:()Z
        //  2458: istore          21
        //  2460: iload           21
        //  2462: ifne            2493
        //  2465: aload_0        
        //  2466: getfield        com/android/launcher3/provider/ImportDataTask.mContext:Landroid/content/Context;
        //  2469: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //  2472: astore          5
        //  2474: getstatic       com/android/launcher3/LauncherProvider.AUTHORITY:Ljava/lang/String;
        //  2477: astore          6
        //  2479: aload           20
        //  2481: astore          4
        //  2483: aload           5
        //  2485: aload           6
        //  2487: aload           20
        //  2489: invokevirtual   android/content/ContentResolver.applyBatch:(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
        //  2492: pop            
        //  2493: return         
        //  2494: astore          5
        //  2496: aconst_null    
        //  2497: astore          6
        //  2499: goto            1308
        //  2502: astore          5
        //  2504: goto            169
        //  2507: iload           14
        //  2509: istore          21
        //  2511: goto            2051
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
        //  130    137    2502   172    Any
        //  144    151    159    164    Any
        //  169    172    172    240    Any
        //  191    198    206    237    Any
        //  294    298    2494   1311   Any
        //  300    305    2494   1311   Any
        //  307    311    2494   1311   Any
        //  320    325    2494   1311   Any
        //  336    339    2494   1311   Any
        //  358    363    2494   1311   Any
        //  371    378    1306   1311   Any
        //  386    393    1306   1311   Any
        //  401    408    1306   1311   Any
        //  416    423    1306   1311   Any
        //  431    438    1306   1311   Any
        //  446    453    1306   1311   Any
        //  461    468    1306   1311   Any
        //  476    483    1306   1311   Any
        //  491    498    1306   1311   Any
        //  506    513    1306   1311   Any
        //  521    528    1306   1311   Any
        //  536    543    1306   1311   Any
        //  551    558    1306   1311   Any
        //  566    573    1306   1311   Any
        //  581    588    1306   1311   Any
        //  590    593    1306   1311   Any
        //  595    600    1306   1311   Any
        //  600    603    1306   1311   Any
        //  605    610    1306   1311   Any
        //  622    629    1306   1311   Any
        //  636    641    1306   1311   Any
        //  643    650    1306   1311   Any
        //  658    663    1306   1311   Any
        //  671    678    1306   1311   Any
        //  686    693    1306   1311   Any
        //  701    708    1306   1311   Any
        //  716    723    1306   1311   Any
        //  731    738    1306   1311   Any
        //  746    753    1306   1311   Any
        //  761    768    1306   1311   Any
        //  802    807    1306   1311   Any
        //  825    830    1306   1311   Any
        //  832    837    1306   1311   Any
        //  848    851    1306   1311   Any
        //  851    856    1306   1311   Any
        //  865    868    1306   1311   Any
        //  868    873    1306   1311   Any
        //  882    885    1306   1311   Any
        //  887    892    1306   1311   Any
        //  896    901    1306   1311   Any
        //  912    917    1306   1311   Any
        //  919    924    1306   1311   Any
        //  946    951    1306   1311   Any
        //  953    958    1306   1311   Any
        //  966    969    1306   1311   Any
        //  969    974    1306   1311   Any
        //  983    986    1306   1311   Any
        //  986    991    1306   1311   Any
        //  1000   1003   1306   1311   Any
        //  1005   1010   1306   1311   Any
        //  1014   1019   1306   1311   Any
        //  1026   1031   1306   1311   Any
        //  1066   1070   1306   1311   Any
        //  1085   1090   1306   1311   Any
        //  1093   1098   1306   1311   Any
        //  1098   1102   1306   1311   Any
        //  1117   1122   1306   1311   Any
        //  1125   1130   1306   1311   Any
        //  1187   1192   1306   1311   Any
        //  1194   1199   1306   1311   Any
        //  1210   1213   1306   1311   Any
        //  1213   1218   1306   1311   Any
        //  1227   1230   1306   1311   Any
        //  1232   1237   1306   1311   Any
        //  1241   1246   1306   1311   Any
        //  1263   1267   1306   1311   Any
        //  1290   1295   1306   1311   Any
        //  1298   1303   1306   1311   Any
        //  1308   1311   1311   2179   Any
        //  1326   1333   2145   2176   Any
        //  1352   1357   1306   1311   Any
        //  1357   1360   1306   1311   Any
        //  1362   1367   1306   1311   Any
        //  1399   1404   1306   1311   Any
        //  1406   1411   1306   1311   Any
        //  1422   1425   1306   1311   Any
        //  1427   1432   1306   1311   Any
        //  1436   1441   1306   1311   Any
        //  1457   1462   1306   1311   Any
        //  1472   1477   1306   1311   Any
        //  1487   1494   1306   1311   Any
        //  1500   1505   1306   1311   Any
        //  1510   1517   1306   1311   Any
        //  1533   1537   1306   1311   Any
        //  1539   1544   1306   1311   Any
        //  1567   1574   1306   1311   Any
        //  1584   1589   1306   1311   Any
        //  1607   1611   1306   1311   Any
        //  1621   1626   1306   1311   Any
        //  1636   1643   1306   1311   Any
        //  1645   1650   1306   1311   Any
        //  1656   1661   1306   1311   Any
        //  1669   1674   1306   1311   Any
        //  1680   1685   1306   1311   Any
        //  1698   1705   1306   1311   Any
        //  1715   1720   1306   1311   Any
        //  1730   1737   1306   1311   Any
        //  1743   1748   1306   1311   Any
        //  1751   1756   1306   1311   Any
        //  1763   1768   1306   1311   Any
        //  1770   1775   1306   1311   Any
        //  1783   1789   1306   1311   Any
        //  1789   1794   1306   1311   Any
        //  1802   1808   1306   1311   Any
        //  1812   1817   1306   1311   Any
        //  1827   1832   1306   1311   Any
        //  1836   1841   1306   1311   Any
        //  1847   1852   1306   1311   Any
        //  1856   1861   1306   1311   Any
        //  1867   1872   1306   1311   Any
        //  1876   1881   1306   1311   Any
        //  1887   1892   1306   1311   Any
        //  1896   1901   1306   1311   Any
        //  1907   1912   1306   1311   Any
        //  1916   1921   1306   1311   Any
        //  1927   1932   1306   1311   Any
        //  1936   1941   1306   1311   Any
        //  1947   1952   1306   1311   Any
        //  1956   1961   1306   1311   Any
        //  1967   1972   1306   1311   Any
        //  1982   1989   1306   1311   Any
        //  1995   2000   1306   1311   Any
        //  2000   2003   1306   1311   Any
        //  2005   2010   1306   1311   Any
        //  2014   2019   1306   1311   Any
        //  2021   2026   1306   1311   Any
        //  2034   2040   1306   1311   Any
        //  2051   2056   1306   1311   Any
        //  2072   2076   1306   1311   Any
        //  2078   2083   1306   1311   Any
        //  2085   2088   1306   1311   Any
        //  2098   2104   1306   1311   Any
        //  2104   2109   1306   1311   Any
        //  2125   2132   2140   2145   Any
        // 
        // The error that occurred was:
        // 
        // java.lang.OutOfMemoryError: Java heap space
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    public static boolean performImportIfPossible(final Context context) {
        final SharedPreferences devicePrefs = Utilities.getDevicePrefs(context);
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
        this.mContext.getContentResolver().applyBatch(LauncherProvider.AUTHORITY, (ArrayList)list);
        this.importWorkspaceItems(screenIdsFromCursor.get(0), longSparseArray);
        GridSizeMigrationTask.markForMigration(this.mContext, this.mMaxGridSizeX, this.mMaxGridSizeY, this.mHotseatSize);
        LauncherSettings$Settings.call(this.mContext.getContentResolver(), "clear_empty_db_flag");
        return true;
    }
}
