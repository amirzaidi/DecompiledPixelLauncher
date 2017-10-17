// 
// Decompiled by Procyon v0.5.30
// 

package com.google.protobuf.nano.android;

import java.lang.reflect.Array;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public final class a implements Parcelable$Creator
{
    private final Class KM;
    
    static void Re(final Class clazz, final com.google.protobuf.nano.a a, final Parcel parcel) {
        parcel.writeString(clazz.getName());
        parcel.writeByteArray(a.toByteArray(a));
    }
    
    public com.google.protobuf.nano.a createFromParcel(final Parcel p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: invokevirtual   android/os/Parcel.readString:()Ljava/lang/String;
        //     4: astore_2       
        //     5: aload_1        
        //     6: invokevirtual   android/os/Parcel.createByteArray:()[B
        //     9: astore_3       
        //    10: aconst_null    
        //    11: astore          4
        //    13: aload_0        
        //    14: invokevirtual   com/google/protobuf/nano/android/a.getClass:()Ljava/lang/Class;
        //    17: astore          5
        //    19: aload           5
        //    21: invokevirtual   java/lang/Class.getClassLoader:()Ljava/lang/ClassLoader;
        //    24: astore          5
        //    26: aload_2        
        //    27: iconst_0       
        //    28: aload           5
        //    30: invokestatic    java/lang/Class.forName:(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
        //    33: astore_2       
        //    34: ldc             Lcom/google/protobuf/nano/a;.class
        //    36: astore          5
        //    38: aload_2        
        //    39: aload           5
        //    41: invokevirtual   java/lang/Class.asSubclass:(Ljava/lang/Class;)Ljava/lang/Class;
        //    44: astore_2       
        //    45: aconst_null    
        //    46: astore          5
        //    48: iconst_0       
        //    49: anewarray       Ljava/lang/Class;
        //    52: astore          5
        //    54: aload_2        
        //    55: aload           5
        //    57: invokevirtual   java/lang/Class.getConstructor:([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
        //    60: astore_2       
        //    61: aconst_null    
        //    62: astore          5
        //    64: iconst_0       
        //    65: anewarray       Ljava/lang/Object;
        //    68: astore          5
        //    70: aload_2        
        //    71: aload           5
        //    73: invokevirtual   java/lang/reflect/Constructor.newInstance:([Ljava/lang/Object;)Ljava/lang/Object;
        //    76: astore_2       
        //    77: aload_2        
        //    78: checkcast       Lcom/google/protobuf/nano/a;
        //    81: astore_2       
        //    82: aload_2        
        //    83: aload_3        
        //    84: invokestatic    com/google/protobuf/nano/a.mergeFrom:(Lcom/google/protobuf/nano/a;[B)Lcom/google/protobuf/nano/a;
        //    87: pop            
        //    88: aload_2        
        //    89: astore          4
        //    91: aload           4
        //    93: areturn        
        //    94: astore_2       
        //    95: ldc             "PMNCreator"
        //    97: astore_3       
        //    98: ldc             "Exception trying to create proto from parcel"
        //   100: astore          5
        //   102: aload_3        
        //   103: aload           5
        //   105: aload_2        
        //   106: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   109: pop            
        //   110: goto            91
        //   113: astore_2       
        //   114: ldc             "PMNCreator"
        //   116: astore_3       
        //   117: ldc             "Exception trying to create proto from parcel"
        //   119: astore          5
        //   121: aload_3        
        //   122: aload           5
        //   124: aload_2        
        //   125: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   128: pop            
        //   129: goto            91
        //   132: astore_2       
        //   133: ldc             "PMNCreator"
        //   135: astore_3       
        //   136: ldc             "Exception trying to create proto from parcel"
        //   138: astore          5
        //   140: aload_3        
        //   141: aload           5
        //   143: aload_2        
        //   144: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   147: pop            
        //   148: goto            91
        //   151: astore_2       
        //   152: ldc             "PMNCreator"
        //   154: astore_3       
        //   155: ldc             "Exception trying to create proto from parcel"
        //   157: astore          5
        //   159: aload_3        
        //   160: aload           5
        //   162: aload_2        
        //   163: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   166: pop            
        //   167: goto            91
        //   170: astore_2       
        //   171: ldc             "PMNCreator"
        //   173: astore_3       
        //   174: ldc             "Exception trying to create proto from parcel"
        //   176: astore          5
        //   178: aload_3        
        //   179: aload           5
        //   181: aload_2        
        //   182: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   185: pop            
        //   186: goto            91
        //   189: astore_2       
        //   190: ldc             "PMNCreator"
        //   192: astore_3       
        //   193: ldc             "Exception trying to create proto from parcel"
        //   195: astore          5
        //   197: aload_3        
        //   198: aload           5
        //   200: aload_2        
        //   201: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   204: pop            
        //   205: goto            91
        //   208: astore          6
        //   210: aload_2        
        //   211: astore          4
        //   213: aload           6
        //   215: astore_2       
        //   216: goto            190
        //   219: astore          6
        //   221: aload_2        
        //   222: astore          4
        //   224: aload           6
        //   226: astore_2       
        //   227: goto            171
        //   230: astore          6
        //   232: aload_2        
        //   233: astore          4
        //   235: aload           6
        //   237: astore_2       
        //   238: goto            152
        //   241: astore          6
        //   243: aload_2        
        //   244: astore          4
        //   246: aload           6
        //   248: astore_2       
        //   249: goto            133
        //   252: astore          6
        //   254: aload_2        
        //   255: astore          4
        //   257: aload           6
        //   259: astore_2       
        //   260: goto            114
        //   263: astore          6
        //   265: aload_2        
        //   266: astore          4
        //   268: aload           6
        //   270: astore_2       
        //   271: goto            95
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                                         
        //  -----  -----  -----  -----  -------------------------------------------------------------
        //  13     17     189    190    Ljava/lang/ClassNotFoundException;
        //  13     17     170    171    Ljava/lang/NoSuchMethodException;
        //  13     17     151    152    Ljava/lang/reflect/InvocationTargetException;
        //  13     17     132    133    Ljava/lang/IllegalAccessException;
        //  13     17     113    114    Ljava/lang/InstantiationException;
        //  13     17     94     95     Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        //  19     24     189    190    Ljava/lang/ClassNotFoundException;
        //  19     24     170    171    Ljava/lang/NoSuchMethodException;
        //  19     24     151    152    Ljava/lang/reflect/InvocationTargetException;
        //  19     24     132    133    Ljava/lang/IllegalAccessException;
        //  19     24     113    114    Ljava/lang/InstantiationException;
        //  19     24     94     95     Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        //  28     33     189    190    Ljava/lang/ClassNotFoundException;
        //  28     33     170    171    Ljava/lang/NoSuchMethodException;
        //  28     33     151    152    Ljava/lang/reflect/InvocationTargetException;
        //  28     33     132    133    Ljava/lang/IllegalAccessException;
        //  28     33     113    114    Ljava/lang/InstantiationException;
        //  28     33     94     95     Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        //  39     44     189    190    Ljava/lang/ClassNotFoundException;
        //  39     44     170    171    Ljava/lang/NoSuchMethodException;
        //  39     44     151    152    Ljava/lang/reflect/InvocationTargetException;
        //  39     44     132    133    Ljava/lang/IllegalAccessException;
        //  39     44     113    114    Ljava/lang/InstantiationException;
        //  39     44     94     95     Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        //  48     52     189    190    Ljava/lang/ClassNotFoundException;
        //  48     52     170    171    Ljava/lang/NoSuchMethodException;
        //  48     52     151    152    Ljava/lang/reflect/InvocationTargetException;
        //  48     52     132    133    Ljava/lang/IllegalAccessException;
        //  48     52     113    114    Ljava/lang/InstantiationException;
        //  48     52     94     95     Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        //  55     60     189    190    Ljava/lang/ClassNotFoundException;
        //  55     60     170    171    Ljava/lang/NoSuchMethodException;
        //  55     60     151    152    Ljava/lang/reflect/InvocationTargetException;
        //  55     60     132    133    Ljava/lang/IllegalAccessException;
        //  55     60     113    114    Ljava/lang/InstantiationException;
        //  55     60     94     95     Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        //  64     68     189    190    Ljava/lang/ClassNotFoundException;
        //  64     68     170    171    Ljava/lang/NoSuchMethodException;
        //  64     68     151    152    Ljava/lang/reflect/InvocationTargetException;
        //  64     68     132    133    Ljava/lang/IllegalAccessException;
        //  64     68     113    114    Ljava/lang/InstantiationException;
        //  64     68     94     95     Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        //  71     76     189    190    Ljava/lang/ClassNotFoundException;
        //  71     76     170    171    Ljava/lang/NoSuchMethodException;
        //  71     76     151    152    Ljava/lang/reflect/InvocationTargetException;
        //  71     76     132    133    Ljava/lang/IllegalAccessException;
        //  71     76     113    114    Ljava/lang/InstantiationException;
        //  71     76     94     95     Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        //  77     81     189    190    Ljava/lang/ClassNotFoundException;
        //  77     81     170    171    Ljava/lang/NoSuchMethodException;
        //  77     81     151    152    Ljava/lang/reflect/InvocationTargetException;
        //  77     81     132    133    Ljava/lang/IllegalAccessException;
        //  77     81     113    114    Ljava/lang/InstantiationException;
        //  77     81     94     95     Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        //  83     88     208    219    Ljava/lang/ClassNotFoundException;
        //  83     88     219    230    Ljava/lang/NoSuchMethodException;
        //  83     88     230    241    Ljava/lang/reflect/InvocationTargetException;
        //  83     88     241    252    Ljava/lang/IllegalAccessException;
        //  83     88     252    263    Ljava/lang/InstantiationException;
        //  83     88     263    274    Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0091:
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
    
    public com.google.protobuf.nano.a[] newArray(final int n) {
        return (com.google.protobuf.nano.a[])Array.newInstance(this.KM, n);
    }
}
