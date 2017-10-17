// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import java.util.Collections;
import android.os.DeadObjectException;
import android.accounts.Account;
import android.content.Intent;
import java.util.Set;
import com.google.android.gms.common.api.A;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import android.util.Log;
import android.content.ServiceConnection;
import android.os.Handler;
import android.content.Context;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import android.os.IInterface;
import com.google.android.gms.common.f;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import android.os.Bundle;
import android.os.IBinder;

final class s extends i
{
    public final IBinder iA;
    final /* synthetic */ x iB;
    
    public s(final x ib, final int n, final IBinder ia, final Bundle bundle) {
        this.iB = ib;
        super(ib, n, bundle);
        this.iA = ia;
    }
    
    protected boolean jV() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/google/android/gms/common/internal/s.iA:Landroid/os/IBinder;
        //     4: astore_1       
        //     5: aload_1        
        //     6: invokeinterface android/os/IBinder.getInterfaceDescriptor:()Ljava/lang/String;
        //    11: astore_1       
        //    12: aload_0        
        //    13: getfield        com/google/android/gms/common/internal/s.iB:Lcom/google/android/gms/common/internal/x;
        //    16: invokevirtual   com/google/android/gms/common/internal/x.jl:()Ljava/lang/String;
        //    19: astore_2       
        //    20: aload_2        
        //    21: aload_1        
        //    22: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //    25: istore_3       
        //    26: iload_3        
        //    27: ifeq            63
        //    30: aload_0        
        //    31: getfield        com/google/android/gms/common/internal/s.iB:Lcom/google/android/gms/common/internal/x;
        //    34: astore_1       
        //    35: aload_0        
        //    36: getfield        com/google/android/gms/common/internal/s.iA:Landroid/os/IBinder;
        //    39: astore_2       
        //    40: aload_1        
        //    41: aload_2        
        //    42: invokevirtual   com/google/android/gms/common/internal/x.jn:(Landroid/os/IBinder;)Landroid/os/IInterface;
        //    45: astore_1       
        //    46: aload_1        
        //    47: ifnonnull       147
        //    50: iconst_0       
        //    51: ireturn        
        //    52: astore_1       
        //    53: ldc             "GmsClient"
        //    55: ldc             "service probably died"
        //    57: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
        //    60: pop            
        //    61: iconst_0       
        //    62: ireturn        
        //    63: aload_0        
        //    64: getfield        com/google/android/gms/common/internal/s.iB:Lcom/google/android/gms/common/internal/x;
        //    67: invokevirtual   com/google/android/gms/common/internal/x.jl:()Ljava/lang/String;
        //    70: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //    73: astore_2       
        //    74: new             Ljava/lang/StringBuilder;
        //    77: astore          4
        //    79: aload_2        
        //    80: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //    83: invokevirtual   java/lang/String.length:()I
        //    86: bipush          34
        //    88: iadd           
        //    89: istore          5
        //    91: aload_1        
        //    92: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //    95: invokevirtual   java/lang/String.length:()I
        //    98: istore          6
        //   100: iload           5
        //   102: iload           6
        //   104: iadd           
        //   105: istore          5
        //   107: aload           4
        //   109: iload           5
        //   111: invokespecial   java/lang/StringBuilder.<init>:(I)V
        //   114: aload           4
        //   116: ldc             "service descriptor mismatch: "
        //   118: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   121: aload_2        
        //   122: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   125: ldc             " vs. "
        //   127: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   130: aload_1        
        //   131: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   134: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   137: astore_1       
        //   138: ldc             "GmsClient"
        //   140: aload_1        
        //   141: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   144: pop            
        //   145: iconst_0       
        //   146: ireturn        
        //   147: aload_0        
        //   148: getfield        com/google/android/gms/common/internal/s.iB:Lcom/google/android/gms/common/internal/x;
        //   151: astore_2       
        //   152: iconst_2       
        //   153: istore          7
        //   155: iconst_3       
        //   156: istore          5
        //   158: aload_2        
        //   159: iload           7
        //   161: iload           5
        //   163: aload_1        
        //   164: invokestatic    com/google/android/gms/common/internal/x.kR:(Lcom/google/android/gms/common/internal/x;IILandroid/os/IInterface;)Z
        //   167: istore          8
        //   169: iload           8
        //   171: ifeq            50
        //   174: aload_0        
        //   175: getfield        com/google/android/gms/common/internal/s.iB:Lcom/google/android/gms/common/internal/x;
        //   178: invokevirtual   com/google/android/gms/common/internal/x.kU:()Landroid/os/Bundle;
        //   181: astore_1       
        //   182: aload_0        
        //   183: getfield        com/google/android/gms/common/internal/s.iB:Lcom/google/android/gms/common/internal/x;
        //   186: invokestatic    com/google/android/gms/common/internal/x.kO:(Lcom/google/android/gms/common/internal/x;)Lcom/google/android/gms/common/internal/B;
        //   189: astore_2       
        //   190: aload_2        
        //   191: ifnonnull       196
        //   194: iconst_1       
        //   195: ireturn        
        //   196: aload_0        
        //   197: getfield        com/google/android/gms/common/internal/s.iB:Lcom/google/android/gms/common/internal/x;
        //   200: invokestatic    com/google/android/gms/common/internal/x.kO:(Lcom/google/android/gms/common/internal/x;)Lcom/google/android/gms/common/internal/B;
        //   203: astore_2       
        //   204: aload_2        
        //   205: aload_1        
        //   206: invokeinterface com/google/android/gms/common/internal/B.lf:(Landroid/os/Bundle;)V
        //   211: goto            194
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                        
        //  -----  -----  -----  -----  ----------------------------
        //  0      4      52     63     Landroid/os/RemoteException;
        //  5      11     52     63     Landroid/os/RemoteException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: invokestatic:boolean(x::kR, getfield:x(s::iB, this:s), ldc:int(2), ldc:int(3), var_1_2D:IInterface)
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.GotoRemoval.traverseGraph(GotoRemoval.java:88)
        //     at com.strobel.decompiler.ast.GotoRemoval.removeGotos(GotoRemoval.java:52)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:276)
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
    
    protected void jW(final ConnectionResult connectionResult) {
        if (this.iB.jd != null) {
            this.iB.jd.kq(connectionResult);
        }
        this.iB.kJ(connectionResult);
    }
}
