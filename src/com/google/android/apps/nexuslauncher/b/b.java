// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.b;

import java.io.File;
import java.io.FileNotFoundException;
import android.util.Log;
import com.android.launcher3.util.IOUtils;
import com.google.protobuf.nano.a;
import android.content.Context;

public class b
{
    private final Context mContext;
    
    public b(final Context context) {
        this.mContext = context.getApplicationContext();
    }
    
    public void eO(final a p0, final String p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore_3       
        //     2: aload_0        
        //     3: getfield        com/google/android/apps/nexuslauncher/b/b.mContext:Landroid/content/Context;
        //     6: astore          4
        //     8: aconst_null    
        //     9: astore          5
        //    11: aload           4
        //    13: aload_2        
        //    14: iconst_0       
        //    15: invokevirtual   android/content/Context.openFileOutput:(Ljava/lang/String;I)Ljava/io/FileOutputStream;
        //    18: astore          5
        //    20: aload_1        
        //    21: ifnull          72
        //    24: aload_1        
        //    25: invokestatic    com/google/protobuf/nano/a.toByteArray:(Lcom/google/protobuf/nano/a;)[B
        //    28: astore          4
        //    30: aload           5
        //    32: aload           4
        //    34: invokevirtual   java/io/FileOutputStream.write:([B)V
        //    37: aload           5
        //    39: ifnull          47
        //    42: aload           5
        //    44: invokevirtual   java/io/FileOutputStream.close:()V
        //    47: aload_3        
        //    48: ifnull          71
        //    51: aload_3        
        //    52: athrow         
        //    53: astore          4
        //    55: ldc             "ProtoStore"
        //    57: astore          4
        //    59: ldc             "file does not exist"
        //    61: astore          5
        //    63: aload           4
        //    65: aload           5
        //    67: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //    70: pop            
        //    71: return         
        //    72: ldc             "ProtoStore"
        //    74: astore          4
        //    76: new             Ljava/lang/StringBuilder;
        //    79: astore          6
        //    81: aload           6
        //    83: invokespecial   java/lang/StringBuilder.<init>:()V
        //    86: ldc             "deleting "
        //    88: astore          7
        //    90: aload           6
        //    92: aload           7
        //    94: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    97: astore          6
        //    99: aload           6
        //   101: aload_2        
        //   102: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   105: astore          6
        //   107: aload           6
        //   109: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   112: astore          6
        //   114: aload           4
        //   116: aload           6
        //   118: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   121: pop            
        //   122: aload_0        
        //   123: getfield        com/google/android/apps/nexuslauncher/b/b.mContext:Landroid/content/Context;
        //   126: astore          4
        //   128: aload           4
        //   130: aload_2        
        //   131: invokevirtual   android/content/Context.deleteFile:(Ljava/lang/String;)Z
        //   134: pop            
        //   135: goto            37
        //   138: astore          4
        //   140: aload           4
        //   142: athrow         
        //   143: astore          8
        //   145: aload           4
        //   147: astore_3       
        //   148: aload           8
        //   150: astore          4
        //   152: aload           5
        //   154: ifnull          162
        //   157: aload           5
        //   159: invokevirtual   java/io/FileOutputStream.close:()V
        //   162: aload_3        
        //   163: ifnull          220
        //   166: aload_3        
        //   167: athrow         
        //   168: astore          4
        //   170: ldc             "ProtoStore"
        //   172: astore          5
        //   174: ldc             "unable to write file"
        //   176: astore_3       
        //   177: aload           5
        //   179: aload_3        
        //   180: aload           4
        //   182: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   185: pop            
        //   186: goto            71
        //   189: astore_3       
        //   190: goto            47
        //   193: astore          5
        //   195: aload_3        
        //   196: ifnonnull       205
        //   199: aload           5
        //   201: astore_3       
        //   202: goto            162
        //   205: aload_3        
        //   206: aload           5
        //   208: if_acmpeq       162
        //   211: aload_3        
        //   212: aload           5
        //   214: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   217: goto            162
        //   220: aload           4
        //   222: athrow         
        //   223: astore          4
        //   225: aconst_null    
        //   226: astore          5
        //   228: goto            140
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                           
        //  -----  -----  -----  -----  -------------------------------
        //  2      6      223    231    Any
        //  14     18     223    231    Any
        //  24     28     138    140    Any
        //  32     37     138    140    Any
        //  42     47     189    193    Any
        //  51     53     53     71     Ljava/io/FileNotFoundException;
        //  51     53     168    189    Ljava/lang/Exception;
        //  76     79     138    140    Any
        //  81     86     138    140    Any
        //  92     97     138    140    Any
        //  101    105    138    140    Any
        //  107    112    138    140    Any
        //  116    122    138    140    Any
        //  122    126    138    140    Any
        //  130    135    138    140    Any
        //  140    143    143    223    Any
        //  157    162    193    220    Any
        //  166    168    53     71     Ljava/io/FileNotFoundException;
        //  166    168    168    189    Ljava/lang/Exception;
        //  212    217    53     71     Ljava/io/FileNotFoundException;
        //  212    217    168    189    Ljava/lang/Exception;
        //  220    223    53     71     Ljava/io/FileNotFoundException;
        //  220    223    168    189    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 117, Size: 117
        //     at java.util.ArrayList.rangeCheck(Unknown Source)
        //     at java.util.ArrayList.get(Unknown Source)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3303)
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
    
    public boolean eP(final String s, final a a) {
        try {
            final File fileStreamPath = this.mContext.getFileStreamPath(s);
            try {
                a.mergeFrom(a, IOUtils.toByteArray(fileStreamPath));
                return true;
            }
            catch (Exception ex) {
                Log.e("ProtoStore", "unable to load data", (Throwable)ex);
                return false;
            }
            catch (FileNotFoundException ex2) {
                Log.d("ProtoStore", "no cached data");
                return false;
            }
        }
        catch (Exception ex3) {}
        catch (FileNotFoundException ex4) {}
    }
}
