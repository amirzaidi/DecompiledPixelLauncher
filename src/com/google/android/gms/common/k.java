// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common;

import android.content.pm.PackageInfo;
import android.util.Log;
import com.google.android.gms.common.internal.D;
import android.app.NotificationManager;
import android.content.res.Resources;
import com.google.android.gms.common.internal.p;
import android.os.Bundle;
import android.os.UserManager;
import java.util.Iterator;
import com.google.android.gms.common.a.n;
import android.content.pm.PackageInstaller$SessionInfo;
import com.google.android.gms.common.a.j;
import com.google.android.gms.common.a.g;
import com.google.android.gms.internal.aW;
import android.content.pm.PackageManager;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager$NameNotFoundException;
import com.google.android.gms.internal.az;
import android.text.TextUtils;
import android.content.Context;
import android.os.Build;
import java.util.concurrent.atomic.AtomicBoolean;

public class k
{
    public static final int nA;
    private static final AtomicBoolean nB;
    public static boolean nC;
    public static boolean nD;
    static boolean nE;
    private static int nF;
    private static boolean nG;
    static final AtomicBoolean nH;
    private static String nz;
    
    static {
        nA = qW();
        k.nC = false;
        k.nD = false;
        k.nE = false;
        k.nz = null;
        k.nF = 0;
        k.nG = false;
        nH = new AtomicBoolean();
        nB = new AtomicBoolean();
    }
    
    public static boolean qO(final int n) {
        switch (n) {
            default: {
                return false;
            }
            case 1:
            case 2:
            case 3:
            case 9: {
                return true;
            }
        }
    }
    
    public static boolean qP() {
        return "user".equals(Build.TYPE);
    }
    
    public static String qQ(final Context context) {
        ApplicationInfo xd = null;
        String s = context.getApplicationInfo().name;
        if (TextUtils.isEmpty((CharSequence)s)) {
            s = context.getPackageName();
            final PackageManager packageManager = context.getApplicationContext().getPackageManager();
            try {
                final aW ur = az.uR(context);
                try {
                    xd = ur.xD(context.getPackageName(), 0);
                    if (xd != null) {
                        s = packageManager.getApplicationLabel(xd).toString();
                        return s;
                    }
                    return s;
                }
                catch (PackageManager$NameNotFoundException ex) {}
            }
            catch (PackageManager$NameNotFoundException ex2) {}
        }
        return s;
    }
    
    private static void qR(final Context context) {
        if (!k.nG) {
            re(context);
        }
    }
    
    public static boolean qS(final Context context, final int n) {
        return g.ms(context, n);
    }
    
    public static boolean qT(final Context context) {
        qR(context);
        return k.nE;
    }
    
    static boolean qU(final Context context, final String s) {
        final boolean b = true;
        final boolean equals = s.equals("com.google.android.gms");
        while (true) {
            while (true) {
                Label_0017: {
                    if (!equals) {
                        break Label_0017;
                    }
                    Label_0069: {
                        break Label_0069;
                        while (true) {
                            final PackageManager packageManager = context.getPackageManager();
                            final int n = 8192;
                            final PackageManager packageManager2 = packageManager;
                            try {
                                final ApplicationInfo applicationInfo = packageManager2.getApplicationInfo(s, n);
                                if (!equals) {
                                    return applicationInfo.enabled && !qV(context) && b;
                                }
                                return applicationInfo.enabled;
                                // iftrue(Label_0017:, !j.mw())
                                return false;
                                while (true) {
                                    return b;
                                    final Iterator<PackageInstaller$SessionInfo> iterator = context.getPackageManager().getPackageInstaller().getAllSessions().iterator();
                                    continue;
                                }
                            }
                            // iftrue(Label_0027:, !iterator.hasNext())
                            // iftrue(Label_0100:, !s.equals((Object)(PackageInstaller$SessionInfo)iterator.next().getAppPackageName()))
                            catch (PackageManager$NameNotFoundException ex) {
                                return false;
                            }
                        }
                    }
                }
                if (!n.mI()) {
                    continue;
                }
                break;
            }
            continue;
        }
    }
    
    public static boolean qV(final Context context) {
        if (n.mK()) {
            final Bundle applicationRestrictions = ((UserManager)context.getSystemService("user")).getApplicationRestrictions(context.getPackageName());
            if (applicationRestrictions != null && "true".equals(applicationRestrictions.getString("restricted_profile"))) {
                return true;
            }
        }
        return false;
    }
    
    private static int qW() {
        return p.iy;
    }
    
    public static boolean qX(final Context context) {
        boolean b = false;
        if (qT(context) || !qP()) {
            b = true;
        }
        return b;
    }
    
    public static Resources qY(final Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication("com.google.android.gms");
        }
        catch (PackageManager$NameNotFoundException ex) {
            return null;
        }
    }
    
    public static void qZ(final Context context) {
        if (k.nH.getAndSet(true)) {
            return;
        }
        final String s = "notification";
        try {
            final Object systemService = context.getSystemService(s);
            try {
                final NotificationManager notificationManager = (NotificationManager)systemService;
                if (notificationManager != null) {
                    notificationManager.cancel(10436);
                }
            }
            catch (SecurityException ex) {}
        }
        catch (SecurityException ex2) {}
    }
    
    private static void ra(final Context context) {
        if (k.nB.get()) {
            return;
        }
        qR(context);
        if (k.nF == 0) {
            throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
        }
        if (k.nF == k.nA) {
            return;
        }
        final int na = k.nA;
        final int nf = k.nF;
        final String value = String.valueOf("com.google.android.gms.version");
        throw new IllegalStateException(new StringBuilder(String.valueOf(value).length() + 290).append("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected ").append(na).append(" but found ").append(nf).append(".  You must have the following declaration within the <application> element:     <meta-data android:name=\"").append(value).append("\" android:value=\"@integer/google_play_services_version\" />").toString());
    }
    
    public static int rb(final Context p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: bipush          9
        //     2: istore_1       
        //     3: iconst_1       
        //     4: istore_2       
        //     5: iconst_0       
        //     6: istore_3       
        //     7: aconst_null    
        //     8: astore          4
        //    10: aconst_null    
        //    11: astore          5
        //    13: aload_0        
        //    14: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
        //    17: astore          6
        //    19: aload_0        
        //    20: invokevirtual   android/content/Context.getResources:()Landroid/content/res/Resources;
        //    23: astore          7
        //    25: getstatic       com/google/android/gms/R$string.common_google_play_services_unknown_issue:I
        //    28: istore          8
        //    30: aload           7
        //    32: iload           8
        //    34: invokevirtual   android/content/res/Resources.getString:(I)Ljava/lang/String;
        //    37: pop            
        //    38: aload_0        
        //    39: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
        //    42: astore          7
        //    44: ldc             "com.google.android.gms"
        //    46: astore          9
        //    48: aload           9
        //    50: aload           7
        //    52: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //    55: istore          10
        //    57: iload           10
        //    59: ifeq            205
        //    62: aload_0        
        //    63: invokestatic    com/google/android/gms/common/a/c.ml:(Landroid/content/Context;)Z
        //    66: istore          10
        //    68: iload           10
        //    70: ifeq            212
        //    73: iconst_0       
        //    74: istore          10
        //    76: aconst_null    
        //    77: astore          7
        //    79: iload           10
        //    81: ifne            218
        //    84: ldc             "com.google.android.gms"
        //    86: astore          9
        //    88: bipush          64
        //    90: istore          11
        //    92: aload           6
        //    94: aload           9
        //    96: iload           11
        //    98: invokevirtual   android/content/pm/PackageManager.getPackageInfo:(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
        //   101: astore          9
        //   103: aload_0        
        //   104: invokestatic    com/google/android/gms/common/j.getInstance:(Landroid/content/Context;)Lcom/google/android/gms/common/j;
        //   107: astore          12
        //   109: iload           10
        //   111: ifne            270
        //   114: getstatic       com/google/android/gms/common/c.nr:[Lcom/google/android/gms/common/l;
        //   117: astore          4
        //   119: aload           12
        //   121: aload           9
        //   123: aload           4
        //   125: invokevirtual   com/google/android/gms/common/j.qL:(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/l;)Lcom/google/android/gms/common/l;
        //   128: astore          4
        //   130: aload           4
        //   132: ifnull          343
        //   135: getstatic       com/google/android/gms/common/k.nA:I
        //   138: invokestatic    com/google/android/gms/common/a/k.mx:(I)I
        //   141: istore_3       
        //   142: aload           9
        //   144: getfield        android/content/pm/PackageInfo.versionCode:I
        //   147: invokestatic    com/google/android/gms/common/a/k.mx:(I)I
        //   150: istore          10
        //   152: iload           10
        //   154: iload_3        
        //   155: if_icmplt       355
        //   158: aload           9
        //   160: getfield        android/content/pm/PackageInfo.applicationInfo:Landroid/content/pm/ApplicationInfo;
        //   163: astore          4
        //   165: aload           4
        //   167: ifnull          417
        //   170: aload           4
        //   172: getfield        android/content/pm/ApplicationInfo.enabled:Z
        //   175: istore_3       
        //   176: iload_3        
        //   177: ifeq            456
        //   180: iconst_0       
        //   181: ireturn        
        //   182: astore          7
        //   184: ldc_w           "GooglePlayServicesUtil"
        //   187: astore          7
        //   189: ldc_w           "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included."
        //   192: astore          9
        //   194: aload           7
        //   196: aload           9
        //   198: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   201: pop            
        //   202: goto            38
        //   205: aload_0        
        //   206: invokestatic    com/google/android/gms/common/k.ra:(Landroid/content/Context;)V
        //   209: goto            62
        //   212: iload_2        
        //   213: istore          10
        //   215: goto            79
        //   218: ldc_w           "com.android.vending"
        //   221: astore          4
        //   223: sipush          8256
        //   226: istore          8
        //   228: aload           6
        //   230: aload           4
        //   232: iload           8
        //   234: invokevirtual   android/content/pm/PackageManager.getPackageInfo:(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
        //   237: astore          4
        //   239: goto            84
        //   242: astore          4
        //   244: ldc_w           "GooglePlayServicesUtil"
        //   247: ldc_w           "Google Play Store is missing."
        //   250: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
        //   253: pop            
        //   254: iload_1        
        //   255: ireturn        
        //   256: astore          4
        //   258: ldc_w           "GooglePlayServicesUtil"
        //   261: ldc_w           "Google Play services is missing."
        //   264: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
        //   267: pop            
        //   268: iload_2        
        //   269: ireturn        
        //   270: getstatic       com/google/android/gms/common/c.nr:[Lcom/google/android/gms/common/l;
        //   273: astore          7
        //   275: aload           12
        //   277: aload           4
        //   279: aload           7
        //   281: invokevirtual   com/google/android/gms/common/j.qL:(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/l;)Lcom/google/android/gms/common/l;
        //   284: astore          4
        //   286: aload           4
        //   288: ifnull          331
        //   291: iload_2        
        //   292: anewarray       Lcom/google/android/gms/common/l;
        //   295: astore          7
        //   297: aload           7
        //   299: iconst_0       
        //   300: aload           4
        //   302: aastore        
        //   303: aload           12
        //   305: aload           9
        //   307: aload           7
        //   309: invokevirtual   com/google/android/gms/common/j.qL:(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/l;)Lcom/google/android/gms/common/l;
        //   312: astore          4
        //   314: aload           4
        //   316: ifnonnull       135
        //   319: ldc_w           "GooglePlayServicesUtil"
        //   322: ldc_w           "Google Play services signature invalid."
        //   325: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
        //   328: pop            
        //   329: iload_1        
        //   330: ireturn        
        //   331: ldc_w           "GooglePlayServicesUtil"
        //   334: ldc_w           "Google Play Store signature invalid."
        //   337: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
        //   340: pop            
        //   341: iload_1        
        //   342: ireturn        
        //   343: ldc_w           "GooglePlayServicesUtil"
        //   346: ldc_w           "Google Play services signature invalid."
        //   349: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
        //   352: pop            
        //   353: iload_1        
        //   354: ireturn        
        //   355: getstatic       com/google/android/gms/common/k.nA:I
        //   358: istore_3       
        //   359: aload           9
        //   361: getfield        android/content/pm/PackageInfo.versionCode:I
        //   364: istore          10
        //   366: new             Ljava/lang/StringBuilder;
        //   369: astore          5
        //   371: aload           5
        //   373: bipush          77
        //   375: invokespecial   java/lang/StringBuilder.<init>:(I)V
        //   378: aload           5
        //   380: ldc_w           "Google Play services out of date.  Requires "
        //   383: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   386: iload_3        
        //   387: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //   390: ldc_w           " but found "
        //   393: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   396: iload           10
        //   398: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //   401: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   404: astore          4
        //   406: ldc_w           "GooglePlayServicesUtil"
        //   409: aload           4
        //   411: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
        //   414: pop            
        //   415: iconst_2       
        //   416: ireturn        
        //   417: ldc             "com.google.android.gms"
        //   419: astore          4
        //   421: iconst_0       
        //   422: istore          10
        //   424: aconst_null    
        //   425: astore          7
        //   427: aload           6
        //   429: aload           4
        //   431: iconst_0       
        //   432: invokevirtual   android/content/pm/PackageManager.getApplicationInfo:(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
        //   435: astore          4
        //   437: goto            170
        //   440: astore          4
        //   442: ldc_w           "GooglePlayServicesUtil"
        //   445: ldc_w           "Google Play services missing when getting application info."
        //   448: aload           4
        //   450: invokestatic    android/util/Log.wtf:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   453: pop            
        //   454: iload_2        
        //   455: ireturn        
        //   456: iconst_3       
        //   457: ireturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                                     
        //  -----  -----  -----  -----  ---------------------------------------------------------
        //  19     23     182    205    Any
        //  25     28     182    205    Any
        //  32     38     182    205    Any
        //  96     101    256    270    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  232    237    242    256    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  431    435    440    456    Landroid/content/pm/PackageManager$NameNotFoundException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0135:
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
    
    static boolean rc(final int n) {
        switch (n) {
            default: {
                return false;
            }
            case 1:
            case 2:
            case 3:
            case 18:
            case 42: {
                return true;
            }
        }
    }
    
    public static boolean rd(final Context context, final int n) {
        final boolean b = true;
        if (n != 18) {
            return n == (b ? 1 : 0) && qU(context, "com.google.android.gms");
        }
        return b;
    }
    
    private static void re(final Context context) {
        final boolean ng = true;
        try {
            final String packageName = context.getPackageName();
            try {
                k.nz = packageName;
                final aW ur = az.uR(context);
                try {
                    final int lh = D.lh(context);
                    try {
                        k.nF = lh;
                        final PackageInfo xb = ur.xB("com.google.android.gms", 64);
                        Label_0046: {
                            if (xb != null) {
                                final com.google.android.gms.common.j instance = com.google.android.gms.common.j.getInstance(context);
                                final l[] array = { null };
                                try {
                                    array[0] = c.nr[1];
                                    if (instance.qL(xb, array) == null) {
                                        break Label_0046;
                                    }
                                    k.nE = true;
                                }
                                catch (PackageManager$NameNotFoundException ex) {
                                    Log.w("GooglePlayServicesUtil", "Cannot find Google Play services package name.", (Throwable)ex);
                                }
                                return;
                            }
                        }
                        k.nE = false;
                    }
                    catch (PackageManager$NameNotFoundException ex2) {}
                }
                catch (PackageManager$NameNotFoundException ex3) {}
            }
            catch (PackageManager$NameNotFoundException ex4) {}
        }
        catch (PackageManager$NameNotFoundException ex5) {}
        finally {
            k.nG = ng;
        }
    }
}
