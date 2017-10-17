// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.data;

import java.io.OutputStream;
import java.io.DataOutputStream;
import android.os.Parcel;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import android.graphics.Bitmap$Config;
import java.io.InputStream;
import java.io.DataInputStream;
import android.os.ParcelFileDescriptor$AutoCloseInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import android.util.Log;
import java.io.Closeable;
import android.graphics.Bitmap;
import java.io.File;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public class BitmapTeleporter extends AbstractSafeParcelable implements ReflectedParcelable
{
    public static final Parcelable$Creator CREATOR;
    ParcelFileDescriptor jS;
    final int jT;
    private boolean jU;
    private File jV;
    final int jW;
    private Bitmap jX;
    
    static {
        CREATOR = (Parcelable$Creator)new g();
    }
    
    BitmapTeleporter(final int jt, final ParcelFileDescriptor js, final int jw) {
        this.jT = jt;
        this.jS = js;
        this.jW = jw;
        this.jX = null;
        this.jU = false;
    }
    
    private void mY(final Closeable closeable) {
        try {
            closeable.close();
        }
        catch (IOException ex) {
            Log.w("BitmapTeleporter", "Could not close stream", (Throwable)ex);
        }
    }
    
    private FileOutputStream mZ() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/google/android/gms/common/data/BitmapTeleporter.jV:Ljava/io/File;
        //     4: astore_1       
        //     5: aload_1        
        //     6: ifnull          59
        //     9: aload_0        
        //    10: getfield        com/google/android/gms/common/data/BitmapTeleporter.jV:Ljava/io/File;
        //    13: astore_1       
        //    14: ldc             "teleporter"
        //    16: astore_2       
        //    17: ldc             ".tmp"
        //    19: astore_3       
        //    20: aload_2        
        //    21: aload_3        
        //    22: aload_1        
        //    23: invokestatic    java/io/File.createTempFile:(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
        //    26: astore_1       
        //    27: new             Ljava/io/FileOutputStream;
        //    30: astore_2       
        //    31: aload_2        
        //    32: aload_1        
        //    33: invokespecial   java/io/FileOutputStream.<init>:(Ljava/io/File;)V
        //    36: ldc             268435456
        //    38: istore          4
        //    40: aload_1        
        //    41: iload           4
        //    43: invokestatic    android/os/ParcelFileDescriptor.open:(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
        //    46: astore_3       
        //    47: aload_0        
        //    48: aload_3        
        //    49: putfield        com/google/android/gms/common/data/BitmapTeleporter.jS:Landroid/os/ParcelFileDescriptor;
        //    52: aload_1        
        //    53: invokevirtual   java/io/File.delete:()Z
        //    56: pop            
        //    57: aload_2        
        //    58: areturn        
        //    59: new             Ljava/lang/IllegalStateException;
        //    62: astore_1       
        //    63: aload_1        
        //    64: ldc             "setTempDir() must be called before writing this object to a parcel"
        //    66: invokespecial   java/lang/IllegalStateException.<init>:(Ljava/lang/String;)V
        //    69: aload_1        
        //    70: athrow         
        //    71: astore_1       
        //    72: new             Ljava/lang/IllegalStateException;
        //    75: astore_2       
        //    76: aload_2        
        //    77: ldc             "Could not create temporary file"
        //    79: aload_1        
        //    80: invokespecial   java/lang/IllegalStateException.<init>:(Ljava/lang/String;Ljava/lang/Throwable;)V
        //    83: aload_2        
        //    84: athrow         
        //    85: astore_1       
        //    86: new             Ljava/lang/IllegalStateException;
        //    89: astore_1       
        //    90: aload_1        
        //    91: ldc             "Temporary file is somehow already deleted"
        //    93: invokespecial   java/lang/IllegalStateException.<init>:(Ljava/lang/String;)V
        //    96: aload_1        
        //    97: athrow         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                           
        //  -----  -----  -----  -----  -------------------------------
        //  9      13     71     85     Ljava/io/IOException;
        //  22     26     71     85     Ljava/io/IOException;
        //  27     30     85     98     Ljava/io/FileNotFoundException;
        //  32     36     85     98     Ljava/io/FileNotFoundException;
        //  41     46     85     98     Ljava/io/FileNotFoundException;
        //  48     52     85     98     Ljava/io/FileNotFoundException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0059:
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
    
    public Bitmap get() {
        if (!this.jU) {
            Object bitmap = new DataInputStream((InputStream)new ParcelFileDescriptor$AutoCloseInputStream(this.jS));
            try {
                final int int1 = ((DataInputStream)bitmap).readInt();
                try {
                    final byte[] array = new byte[int1];
                    try {
                        final int int2 = ((DataInputStream)bitmap).readInt();
                        try {
                            final int int3 = ((DataInputStream)bitmap).readInt();
                            try {
                                final String utf = ((DataInputStream)bitmap).readUTF();
                                try {
                                    final Bitmap$Config value = Bitmap$Config.valueOf(utf);
                                    ((DataInputStream)bitmap).read(array);
                                    this.mY((Closeable)bitmap);
                                    final ByteBuffer wrap = ByteBuffer.wrap(array);
                                    bitmap = Bitmap.createBitmap(int2, int3, value);
                                    ((Bitmap)bitmap).copyPixelsFromBuffer((Buffer)wrap);
                                    this.jX = (Bitmap)bitmap;
                                    this.jU = true;
                                }
                                catch (IOException ex) {
                                    throw new IllegalStateException("Could not read from parcel file descriptor", ex);
                                }
                            }
                            catch (IOException ex2) {}
                        }
                        catch (IOException ex3) {}
                    }
                    catch (IOException ex4) {}
                }
                catch (IOException ex5) {}
            }
            catch (IOException ex6) {}
            finally {
                this.mY((Closeable)bitmap);
            }
        }
        return this.jX;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        if (this.jS == null) {
            final Bitmap jx = this.jX;
            final ByteBuffer allocate = ByteBuffer.allocate(jx.getRowBytes() * jx.getHeight());
            jx.copyPixelsToBuffer((Buffer)allocate);
            final byte[] array = allocate.array();
            final DataOutputStream dataOutputStream = new DataOutputStream(this.mZ());
            try {
                dataOutputStream.writeInt(array.length);
                dataOutputStream.writeInt(jx.getWidth());
                dataOutputStream.writeInt(jx.getHeight());
                final Bitmap$Config config = jx.getConfig();
                try {
                    dataOutputStream.writeUTF(config.toString());
                    final DataOutputStream dataOutputStream2 = dataOutputStream;
                    try {
                        dataOutputStream2.write(array);
                    }
                    catch (IOException ex) {
                        throw new IllegalStateException("Could not write into unlinked file", ex);
                    }
                }
                catch (IOException ex2) {}
            }
            catch (IOException ex3) {}
            finally {
                this.mY(dataOutputStream);
            }
        }
        g.np(this, parcel, n | 0x1);
        this.jS = null;
    }
}
