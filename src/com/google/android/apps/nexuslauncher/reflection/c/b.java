// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.c;

import java.io.Closeable;
import com.android.launcher3.Utilities;
import android.util.Log;
import java.io.IOException;
import java.io.EOFException;
import com.google.protobuf.nano.c;
import java.io.InputStream;
import java.io.FileInputStream;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.util.ArrayList;
import com.android.launcher3.util.Preconditions;
import java.util.Arrays;
import com.google.android.apps.nexuslauncher.reflection.f.j;
import java.util.List;
import java.io.File;

public class b
{
    private final long l;
    private final File m;
    
    public b(final File m, final long l) {
        this.m = m;
        this.l = l;
    }
    
    private void y() {
        if (this.m.exists() && this.m.length() > this.l) {
            final List z = this.z();
            if (this.m.delete()) {
                this.log(z.subList(z.size() / 2, z.size()));
            }
        }
    }
    
    public void A(final j j) {
        // monitorenter(this)
        final int n = 1;
        try {
            final j[] array = new j[n];
            array[0] = j;
            this.log(Arrays.asList(array));
            this.y();
        }
        finally {
        }
        // monitorexit(this)
    }
    
    void log(final List p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     1: astore_2       
        //     2: invokestatic    com/android/launcher3/util/Preconditions.assertNonUiThread:()V
        //     5: new             Ljava/io/DataOutputStream;
        //     8: astore_3       
        //     9: new             Ljava/io/BufferedOutputStream;
        //    12: astore          4
        //    14: new             Ljava/io/FileOutputStream;
        //    17: astore          5
        //    19: aload_0        
        //    20: getfield        com/google/android/apps/nexuslauncher/reflection/c/b.m:Ljava/io/File;
        //    23: astore          6
        //    25: iconst_1       
        //    26: istore          7
        //    28: aload           5
        //    30: aload           6
        //    32: iload           7
        //    34: invokespecial   java/io/FileOutputStream.<init>:(Ljava/io/File;Z)V
        //    37: aload           4
        //    39: aload           5
        //    41: invokespecial   java/io/BufferedOutputStream.<init>:(Ljava/io/OutputStream;)V
        //    44: aload_3        
        //    45: aload           4
        //    47: invokespecial   java/io/DataOutputStream.<init>:(Ljava/io/OutputStream;)V
        //    50: aload_1        
        //    51: invokeinterface java/lang/Iterable.iterator:()Ljava/util/Iterator;
        //    56: astore          5
        //    58: aload           5
        //    60: invokeinterface java/util/Iterator.hasNext:()Z
        //    65: istore          8
        //    67: iload           8
        //    69: ifeq            173
        //    72: aload           5
        //    74: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //    79: astore          4
        //    81: aload           4
        //    83: checkcast       Lcom/google/android/apps/nexuslauncher/reflection/f/j;
        //    86: astore          4
        //    88: aload           4
        //    90: invokevirtual   com/google/android/apps/nexuslauncher/reflection/f/j.getSerializedSize:()I
        //    93: istore          9
        //    95: aload_2        
        //    96: ifnull          110
        //    99: aload_2        
        //   100: arraylength    
        //   101: istore          7
        //   103: iload           7
        //   105: iload           9
        //   107: if_icmpge       115
        //   110: iload           9
        //   112: newarray        B
        //   114: astore_2       
        //   115: iconst_0       
        //   116: istore          7
        //   118: aload           4
        //   120: aload_2        
        //   121: iconst_0       
        //   122: iload           9
        //   124: invokestatic    com/google/protobuf/nano/a.toByteArray:(Lcom/google/protobuf/nano/a;[BII)V
        //   127: aload_3        
        //   128: iload           9
        //   130: invokevirtual   java/io/DataOutputStream.writeInt:(I)V
        //   133: iconst_0       
        //   134: istore          8
        //   136: aconst_null    
        //   137: astore          4
        //   139: aload_3        
        //   140: aload_2        
        //   141: iconst_0       
        //   142: iload           9
        //   144: invokevirtual   java/io/DataOutputStream.write:([BII)V
        //   147: goto            58
        //   150: astore          4
        //   152: ldc             "Reflection.ClientActLog"
        //   154: astore_2       
        //   155: ldc             "Failed to write the client action log file"
        //   157: astore          5
        //   159: aload_2        
        //   160: aload           5
        //   162: aload           4
        //   164: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   167: pop            
        //   168: aload_3        
        //   169: invokestatic    com/android/launcher3/Utilities.closeSilently:(Ljava/io/Closeable;)V
        //   172: return         
        //   173: aload_3        
        //   174: invokestatic    com/android/launcher3/Utilities.closeSilently:(Ljava/io/Closeable;)V
        //   177: goto            172
        //   180: astore          4
        //   182: aconst_null    
        //   183: astore_3       
        //   184: aload_3        
        //   185: invokestatic    com/android/launcher3/Utilities.closeSilently:(Ljava/io/Closeable;)V
        //   188: aload           4
        //   190: athrow         
        //   191: astore          4
        //   193: goto            184
        //   196: astore          4
        //   198: aconst_null    
        //   199: astore_3       
        //   200: goto            152
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  5      8      196    203    Ljava/io/IOException;
        //  5      8      180    184    Any
        //  9      12     196    203    Ljava/io/IOException;
        //  9      12     180    184    Any
        //  14     17     196    203    Ljava/io/IOException;
        //  14     17     180    184    Any
        //  19     23     196    203    Ljava/io/IOException;
        //  19     23     180    184    Any
        //  32     37     196    203    Ljava/io/IOException;
        //  32     37     180    184    Any
        //  39     44     196    203    Ljava/io/IOException;
        //  39     44     180    184    Any
        //  45     50     196    203    Ljava/io/IOException;
        //  45     50     180    184    Any
        //  50     56     150    152    Ljava/io/IOException;
        //  50     56     191    196    Any
        //  58     65     150    152    Ljava/io/IOException;
        //  58     65     191    196    Any
        //  72     79     150    152    Ljava/io/IOException;
        //  72     79     191    196    Any
        //  81     86     150    152    Ljava/io/IOException;
        //  81     86     191    196    Any
        //  88     93     150    152    Ljava/io/IOException;
        //  88     93     191    196    Any
        //  99     101    150    152    Ljava/io/IOException;
        //  99     101    191    196    Any
        //  110    114    150    152    Ljava/io/IOException;
        //  110    114    191    196    Any
        //  122    127    150    152    Ljava/io/IOException;
        //  122    127    191    196    Any
        //  128    133    150    152    Ljava/io/IOException;
        //  128    133    191    196    Any
        //  142    147    150    152    Ljava/io/IOException;
        //  142    147    191    196    Any
        //  162    168    191    196    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0152:
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
    
    public List z() {
        // monitorenter(this)
        while (true) {
            ArrayList<j> list;
            c fy = null;
            try {
                Preconditions.assertNonUiThread();
                list = new ArrayList<j>();
                try {
                    final DataInputStream dataInputStream = new(java.io.DataInputStream.class);
                    try {
                        final BufferedInputStream bufferedInputStream = new(java.io.BufferedInputStream.class);
                        try {
                            try {
                                final FileInputStream fileInputStream = new FileInputStream(this.m);
                                final BufferedInputStream bufferedInputStream2 = bufferedInputStream;
                                try {
                                    new BufferedInputStream(fileInputStream);
                                    final DataInputStream dataInputStream2 = dataInputStream;
                                    try {
                                        new DataInputStream(bufferedInputStream);
                                        Object o = null;
                                        try {
                                            while (true) {
                                                final int int1 = dataInputStream.readInt();
                                                if (o == null || ((Throwable)o).length < int1) {
                                                    o = new byte[int1];
                                                }
                                                dataInputStream.read((byte[])o, 0, int1);
                                                fy = c.FY((byte[])o, 0, int1);
                                                try {
                                                    final c c = fy;
                                                    final j j = com.google.android.apps.nexuslauncher.reflection.f.j.aF(c);
                                                    final j k;
                                                    final j i = k = j;
                                                    if (k != null) {
                                                        final ArrayList<j> list2 = list;
                                                        final j l = i;
                                                        list2.add(l);
                                                        continue;
                                                    }
                                                    continue;
                                                }
                                                catch (EOFException ex) {}
                                                catch (IOException ex2) {}
                                            }
                                        }
                                        catch (EOFException ex3) {}
                                        catch (IOException ex4) {}
                                    }
                                    catch (IOException ex5) {}
                                    catch (EOFException ex6) {}
                                }
                                catch (IOException ex7) {}
                                catch (EOFException ex8) {}
                            }
                            catch (IOException ex9) {}
                            catch (EOFException ex10) {}
                        }
                        catch (IOException ex11) {}
                        catch (EOFException ex12) {}
                    }
                    catch (IOException ex13) {}
                    catch (EOFException ex14) {}
                }
                catch (IOException ex15) {}
                catch (EOFException ex16) {}
            }
            finally {}
            try {
                final c c = fy;
                final j j = com.google.android.apps.nexuslauncher.reflection.f.j.aF(c);
                final j k;
                final j i = k = j;
                if (k != null) {
                    final ArrayList<j> list2 = list;
                    final j l = i;
                    list2.add(l);
                    continue;
                }
                continue;
                final Object o;
                Log.e("Reflection.ClientActLog", "Failed in loading the log file", (Throwable)o);
                final DataInputStream dataInputStream;
                Utilities.closeSilently(dataInputStream);
                return list;
            }
            finally {}
            break;
        }
    }
}
