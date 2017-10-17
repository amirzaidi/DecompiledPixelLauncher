// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.b;

class bt implements Runnable
{
    final /* synthetic */ b ug;
    final /* synthetic */ d uh;
    
    bt(final d uh, final b ug) {
        this.uh = uh;
        this.ug = ug;
    }
    
    public void run() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: getstatic       com/google/android/gms/internal/f.nA:Ljava/lang/ThreadLocal;
        //     3: astore_1       
        //     4: iconst_1       
        //     5: istore_2       
        //     6: iload_2        
        //     7: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //    10: astore_3       
        //    11: aload_1        
        //    12: aload_3        
        //    13: invokevirtual   java/lang/ThreadLocal.set:(Ljava/lang/Object;)V
        //    16: aload_0        
        //    17: getfield        com/google/android/gms/internal/bt.uh:Lcom/google/android/gms/internal/d;
        //    20: astore_1       
        //    21: aload_1        
        //    22: invokestatic    com/google/android/gms/internal/d.rx:(Lcom/google/android/gms/internal/d;)Lcom/google/android/gms/common/api/v;
        //    25: astore_1       
        //    26: aload_0        
        //    27: getfield        com/google/android/gms/internal/bt.ug:Lcom/google/android/gms/common/api/b;
        //    30: astore_3       
        //    31: aload_1        
        //    32: aload_3        
        //    33: invokevirtual   com/google/android/gms/common/api/v.ev:(Lcom/google/android/gms/common/api/b;)Lcom/google/android/gms/common/api/c;
        //    36: astore_1       
        //    37: aload_0        
        //    38: getfield        com/google/android/gms/internal/bt.uh:Lcom/google/android/gms/internal/d;
        //    41: astore_3       
        //    42: aload_3        
        //    43: invokestatic    com/google/android/gms/internal/d.rD:(Lcom/google/android/gms/internal/d;)Lcom/google/android/gms/internal/cB;
        //    46: astore_3       
        //    47: aload_0        
        //    48: getfield        com/google/android/gms/internal/bt.uh:Lcom/google/android/gms/internal/d;
        //    51: astore          4
        //    53: aload           4
        //    55: invokestatic    com/google/android/gms/internal/d.rD:(Lcom/google/android/gms/internal/d;)Lcom/google/android/gms/internal/cB;
        //    58: astore          4
        //    60: iconst_0       
        //    61: istore          5
        //    63: aload           4
        //    65: iconst_0       
        //    66: aload_1        
        //    67: invokevirtual   com/google/android/gms/internal/cB.obtainMessage:(ILjava/lang/Object;)Landroid/os/Message;
        //    70: astore_1       
        //    71: aload_3        
        //    72: aload_1        
        //    73: invokevirtual   com/google/android/gms/internal/cB.sendMessage:(Landroid/os/Message;)Z
        //    76: pop            
        //    77: getstatic       com/google/android/gms/internal/f.nA:Ljava/lang/ThreadLocal;
        //    80: astore_1       
        //    81: iconst_0       
        //    82: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //    85: astore_3       
        //    86: aload_1        
        //    87: aload_3        
        //    88: invokevirtual   java/lang/ThreadLocal.set:(Ljava/lang/Object;)V
        //    91: aload_0        
        //    92: getfield        com/google/android/gms/internal/bt.uh:Lcom/google/android/gms/internal/d;
        //    95: astore_1       
        //    96: aload_0        
        //    97: getfield        com/google/android/gms/internal/bt.ug:Lcom/google/android/gms/common/api/b;
        //   100: astore_3       
        //   101: aload_1        
        //   102: aload_3        
        //   103: invokestatic    com/google/android/gms/internal/d.ry:(Lcom/google/android/gms/internal/d;Lcom/google/android/gms/common/api/b;)V
        //   106: aload_0        
        //   107: getfield        com/google/android/gms/internal/bt.uh:Lcom/google/android/gms/internal/d;
        //   110: invokestatic    com/google/android/gms/internal/d.rI:(Lcom/google/android/gms/internal/d;)Ljava/lang/ref/WeakReference;
        //   113: invokevirtual   java/lang/ref/WeakReference.get:()Ljava/lang/Object;
        //   116: checkcast       Lcom/google/android/gms/common/api/d;
        //   119: astore_1       
        //   120: aload_1        
        //   121: ifnonnull       125
        //   124: return         
        //   125: aload_0        
        //   126: getfield        com/google/android/gms/internal/bt.uh:Lcom/google/android/gms/internal/d;
        //   129: astore_3       
        //   130: aload_1        
        //   131: aload_3        
        //   132: invokevirtual   com/google/android/gms/common/api/d.dB:(Lcom/google/android/gms/internal/d;)V
        //   135: goto            124
        //   138: astore_1       
        //   139: aload_0        
        //   140: getfield        com/google/android/gms/internal/bt.uh:Lcom/google/android/gms/internal/d;
        //   143: astore_3       
        //   144: aload_3        
        //   145: invokestatic    com/google/android/gms/internal/d.rD:(Lcom/google/android/gms/internal/d;)Lcom/google/android/gms/internal/cB;
        //   148: astore_3       
        //   149: aload_0        
        //   150: getfield        com/google/android/gms/internal/bt.uh:Lcom/google/android/gms/internal/d;
        //   153: astore          4
        //   155: aload           4
        //   157: invokestatic    com/google/android/gms/internal/d.rD:(Lcom/google/android/gms/internal/d;)Lcom/google/android/gms/internal/cB;
        //   160: astore          4
        //   162: iconst_1       
        //   163: istore          5
        //   165: aload           4
        //   167: iload           5
        //   169: aload_1        
        //   170: invokevirtual   com/google/android/gms/internal/cB.obtainMessage:(ILjava/lang/Object;)Landroid/os/Message;
        //   173: astore_1       
        //   174: aload_3        
        //   175: aload_1        
        //   176: invokevirtual   com/google/android/gms/internal/cB.sendMessage:(Landroid/os/Message;)Z
        //   179: pop            
        //   180: getstatic       com/google/android/gms/internal/f.nA:Ljava/lang/ThreadLocal;
        //   183: astore_1       
        //   184: iconst_0       
        //   185: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //   188: astore_3       
        //   189: aload_1        
        //   190: aload_3        
        //   191: invokevirtual   java/lang/ThreadLocal.set:(Ljava/lang/Object;)V
        //   194: aload_0        
        //   195: getfield        com/google/android/gms/internal/bt.uh:Lcom/google/android/gms/internal/d;
        //   198: astore_1       
        //   199: aload_0        
        //   200: getfield        com/google/android/gms/internal/bt.ug:Lcom/google/android/gms/common/api/b;
        //   203: astore_3       
        //   204: aload_1        
        //   205: aload_3        
        //   206: invokestatic    com/google/android/gms/internal/d.ry:(Lcom/google/android/gms/internal/d;Lcom/google/android/gms/common/api/b;)V
        //   209: aload_0        
        //   210: getfield        com/google/android/gms/internal/bt.uh:Lcom/google/android/gms/internal/d;
        //   213: invokestatic    com/google/android/gms/internal/d.rI:(Lcom/google/android/gms/internal/d;)Ljava/lang/ref/WeakReference;
        //   216: invokevirtual   java/lang/ref/WeakReference.get:()Ljava/lang/Object;
        //   219: checkcast       Lcom/google/android/gms/common/api/d;
        //   222: astore_1       
        //   223: aload_1        
        //   224: ifnull          124
        //   227: aload_0        
        //   228: getfield        com/google/android/gms/internal/bt.uh:Lcom/google/android/gms/internal/d;
        //   231: astore_3       
        //   232: aload_1        
        //   233: aload_3        
        //   234: invokevirtual   com/google/android/gms/common/api/d.dB:(Lcom/google/android/gms/internal/d;)V
        //   237: goto            124
        //   240: astore_3       
        //   241: getstatic       com/google/android/gms/internal/f.nA:Ljava/lang/ThreadLocal;
        //   244: astore_1       
        //   245: iconst_0       
        //   246: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //   249: astore          4
        //   251: aload_1        
        //   252: aload           4
        //   254: invokevirtual   java/lang/ThreadLocal.set:(Ljava/lang/Object;)V
        //   257: aload_0        
        //   258: getfield        com/google/android/gms/internal/bt.uh:Lcom/google/android/gms/internal/d;
        //   261: astore_1       
        //   262: aload_0        
        //   263: getfield        com/google/android/gms/internal/bt.ug:Lcom/google/android/gms/common/api/b;
        //   266: astore          4
        //   268: aload_1        
        //   269: aload           4
        //   271: invokestatic    com/google/android/gms/internal/d.ry:(Lcom/google/android/gms/internal/d;Lcom/google/android/gms/common/api/b;)V
        //   274: aload_0        
        //   275: getfield        com/google/android/gms/internal/bt.uh:Lcom/google/android/gms/internal/d;
        //   278: invokestatic    com/google/android/gms/internal/d.rI:(Lcom/google/android/gms/internal/d;)Ljava/lang/ref/WeakReference;
        //   281: invokevirtual   java/lang/ref/WeakReference.get:()Ljava/lang/Object;
        //   284: checkcast       Lcom/google/android/gms/common/api/d;
        //   287: astore_1       
        //   288: aload_1        
        //   289: ifnonnull       294
        //   292: aload_3        
        //   293: athrow         
        //   294: aload_0        
        //   295: getfield        com/google/android/gms/internal/bt.uh:Lcom/google/android/gms/internal/d;
        //   298: astore          4
        //   300: aload_1        
        //   301: aload           4
        //   303: invokevirtual   com/google/android/gms/common/api/d.dB:(Lcom/google/android/gms/internal/d;)V
        //   306: goto            292
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                        
        //  -----  -----  -----  -----  ----------------------------
        //  0      3      138    240    Ljava/lang/RuntimeException;
        //  0      3      240    309    Any
        //  6      10     138    240    Ljava/lang/RuntimeException;
        //  6      10     240    309    Any
        //  12     16     138    240    Ljava/lang/RuntimeException;
        //  12     16     240    309    Any
        //  16     20     138    240    Ljava/lang/RuntimeException;
        //  16     20     240    309    Any
        //  21     25     138    240    Ljava/lang/RuntimeException;
        //  21     25     240    309    Any
        //  26     30     138    240    Ljava/lang/RuntimeException;
        //  26     30     240    309    Any
        //  32     36     138    240    Ljava/lang/RuntimeException;
        //  32     36     240    309    Any
        //  37     41     138    240    Ljava/lang/RuntimeException;
        //  37     41     240    309    Any
        //  42     46     138    240    Ljava/lang/RuntimeException;
        //  42     46     240    309    Any
        //  47     51     138    240    Ljava/lang/RuntimeException;
        //  47     51     240    309    Any
        //  53     58     138    240    Ljava/lang/RuntimeException;
        //  53     58     240    309    Any
        //  66     70     138    240    Ljava/lang/RuntimeException;
        //  66     70     240    309    Any
        //  72     77     138    240    Ljava/lang/RuntimeException;
        //  72     77     240    309    Any
        //  139    143    240    309    Any
        //  144    148    240    309    Any
        //  149    153    240    309    Any
        //  155    160    240    309    Any
        //  169    173    240    309    Any
        //  175    180    240    309    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 170, Size: 170
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
