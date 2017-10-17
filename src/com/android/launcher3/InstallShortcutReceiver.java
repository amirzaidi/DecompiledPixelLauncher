// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.util.PackageManagerHelper;
import android.os.UserHandle;
import android.appwidget.AppWidgetProviderInfo;
import com.android.launcher3.shortcuts.ShortcutInfoCompat;
import java.net.URISyntaxException;
import org.json.JSONException;
import com.android.launcher3.shortcuts.ShortcutKey;
import java.util.Iterator;
import java.util.ArrayList;
import com.android.launcher3.util.Provider;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.os.Parcelable;
import com.android.launcher3.compat.UserManagerCompat;
import com.android.launcher3.graphics.LauncherIcons;
import android.util.Log;
import android.os.Process;
import android.graphics.Bitmap;
import android.content.Intent$ShortcutIconResource;
import android.content.Context;
import android.content.pm.LauncherActivityInfo;
import com.android.launcher3.compat.LauncherAppsCompat;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import android.content.SharedPreferences;
import android.content.Intent;
import android.content.BroadcastReceiver;

public class InstallShortcutReceiver extends BroadcastReceiver
{
    private static int sInstallQueueDisabledFlags;
    private static final Object sLock;
    
    static {
        InstallShortcutReceiver.sInstallQueueDisabledFlags = 0;
        sLock = new Object();
    }
    
    private static void addToInstallQueue(final SharedPreferences sharedPreferences, final InstallShortcutReceiver$PendingInstallShortcutInfo installShortcutReceiver$PendingInstallShortcutInfo) {
        synchronized (InstallShortcutReceiver.sLock) {
            final String encodeToString = installShortcutReceiver$PendingInstallShortcutInfo.encodeToString();
            if (encodeToString != null) {
                final Set stringSet = sharedPreferences.getStringSet("apps_to_install", (Set)null);
                HashSet<String> set;
                if (stringSet != null) {
                    set = new HashSet<String>(stringSet);
                }
                else {
                    set = new HashSet<String>(1);
                }
                set.add(encodeToString);
                sharedPreferences.edit().putStringSet("apps_to_install", (Set)set).apply();
            }
        }
    }
    
    private static InstallShortcutReceiver$PendingInstallShortcutInfo convertToLauncherActivityIfPossible(final InstallShortcutReceiver$PendingInstallShortcutInfo installShortcutReceiver$PendingInstallShortcutInfo) {
        if (installShortcutReceiver$PendingInstallShortcutInfo.isLauncherActivity()) {
            return installShortcutReceiver$PendingInstallShortcutInfo;
        }
        if (!Utilities.isLauncherAppTarget(installShortcutReceiver$PendingInstallShortcutInfo.launchIntent)) {
            return installShortcutReceiver$PendingInstallShortcutInfo;
        }
        final LauncherActivityInfo resolveActivity = LauncherAppsCompat.getInstance(installShortcutReceiver$PendingInstallShortcutInfo.mContext).resolveActivity(installShortcutReceiver$PendingInstallShortcutInfo.launchIntent, installShortcutReceiver$PendingInstallShortcutInfo.user);
        if (resolveActivity == null) {
            return installShortcutReceiver$PendingInstallShortcutInfo;
        }
        return new InstallShortcutReceiver$PendingInstallShortcutInfo(resolveActivity, installShortcutReceiver$PendingInstallShortcutInfo.mContext);
    }
    
    private static InstallShortcutReceiver$PendingInstallShortcutInfo createPendingInfo(final Context context, final Intent intent) {
        if (!isValidExtraType(intent, "android.intent.extra.shortcut.INTENT", Intent.class) || (isValidExtraType(intent, "android.intent.extra.shortcut.ICON_RESOURCE", Intent$ShortcutIconResource.class) ^ true) || (isValidExtraType(intent, "android.intent.extra.shortcut.ICON", Bitmap.class) ^ true)) {
            return null;
        }
        final InstallShortcutReceiver$PendingInstallShortcutInfo installShortcutReceiver$PendingInstallShortcutInfo = new InstallShortcutReceiver$PendingInstallShortcutInfo(intent, Process.myUserHandle(), context);
        if (installShortcutReceiver$PendingInstallShortcutInfo.launchIntent == null || installShortcutReceiver$PendingInstallShortcutInfo.label == null) {
            return null;
        }
        return convertToLauncherActivityIfPossible(installShortcutReceiver$PendingInstallShortcutInfo);
    }
    
    private static ShortcutInfo createShortcutInfo(final Intent intent, final LauncherAppState launcherAppState) {
        final Intent intent2 = (Intent)intent.getParcelableExtra("android.intent.extra.shortcut.INTENT");
        final String stringExtra = intent.getStringExtra("android.intent.extra.shortcut.NAME");
        final Parcelable parcelableExtra = intent.getParcelableExtra("android.intent.extra.shortcut.ICON");
        if (intent2 == null) {
            Log.e("InstallShortcutReceiver", "Can't construct ShorcutInfo with null intent");
            return null;
        }
        final ShortcutInfo shortcutInfo = new ShortcutInfo();
        shortcutInfo.user = Process.myUserHandle();
        if (parcelableExtra instanceof Bitmap) {
            shortcutInfo.iconBitmap = LauncherIcons.createIconBitmap((Bitmap)parcelableExtra, launcherAppState.getContext());
        }
        else {
            final Parcelable parcelableExtra2 = intent.getParcelableExtra("android.intent.extra.shortcut.ICON_RESOURCE");
            if (parcelableExtra2 instanceof Intent$ShortcutIconResource) {
                shortcutInfo.iconResource = (Intent$ShortcutIconResource)parcelableExtra2;
                shortcutInfo.iconBitmap = LauncherIcons.createIconBitmap(shortcutInfo.iconResource, launcherAppState.getContext());
            }
        }
        if (shortcutInfo.iconBitmap == null) {
            shortcutInfo.iconBitmap = launcherAppState.getIconCache().getDefaultIcon(shortcutInfo.user);
        }
        shortcutInfo.title = Utilities.trim(stringExtra);
        shortcutInfo.contentDescription = UserManagerCompat.getInstance(launcherAppState.getContext()).getBadgedLabelForUser(shortcutInfo.title, shortcutInfo.user);
        shortcutInfo.intent = intent2;
        return shortcutInfo;
    }
    
    private static InstallShortcutReceiver$PendingInstallShortcutInfo decode(final String p0, final Context p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Lcom/android/launcher3/InstallShortcutReceiver$Decoder;
        //     3: astore_2       
        //     4: iconst_0       
        //     5: istore_3       
        //     6: aconst_null    
        //     7: astore          4
        //     9: aload_2        
        //    10: aload_0        
        //    11: aload_1        
        //    12: aconst_null    
        //    13: invokespecial   com/android/launcher3/InstallShortcutReceiver$Decoder.<init>:(Ljava/lang/String;Landroid/content/Context;Lcom/android/launcher3/InstallShortcutReceiver$Decoder;)V
        //    16: ldc             "isAppShortcut"
        //    18: astore          4
        //    20: aload_2        
        //    21: aload           4
        //    23: invokevirtual   com/android/launcher3/InstallShortcutReceiver$Decoder.optBoolean:(Ljava/lang/String;)Z
        //    26: istore_3       
        //    27: iload_3        
        //    28: ifeq            119
        //    31: aload_1        
        //    32: invokestatic    com/android/launcher3/compat/LauncherAppsCompat.getInstance:(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;
        //    35: astore          4
        //    37: aload_2        
        //    38: getfield        com/android/launcher3/InstallShortcutReceiver$Decoder.launcherIntent:Landroid/content/Intent;
        //    41: astore          5
        //    43: aload_2        
        //    44: getfield        com/android/launcher3/InstallShortcutReceiver$Decoder.user:Landroid/os/UserHandle;
        //    47: astore_2       
        //    48: aload           4
        //    50: aload           5
        //    52: aload_2        
        //    53: invokevirtual   com/android/launcher3/compat/LauncherAppsCompat.resolveActivity:(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;
        //    56: astore          4
        //    58: aload           4
        //    60: ifnonnull       70
        //    63: iconst_0       
        //    64: istore          6
        //    66: aconst_null    
        //    67: astore_2       
        //    68: aload_2        
        //    69: areturn        
        //    70: new             Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;
        //    73: astore_2       
        //    74: aload_2        
        //    75: aload           4
        //    77: aload_1        
        //    78: invokespecial   com/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo.<init>:(Landroid/content/pm/LauncherActivityInfo;Landroid/content/Context;)V
        //    81: goto            68
        //    84: astore_2       
        //    85: new             Ljava/lang/StringBuilder;
        //    88: astore          5
        //    90: aload           5
        //    92: invokespecial   java/lang/StringBuilder.<init>:()V
        //    95: aload           5
        //    97: ldc             "Exception reading shortcut to add: "
        //    99: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   102: aload_2        
        //   103: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   106: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   109: astore_2       
        //   110: ldc             "InstallShortcutReceiver"
        //   112: aload_2        
        //   113: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   116: pop            
        //   117: aconst_null    
        //   118: areturn        
        //   119: ldc             "isDeepShortcut"
        //   121: astore          4
        //   123: aload_2        
        //   124: aload           4
        //   126: invokevirtual   com/android/launcher3/InstallShortcutReceiver$Decoder.optBoolean:(Ljava/lang/String;)Z
        //   129: istore_3       
        //   130: iload_3        
        //   131: ifeq            265
        //   134: aload_1        
        //   135: invokestatic    com/android/launcher3/shortcuts/DeepShortcutManager.getInstance:(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;
        //   138: astore          4
        //   140: aload_2        
        //   141: getfield        com/android/launcher3/InstallShortcutReceiver$Decoder.launcherIntent:Landroid/content/Intent;
        //   144: astore          5
        //   146: aload           5
        //   148: invokevirtual   android/content/Intent.getPackage:()Ljava/lang/String;
        //   151: astore          5
        //   153: iconst_1       
        //   154: istore          7
        //   156: iload           7
        //   158: anewarray       Ljava/lang/String;
        //   161: astore          8
        //   163: aload_2        
        //   164: getfield        com/android/launcher3/InstallShortcutReceiver$Decoder.launcherIntent:Landroid/content/Intent;
        //   167: astore          9
        //   169: ldc_w           "shortcut_id"
        //   172: astore          10
        //   174: aload           9
        //   176: aload           10
        //   178: invokevirtual   android/content/Intent.getStringExtra:(Ljava/lang/String;)Ljava/lang/String;
        //   181: astore          9
        //   183: iconst_0       
        //   184: istore          11
        //   186: aconst_null    
        //   187: astore          10
        //   189: aload           8
        //   191: iconst_0       
        //   192: aload           9
        //   194: aastore        
        //   195: aload           8
        //   197: invokestatic    java/util/Arrays.asList:([Ljava/lang/Object;)Ljava/util/List;
        //   200: astore          8
        //   202: aload_2        
        //   203: getfield        com/android/launcher3/InstallShortcutReceiver$Decoder.user:Landroid/os/UserHandle;
        //   206: astore_2       
        //   207: aload           4
        //   209: aload           5
        //   211: aload           8
        //   213: aload_2        
        //   214: invokevirtual   com/android/launcher3/shortcuts/DeepShortcutManager.queryForFullDetails:(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;
        //   217: astore_2       
        //   218: aload_2        
        //   219: invokeinterface java/util/List.isEmpty:()Z
        //   224: istore_3       
        //   225: iload_3        
        //   226: ifeq            231
        //   229: aconst_null    
        //   230: areturn        
        //   231: new             Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;
        //   234: astore          4
        //   236: iconst_0       
        //   237: istore          12
        //   239: aconst_null    
        //   240: astore          5
        //   242: aload_2        
        //   243: iconst_0       
        //   244: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //   249: astore_2       
        //   250: aload_2        
        //   251: checkcast       Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;
        //   254: astore_2       
        //   255: aload           4
        //   257: aload_2        
        //   258: aload_1        
        //   259: invokespecial   com/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo.<init>:(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V
        //   262: aload           4
        //   264: areturn        
        //   265: ldc_w           "isAppWidget"
        //   268: astore          4
        //   270: aload_2        
        //   271: aload           4
        //   273: invokevirtual   com/android/launcher3/InstallShortcutReceiver$Decoder.optBoolean:(Ljava/lang/String;)Z
        //   276: istore_3       
        //   277: iload_3        
        //   278: ifeq            405
        //   281: aload_2        
        //   282: getfield        com/android/launcher3/InstallShortcutReceiver$Decoder.launcherIntent:Landroid/content/Intent;
        //   285: astore          4
        //   287: ldc_w           "appWidgetId"
        //   290: astore          5
        //   292: iconst_0       
        //   293: istore          7
        //   295: aconst_null    
        //   296: astore          8
        //   298: aload           4
        //   300: aload           5
        //   302: iconst_0       
        //   303: invokevirtual   android/content/Intent.getIntExtra:(Ljava/lang/String;I)I
        //   306: istore_3       
        //   307: aload_1        
        //   308: invokestatic    android/appwidget/AppWidgetManager.getInstance:(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;
        //   311: astore          5
        //   313: aload           5
        //   315: iload_3        
        //   316: invokevirtual   android/appwidget/AppWidgetManager.getAppWidgetInfo:(I)Landroid/appwidget/AppWidgetProviderInfo;
        //   319: astore          5
        //   321: aload           5
        //   323: ifnull          389
        //   326: aload           5
        //   328: getfield        android/appwidget/AppWidgetProviderInfo.provider:Landroid/content/ComponentName;
        //   331: astore          8
        //   333: aload_2        
        //   334: getfield        com/android/launcher3/InstallShortcutReceiver$Decoder.launcherIntent:Landroid/content/Intent;
        //   337: astore          9
        //   339: aload           9
        //   341: invokevirtual   android/content/Intent.getComponent:()Landroid/content/ComponentName;
        //   344: astore          9
        //   346: aload           8
        //   348: aload           9
        //   350: invokevirtual   android/content/ComponentName.equals:(Ljava/lang/Object;)Z
        //   353: iconst_1       
        //   354: ixor           
        //   355: istore          7
        //   357: iload           7
        //   359: ifne            389
        //   362: aload           5
        //   364: invokevirtual   android/appwidget/AppWidgetProviderInfo.getProfile:()Landroid/os/UserHandle;
        //   367: astore          8
        //   369: aload_2        
        //   370: getfield        com/android/launcher3/InstallShortcutReceiver$Decoder.user:Landroid/os/UserHandle;
        //   373: astore_2       
        //   374: aload           8
        //   376: aload_2        
        //   377: invokevirtual   android/os/UserHandle.equals:(Ljava/lang/Object;)Z
        //   380: iconst_1       
        //   381: ixor           
        //   382: istore          6
        //   384: iload           6
        //   386: ifeq            391
        //   389: aconst_null    
        //   390: areturn        
        //   391: new             Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;
        //   394: astore_2       
        //   395: aload_2        
        //   396: aload           5
        //   398: iload_3        
        //   399: aload_1        
        //   400: invokespecial   com/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo.<init>:(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/content/Context;)V
        //   403: aload_2        
        //   404: areturn        
        //   405: new             Landroid/content/Intent;
        //   408: astore          4
        //   410: aload           4
        //   412: invokespecial   android/content/Intent.<init>:()V
        //   415: ldc             "android.intent.extra.shortcut.INTENT"
        //   417: astore          5
        //   419: aload_2        
        //   420: getfield        com/android/launcher3/InstallShortcutReceiver$Decoder.launcherIntent:Landroid/content/Intent;
        //   423: astore          8
        //   425: aload           4
        //   427: aload           5
        //   429: aload           8
        //   431: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
        //   434: pop            
        //   435: ldc             "android.intent.extra.shortcut.NAME"
        //   437: astore          5
        //   439: ldc_w           "name"
        //   442: astore          8
        //   444: aload_2        
        //   445: aload           8
        //   447: invokevirtual   com/android/launcher3/InstallShortcutReceiver$Decoder.getString:(Ljava/lang/String;)Ljava/lang/String;
        //   450: astore          8
        //   452: aload           4
        //   454: aload           5
        //   456: aload           8
        //   458: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
        //   461: pop            
        //   462: ldc_w           "icon"
        //   465: astore          5
        //   467: aload_2        
        //   468: aload           5
        //   470: invokevirtual   com/android/launcher3/InstallShortcutReceiver$Decoder.optString:(Ljava/lang/String;)Ljava/lang/String;
        //   473: astore          5
        //   475: ldc_w           "iconResource"
        //   478: astore          8
        //   480: aload_2        
        //   481: aload           8
        //   483: invokevirtual   com/android/launcher3/InstallShortcutReceiver$Decoder.optString:(Ljava/lang/String;)Ljava/lang/String;
        //   486: astore          8
        //   488: ldc_w           "iconResourcePackage"
        //   491: astore          9
        //   493: aload_2        
        //   494: aload           9
        //   496: invokevirtual   com/android/launcher3/InstallShortcutReceiver$Decoder.optString:(Ljava/lang/String;)Ljava/lang/String;
        //   499: astore          9
        //   501: aload           5
        //   503: ifnull          588
        //   506: aload           5
        //   508: invokevirtual   java/lang/String.isEmpty:()Z
        //   511: iconst_1       
        //   512: ixor           
        //   513: istore          11
        //   515: iload           11
        //   517: ifeq            588
        //   520: iconst_0       
        //   521: istore          7
        //   523: aconst_null    
        //   524: astore          8
        //   526: aload           5
        //   528: iconst_0       
        //   529: invokestatic    android/util/Base64.decode:(Ljava/lang/String;I)[B
        //   532: astore          5
        //   534: aload           5
        //   536: arraylength    
        //   537: istore          7
        //   539: aconst_null    
        //   540: astore          9
        //   542: aload           5
        //   544: iconst_0       
        //   545: iload           7
        //   547: invokestatic    android/graphics/BitmapFactory.decodeByteArray:([BII)Landroid/graphics/Bitmap;
        //   550: astore          5
        //   552: ldc             "android.intent.extra.shortcut.ICON"
        //   554: astore          8
        //   556: aload           4
        //   558: aload           8
        //   560: aload           5
        //   562: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
        //   565: pop            
        //   566: new             Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;
        //   569: astore          5
        //   571: aload_2        
        //   572: getfield        com/android/launcher3/InstallShortcutReceiver$Decoder.user:Landroid/os/UserHandle;
        //   575: astore_2       
        //   576: aload           5
        //   578: aload           4
        //   580: aload_2        
        //   581: aload_1        
        //   582: invokespecial   com/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo.<init>:(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/Context;)V
        //   585: aload           5
        //   587: areturn        
        //   588: aload           8
        //   590: ifnull          566
        //   593: aload           8
        //   595: invokevirtual   java/lang/String.isEmpty:()Z
        //   598: iconst_1       
        //   599: ixor           
        //   600: istore          12
        //   602: iload           12
        //   604: ifeq            566
        //   607: new             Landroid/content/Intent$ShortcutIconResource;
        //   610: astore          5
        //   612: aload           5
        //   614: invokespecial   android/content/Intent$ShortcutIconResource.<init>:()V
        //   617: aload           5
        //   619: aload           8
        //   621: putfield        android/content/Intent$ShortcutIconResource.resourceName:Ljava/lang/String;
        //   624: aload           5
        //   626: aload           9
        //   628: putfield        android/content/Intent$ShortcutIconResource.packageName:Ljava/lang/String;
        //   631: ldc             "android.intent.extra.shortcut.ICON_RESOURCE"
        //   633: astore          8
        //   635: aload           4
        //   637: aload           8
        //   639: aload           5
        //   641: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
        //   644: pop            
        //   645: goto            566
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                         
        //  -----  -----  -----  -----  -----------------------------
        //  0      3      84     119    Lorg/json/JSONException;
        //  0      3      84     119    Ljava/net/URISyntaxException;
        //  12     16     84     119    Lorg/json/JSONException;
        //  12     16     84     119    Ljava/net/URISyntaxException;
        //  21     26     84     119    Lorg/json/JSONException;
        //  21     26     84     119    Ljava/net/URISyntaxException;
        //  31     35     84     119    Lorg/json/JSONException;
        //  31     35     84     119    Ljava/net/URISyntaxException;
        //  37     41     84     119    Lorg/json/JSONException;
        //  37     41     84     119    Ljava/net/URISyntaxException;
        //  43     47     84     119    Lorg/json/JSONException;
        //  43     47     84     119    Ljava/net/URISyntaxException;
        //  52     56     84     119    Lorg/json/JSONException;
        //  52     56     84     119    Ljava/net/URISyntaxException;
        //  70     73     84     119    Lorg/json/JSONException;
        //  70     73     84     119    Ljava/net/URISyntaxException;
        //  77     81     84     119    Lorg/json/JSONException;
        //  77     81     84     119    Ljava/net/URISyntaxException;
        //  124    129    84     119    Lorg/json/JSONException;
        //  124    129    84     119    Ljava/net/URISyntaxException;
        //  134    138    84     119    Lorg/json/JSONException;
        //  134    138    84     119    Ljava/net/URISyntaxException;
        //  140    144    84     119    Lorg/json/JSONException;
        //  140    144    84     119    Ljava/net/URISyntaxException;
        //  146    151    84     119    Lorg/json/JSONException;
        //  146    151    84     119    Ljava/net/URISyntaxException;
        //  156    161    84     119    Lorg/json/JSONException;
        //  156    161    84     119    Ljava/net/URISyntaxException;
        //  163    167    84     119    Lorg/json/JSONException;
        //  163    167    84     119    Ljava/net/URISyntaxException;
        //  176    181    84     119    Lorg/json/JSONException;
        //  176    181    84     119    Ljava/net/URISyntaxException;
        //  192    195    84     119    Lorg/json/JSONException;
        //  192    195    84     119    Ljava/net/URISyntaxException;
        //  195    200    84     119    Lorg/json/JSONException;
        //  195    200    84     119    Ljava/net/URISyntaxException;
        //  202    206    84     119    Lorg/json/JSONException;
        //  202    206    84     119    Ljava/net/URISyntaxException;
        //  213    217    84     119    Lorg/json/JSONException;
        //  213    217    84     119    Ljava/net/URISyntaxException;
        //  218    224    84     119    Lorg/json/JSONException;
        //  218    224    84     119    Ljava/net/URISyntaxException;
        //  231    234    84     119    Lorg/json/JSONException;
        //  231    234    84     119    Ljava/net/URISyntaxException;
        //  243    249    84     119    Lorg/json/JSONException;
        //  243    249    84     119    Ljava/net/URISyntaxException;
        //  250    254    84     119    Lorg/json/JSONException;
        //  250    254    84     119    Ljava/net/URISyntaxException;
        //  258    262    84     119    Lorg/json/JSONException;
        //  258    262    84     119    Ljava/net/URISyntaxException;
        //  271    276    84     119    Lorg/json/JSONException;
        //  271    276    84     119    Ljava/net/URISyntaxException;
        //  281    285    84     119    Lorg/json/JSONException;
        //  281    285    84     119    Ljava/net/URISyntaxException;
        //  302    306    84     119    Lorg/json/JSONException;
        //  302    306    84     119    Ljava/net/URISyntaxException;
        //  307    311    84     119    Lorg/json/JSONException;
        //  307    311    84     119    Ljava/net/URISyntaxException;
        //  315    319    84     119    Lorg/json/JSONException;
        //  315    319    84     119    Ljava/net/URISyntaxException;
        //  326    331    84     119    Lorg/json/JSONException;
        //  326    331    84     119    Ljava/net/URISyntaxException;
        //  333    337    84     119    Lorg/json/JSONException;
        //  333    337    84     119    Ljava/net/URISyntaxException;
        //  339    344    84     119    Lorg/json/JSONException;
        //  339    344    84     119    Ljava/net/URISyntaxException;
        //  348    353    84     119    Lorg/json/JSONException;
        //  348    353    84     119    Ljava/net/URISyntaxException;
        //  362    367    84     119    Lorg/json/JSONException;
        //  362    367    84     119    Ljava/net/URISyntaxException;
        //  369    373    84     119    Lorg/json/JSONException;
        //  369    373    84     119    Ljava/net/URISyntaxException;
        //  376    380    84     119    Lorg/json/JSONException;
        //  376    380    84     119    Ljava/net/URISyntaxException;
        //  391    394    84     119    Lorg/json/JSONException;
        //  391    394    84     119    Ljava/net/URISyntaxException;
        //  399    403    84     119    Lorg/json/JSONException;
        //  399    403    84     119    Ljava/net/URISyntaxException;
        //  405    408    84     119    Lorg/json/JSONException;
        //  405    408    84     119    Ljava/net/URISyntaxException;
        //  410    415    84     119    Lorg/json/JSONException;
        //  410    415    84     119    Ljava/net/URISyntaxException;
        //  419    423    84     119    Lorg/json/JSONException;
        //  419    423    84     119    Ljava/net/URISyntaxException;
        //  429    435    84     119    Lorg/json/JSONException;
        //  429    435    84     119    Ljava/net/URISyntaxException;
        //  445    450    84     119    Lorg/json/JSONException;
        //  445    450    84     119    Ljava/net/URISyntaxException;
        //  456    462    84     119    Lorg/json/JSONException;
        //  456    462    84     119    Ljava/net/URISyntaxException;
        //  468    473    84     119    Lorg/json/JSONException;
        //  468    473    84     119    Ljava/net/URISyntaxException;
        //  481    486    84     119    Lorg/json/JSONException;
        //  481    486    84     119    Ljava/net/URISyntaxException;
        //  494    499    84     119    Lorg/json/JSONException;
        //  494    499    84     119    Ljava/net/URISyntaxException;
        //  506    511    84     119    Lorg/json/JSONException;
        //  506    511    84     119    Ljava/net/URISyntaxException;
        //  528    532    84     119    Lorg/json/JSONException;
        //  528    532    84     119    Ljava/net/URISyntaxException;
        //  534    537    84     119    Lorg/json/JSONException;
        //  534    537    84     119    Ljava/net/URISyntaxException;
        //  545    550    84     119    Lorg/json/JSONException;
        //  545    550    84     119    Ljava/net/URISyntaxException;
        //  560    566    84     119    Lorg/json/JSONException;
        //  560    566    84     119    Ljava/net/URISyntaxException;
        //  566    569    84     119    Lorg/json/JSONException;
        //  566    569    84     119    Ljava/net/URISyntaxException;
        //  571    575    84     119    Lorg/json/JSONException;
        //  571    575    84     119    Ljava/net/URISyntaxException;
        //  581    585    84     119    Lorg/json/JSONException;
        //  581    585    84     119    Ljava/net/URISyntaxException;
        //  593    598    84     119    Lorg/json/JSONException;
        //  593    598    84     119    Ljava/net/URISyntaxException;
        //  607    610    84     119    Lorg/json/JSONException;
        //  607    610    84     119    Ljava/net/URISyntaxException;
        //  612    617    84     119    Lorg/json/JSONException;
        //  612    617    84     119    Ljava/net/URISyntaxException;
        //  619    624    84     119    Lorg/json/JSONException;
        //  619    624    84     119    Ljava/net/URISyntaxException;
        //  626    631    84     119    Lorg/json/JSONException;
        //  626    631    84     119    Ljava/net/URISyntaxException;
        //  639    645    84     119    Lorg/json/JSONException;
        //  639    645    84     119    Ljava/net/URISyntaxException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 334, Size: 334
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
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3417)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3417)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3417)
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
    
    public static void disableAndFlushInstallQueue(final int n, final Context context) {
        InstallShortcutReceiver.sInstallQueueDisabledFlags &= ~n;
        flushInstallQueue(context);
    }
    
    public static void enableInstallQueue(final int n) {
        InstallShortcutReceiver.sInstallQueueDisabledFlags |= n;
    }
    
    static CharSequence ensureValidName(final Context context, final Intent intent, CharSequence loadLabel) {
        if (loadLabel != null) {
            return loadLabel;
        }
        try {
            final PackageManager packageManager = context.getPackageManager();
            try {
                loadLabel = packageManager.getActivityInfo(intent.getComponent(), 0).loadLabel(packageManager);
                return loadLabel;
            }
            catch (PackageManager$NameNotFoundException ex) {
                return "";
            }
        }
        catch (PackageManager$NameNotFoundException ex2) {}
    }
    
    static void flushInstallQueue(final Context context) {
        boolean b = false;
        final LauncherModel model = LauncherAppState.getInstance(context).getModel();
        if (model.getCallback() == null) {
            b = true;
        }
        if (InstallShortcutReceiver.sInstallQueueDisabledFlags != 0 || b) {
            return;
        }
        final ArrayList andClearInstallQueue = getAndClearInstallQueue(context);
        if (!andClearInstallQueue.isEmpty()) {
            model.addAndBindAddedWorkspaceItems(new InstallShortcutReceiver$LazyShortcutsProvider(context.getApplicationContext(), andClearInstallQueue));
        }
    }
    
    public static ShortcutInfo fromActivityInfo(final LauncherActivityInfo launcherActivityInfo, final Context context) {
        return (ShortcutInfo)new InstallShortcutReceiver$PendingInstallShortcutInfo(launcherActivityInfo, context).getItemInfo().first;
    }
    
    public static ShortcutInfo fromShortcutIntent(final Context context, final Intent intent) {
        ShortcutInfo shortcutInfo = null;
        final InstallShortcutReceiver$PendingInstallShortcutInfo pendingInfo = createPendingInfo(context, intent);
        if (pendingInfo != null) {
            shortcutInfo = (ShortcutInfo)pendingInfo.getItemInfo().first;
        }
        return shortcutInfo;
    }
    
    private static ArrayList getAndClearInstallQueue(final Context context) {
        final SharedPreferences prefs = Utilities.getPrefs(context);
        final ArrayList<InstallShortcutReceiver$PendingInstallShortcutInfo> list;
        synchronized (InstallShortcutReceiver.sLock) {
            list = new ArrayList<InstallShortcutReceiver$PendingInstallShortcutInfo>();
            final Set stringSet = prefs.getStringSet("apps_to_install", (Set)null);
            if (stringSet == null) {
                return list;
            }
            final Iterator<String> iterator = stringSet.iterator();
            while (iterator.hasNext()) {
                final InstallShortcutReceiver$PendingInstallShortcutInfo decode = decode(iterator.next(), context);
                if (decode != null) {
                    list.add(decode);
                }
            }
        }
        prefs.edit().putStringSet("apps_to_install", (Set)new HashSet()).apply();
        // monitorexit(o)
        return list;
    }
    
    private static String getIntentPackage(final Intent intent) {
        String s;
        if (intent.getComponent() == null) {
            s = intent.getPackage();
        }
        else {
            s = intent.getComponent().getPackageName();
        }
        return s;
    }
    
    public static HashSet getPendingShortcuts(final Context context) {
        final HashSet<ShortcutKey> set = new HashSet<ShortcutKey>();
        final Set stringSet = Utilities.getPrefs(context).getStringSet("apps_to_install", (Set)null);
        if (Utilities.isEmpty(stringSet)) {
            return set;
        }
        for (final String s : stringSet) {
            try {
                final InstallShortcutReceiver$Decoder installShortcutReceiver$Decoder = new InstallShortcutReceiver$Decoder(s, context, null);
                if (installShortcutReceiver$Decoder.optBoolean("isDeepShortcut")) {
                    final Intent launcherIntent = installShortcutReceiver$Decoder.launcherIntent;
                    try {
                        set.add(ShortcutKey.fromIntent(launcherIntent, installShortcutReceiver$Decoder.user));
                    }
                    catch (JSONException | URISyntaxException ex) {
                        final Object o;
                        Log.d("InstallShortcutReceiver", "Exception reading shortcut to add: " + o);
                    }
                    continue;
                }
                continue;
            }
            catch (JSONException ex2) {}
            catch (URISyntaxException ex3) {}
            break;
        }
        return set;
    }
    
    private static boolean isValidExtraType(final Intent intent, final String s, final Class clazz) {
        final Parcelable parcelableExtra = intent.getParcelableExtra(s);
        return parcelableExtra == null || clazz.isInstance(parcelableExtra);
    }
    
    public static void queueActivityInfo(final LauncherActivityInfo launcherActivityInfo, final Context context) {
        queuePendingShortcutInfo(new InstallShortcutReceiver$PendingInstallShortcutInfo(launcherActivityInfo, context), context);
    }
    
    private static void queuePendingShortcutInfo(final InstallShortcutReceiver$PendingInstallShortcutInfo installShortcutReceiver$PendingInstallShortcutInfo, final Context context) {
        addToInstallQueue(Utilities.getPrefs(context), installShortcutReceiver$PendingInstallShortcutInfo);
        flushInstallQueue(context);
    }
    
    public static void queueShortcut(final ShortcutInfoCompat shortcutInfoCompat, final Context context) {
        queuePendingShortcutInfo(new InstallShortcutReceiver$PendingInstallShortcutInfo(shortcutInfoCompat, context), context);
    }
    
    public static void queueWidget(final AppWidgetProviderInfo appWidgetProviderInfo, final int n, final Context context) {
        queuePendingShortcutInfo(new InstallShortcutReceiver$PendingInstallShortcutInfo(appWidgetProviderInfo, n, context), context);
    }
    
    public static void removeFromInstallQueue(final Context context, final HashSet set, final UserHandle userHandle) {
        if (set.isEmpty()) {
            return;
        }
        final SharedPreferences prefs = Utilities.getPrefs(context);
        final Object sLock = InstallShortcutReceiver.sLock;
        // monitorenter(sLock)
        final String s = "apps_to_install";
        Set<String> set2 = null;
        final SharedPreferences sharedPreferences = prefs;
        final String s2 = s;
        try {
            final Set stringSet = sharedPreferences.getStringSet(s2, (Set)null);
            if (Utilities.isEmpty(stringSet)) {
                return;
            }
            set2 = new HashSet<String>(stringSet);
            final Iterator<String> iterator = set2.iterator();
            while (iterator.hasNext()) {
                final String s3 = iterator.next();
                try {
                    final InstallShortcutReceiver$Decoder installShortcutReceiver$Decoder = new InstallShortcutReceiver$Decoder(s3, context, null);
                    final Intent launcherIntent = installShortcutReceiver$Decoder.launcherIntent;
                    try {
                        if (set.contains(getIntentPackage(launcherIntent)) && userHandle.equals((Object)installShortcutReceiver$Decoder.user)) {
                            iterator.remove();
                            continue;
                        }
                        continue;
                    }
                    catch (JSONException ex2) {}
                    catch (URISyntaxException ex) {
                        Log.d("InstallShortcutReceiver", "Exception reading shortcut to add: " + ex);
                        iterator.remove();
                    }
                }
                catch (JSONException ex3) {}
                catch (URISyntaxException ex4) {}
                finally {
                }
                // monitorexit(sLock)
            }
        }
        finally {}
        prefs.edit().putStringSet("apps_to_install", (Set)set2).apply();
    }
    // monitorexit(sLock)
    
    public void onReceive(final Context context, final Intent intent) {
        if (!"com.android.launcher.action.INSTALL_SHORTCUT".equals(intent.getAction())) {
            return;
        }
        final InstallShortcutReceiver$PendingInstallShortcutInfo pendingInfo = createPendingInfo(context, intent);
        if (pendingInfo != null) {
            if (!pendingInfo.isLauncherActivity() && !new PackageManagerHelper(context).hasPermissionForActivity(pendingInfo.launchIntent, null)) {
                Log.e("InstallShortcutReceiver", "Ignoring malicious intent " + pendingInfo.launchIntent.toUri(0));
                return;
            }
            queuePendingShortcutInfo(pendingInfo, context);
        }
    }
}
