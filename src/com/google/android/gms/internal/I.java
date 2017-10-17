// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.os.Binder;
import android.content.Context;

public abstract class i
{
    private static String on;
    private static final Object oq;
    private static aZ or;
    private static int ot;
    protected final String oo;
    private Object op;
    protected final Object os;
    
    static {
        oq = new Object();
        i.or = null;
        i.ot = 0;
        i.on = "com.google.android.providers.gsf.permission.READ_GSERVICES";
    }
    
    protected i(final String oo, final Object os) {
        this.op = null;
        this.oo = oo;
        this.os = os;
    }
    
    public static i sh(final String s, final boolean b) {
        return new aU(s, Boolean.valueOf(b));
    }
    
    public static i si(final String s, final String s2) {
        return new aL(s, s2);
    }
    
    public static void sj(final Context p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: getstatic       com/google/android/gms/internal/i.oq:Ljava/lang/Object;
        //     3: astore_1       
        //     4: aload_1        
        //     5: monitorenter   
        //     6: getstatic       com/google/android/gms/internal/i.or:Lcom/google/android/gms/internal/aZ;
        //     9: astore_2       
        //    10: aload_2        
        //    11: ifnull          25
        //    14: getstatic       com/google/android/gms/internal/i.ot:I
        //    17: istore_3       
        //    18: iload_3        
        //    19: ifeq            53
        //    22: aload_1        
        //    23: monitorexit    
        //    24: return         
        //    25: new             Lcom/google/android/gms/internal/bi;
        //    28: astore_2       
        //    29: aload_0        
        //    30: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //    33: astore          4
        //    35: aload_2        
        //    36: aload           4
        //    38: invokespecial   com/google/android/gms/internal/bi.<init>:(Landroid/content/ContentResolver;)V
        //    41: aload_2        
        //    42: putstatic       com/google/android/gms/internal/i.or:Lcom/google/android/gms/internal/aZ;
        //    45: goto            14
        //    48: astore_2       
        //    49: aload_1        
        //    50: monitorexit    
        //    51: aload_2        
        //    52: athrow         
        //    53: aload_0        
        //    54: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
        //    57: astore_2       
        //    58: ldc             "com.google.android.gms"
        //    60: astore          4
        //    62: aload_2        
        //    63: aload           4
        //    65: iconst_0       
        //    66: invokevirtual   android/content/pm/PackageManager.getApplicationInfo:(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
        //    69: astore_2       
        //    70: aload_2        
        //    71: getfield        android/content/pm/ApplicationInfo.uid:I
        //    74: istore_3       
        //    75: iload_3        
        //    76: putstatic       com/google/android/gms/internal/i.ot:I
        //    79: goto            22
        //    82: astore_2       
        //    83: aload_2        
        //    84: invokevirtual   android/content/pm/PackageManager$NameNotFoundException.toString:()Ljava/lang/String;
        //    87: astore_2       
        //    88: ldc             "GservicesValue"
        //    90: astore          4
        //    92: aload           4
        //    94: aload_2        
        //    95: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //    98: pop            
        //    99: goto            22
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                                     
        //  -----  -----  -----  -----  ---------------------------------------------------------
        //  6      9      48     53     Any
        //  14     17     48     53     Any
        //  22     24     48     53     Any
        //  25     28     48     53     Any
        //  29     33     48     53     Any
        //  36     41     48     53     Any
        //  41     45     48     53     Any
        //  49     51     48     53     Any
        //  53     57     82     102    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  53     57     48     53     Any
        //  65     69     82     102    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  65     69     48     53     Any
        //  70     74     82     102    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  70     74     48     53     Any
        //  75     79     82     102    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  75     79     48     53     Any
        //  83     87     48     53     Any
        //  94     99     48     53     Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0053:
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
    
    public static i sm(final String s, final Long n) {
        return new aS(s, n);
    }
    
    public static i sn(final String s, final Integer n) {
        return new aQ(s, n);
    }
    
    public final Object get() {
        Label_0020: {
            if (this.op != null) {
                break Label_0020;
            }
            try {
                return this.sl(this.oo);
                return this.op;
            }
            catch (SecurityException ex) {
                final long clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    return this.sl(this.oo);
                }
                finally {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                }
            }
        }
    }
    
    protected abstract Object sl(final String p0);
}
