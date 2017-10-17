// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dynamicui;

import android.app.job.JobParameters;
import android.support.v7.a.a;
import android.os.HandlerThread;
import android.os.Handler;
import android.app.job.JobService;

public class ColorExtractionService extends JobService
{
    private Handler mWorkerHandler;
    private HandlerThread mWorkerThread;
    
    private a getHotseatPalette() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: ldc             0.75
        //     2: fstore_1       
        //     3: iconst_0       
        //     4: istore_2       
        //     5: aconst_null    
        //     6: astore_3       
        //     7: aload_0        
        //     8: invokestatic    android/app/WallpaperManager.getInstance:(Landroid/content/Context;)Landroid/app/WallpaperManager;
        //    11: astore          4
        //    13: getstatic       com/android/launcher3/Utilities.ATLEAST_NOUGAT:Z
        //    16: istore          5
        //    18: iload           5
        //    20: ifeq            180
        //    23: iconst_1       
        //    24: istore          5
        //    26: aload           4
        //    28: iload           5
        //    30: invokevirtual   android/app/WallpaperManager.getWallpaperFile:(I)Landroid/os/ParcelFileDescriptor;
        //    33: astore          6
        //    35: aload           6
        //    37: invokevirtual   android/os/ParcelFileDescriptor.getFileDescriptor:()Ljava/io/FileDescriptor;
        //    40: astore          7
        //    42: iconst_0       
        //    43: istore          8
        //    45: aconst_null    
        //    46: astore          9
        //    48: aload           7
        //    50: iconst_0       
        //    51: invokestatic    android/graphics/BitmapRegionDecoder.newInstance:(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
        //    54: astore          7
        //    56: aload           7
        //    58: invokevirtual   android/graphics/BitmapRegionDecoder.getHeight:()I
        //    61: istore          8
        //    63: new             Landroid/graphics/Rect;
        //    66: astore          10
        //    68: iload           8
        //    70: i2f            
        //    71: fload_1        
        //    72: fmul           
        //    73: fstore          11
        //    75: fload           11
        //    77: f2i            
        //    78: istore          12
        //    80: aload           7
        //    82: invokevirtual   android/graphics/BitmapRegionDecoder.getWidth:()I
        //    85: istore          13
        //    87: aload           10
        //    89: iconst_0       
        //    90: iload           12
        //    92: iload           13
        //    94: iload           8
        //    96: invokespecial   android/graphics/Rect.<init>:(IIII)V
        //    99: iconst_0       
        //   100: istore          8
        //   102: aconst_null    
        //   103: astore          9
        //   105: aload           7
        //   107: aload           10
        //   109: aconst_null    
        //   110: invokevirtual   android/graphics/BitmapRegionDecoder.decodeRegion:(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
        //   113: astore          9
        //   115: aload           7
        //   117: invokevirtual   android/graphics/BitmapRegionDecoder.recycle:()V
        //   120: aload           9
        //   122: ifnull          249
        //   125: aload           9
        //   127: invokestatic    android/support/v7/a/a.adu:(Landroid/graphics/Bitmap;)Landroid/support/v7/a/c;
        //   130: astore          7
        //   132: aload           7
        //   134: invokevirtual   android/support/v7/a/c.adG:()Landroid/support/v7/a/c;
        //   137: astore          7
        //   139: aload           7
        //   141: invokevirtual   android/support/v7/a/c.adH:()Landroid/support/v7/a/a;
        //   144: astore          7
        //   146: aload           6
        //   148: ifnull          156
        //   151: aload           6
        //   153: invokevirtual   android/os/ParcelFileDescriptor.close:()V
        //   156: aload_3        
        //   157: ifnull          246
        //   160: aload_3        
        //   161: athrow         
        //   162: astore          7
        //   164: ldc             "ColorExtractionService"
        //   166: astore          6
        //   168: ldc             "Fetching partial bitmap failed, trying old method"
        //   170: astore_3       
        //   171: aload           6
        //   173: aload_3        
        //   174: aload           7
        //   176: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   179: pop            
        //   180: aload           4
        //   182: invokevirtual   android/app/WallpaperManager.getDrawable:()Landroid/graphics/drawable/Drawable;
        //   185: checkcast       Landroid/graphics/drawable/BitmapDrawable;
        //   188: invokevirtual   android/graphics/drawable/BitmapDrawable.getBitmap:()Landroid/graphics/Bitmap;
        //   191: astore          7
        //   193: aload           7
        //   195: invokestatic    android/support/v7/a/a.adu:(Landroid/graphics/Bitmap;)Landroid/support/v7/a/c;
        //   198: astore          6
        //   200: aload           7
        //   202: invokevirtual   android/graphics/Bitmap.getHeight:()I
        //   205: i2f            
        //   206: fload_1        
        //   207: fmul           
        //   208: f2i            
        //   209: istore_2       
        //   210: aload           7
        //   212: invokevirtual   android/graphics/Bitmap.getWidth:()I
        //   215: istore          14
        //   217: aload           7
        //   219: invokevirtual   android/graphics/Bitmap.getHeight:()I
        //   222: istore          5
        //   224: aload           6
        //   226: iconst_0       
        //   227: iload_2        
        //   228: iload           14
        //   230: iload           5
        //   232: invokevirtual   android/support/v7/a/c.adE:(IIII)Landroid/support/v7/a/c;
        //   235: invokevirtual   android/support/v7/a/c.adG:()Landroid/support/v7/a/c;
        //   238: invokevirtual   android/support/v7/a/c.adH:()Landroid/support/v7/a/a;
        //   241: areturn        
        //   242: astore_3       
        //   243: goto            156
        //   246: aload           7
        //   248: areturn        
        //   249: aload           6
        //   251: ifnull          259
        //   254: aload           6
        //   256: invokevirtual   android/os/ParcelFileDescriptor.close:()V
        //   259: aload_3        
        //   260: ifnull          180
        //   263: aload_3        
        //   264: athrow         
        //   265: astore_3       
        //   266: goto            259
        //   269: astore          7
        //   271: aconst_null    
        //   272: astore          6
        //   274: aload           7
        //   276: athrow         
        //   277: astore          15
        //   279: aload           7
        //   281: astore_3       
        //   282: aload           15
        //   284: astore          7
        //   286: aload           6
        //   288: ifnull          296
        //   291: aload           6
        //   293: invokevirtual   android/os/ParcelFileDescriptor.close:()V
        //   296: aload_3        
        //   297: ifnull          329
        //   300: aload_3        
        //   301: athrow         
        //   302: astore          6
        //   304: aload_3        
        //   305: ifnonnull       314
        //   308: aload           6
        //   310: astore_3       
        //   311: goto            296
        //   314: aload_3        
        //   315: aload           6
        //   317: if_acmpeq       296
        //   320: aload_3        
        //   321: aload           6
        //   323: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   326: goto            296
        //   329: aload           7
        //   331: athrow         
        //   332: astore          7
        //   334: goto            274
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                            
        //  -----  -----  -----  -----  --------------------------------
        //  28     33     269    274    Any
        //  35     40     332    337    Any
        //  50     54     332    337    Any
        //  56     61     332    337    Any
        //  63     66     332    337    Any
        //  80     85     332    337    Any
        //  94     99     332    337    Any
        //  109    113    332    337    Any
        //  115    120    332    337    Any
        //  125    130    332    337    Any
        //  132    137    332    337    Any
        //  139    144    332    337    Any
        //  151    156    242    246    Any
        //  160    162    162    180    Ljava/io/IOException;
        //  160    162    162    180    Ljava/lang/NullPointerException;
        //  254    259    265    269    Any
        //  263    265    162    180    Ljava/io/IOException;
        //  263    265    162    180    Ljava/lang/NullPointerException;
        //  274    277    277    332    Any
        //  291    296    302    329    Any
        //  300    302    162    180    Ljava/io/IOException;
        //  300    302    162    180    Ljava/lang/NullPointerException;
        //  321    326    162    180    Ljava/io/IOException;
        //  321    326    162    180    Ljava/lang/NullPointerException;
        //  329    332    162    180    Ljava/io/IOException;
        //  329    332    162    180    Ljava/lang/NullPointerException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0156:
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
    
    private a getWallpaperPalette() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore_1       
        //     2: aload_0        
        //     3: invokestatic    android/app/WallpaperManager.getInstance:(Landroid/content/Context;)Landroid/app/WallpaperManager;
        //     6: astore_2       
        //     7: getstatic       com/android/launcher3/Utilities.ATLEAST_NOUGAT:Z
        //    10: istore_3       
        //    11: iload_3        
        //    12: ifeq            98
        //    15: iconst_1       
        //    16: istore_3       
        //    17: aload_2        
        //    18: iload_3        
        //    19: invokevirtual   android/app/WallpaperManager.getWallpaperFile:(I)Landroid/os/ParcelFileDescriptor;
        //    22: astore          4
        //    24: aload           4
        //    26: invokevirtual   android/os/ParcelFileDescriptor.getFileDescriptor:()Ljava/io/FileDescriptor;
        //    29: astore          5
        //    31: aload           5
        //    33: invokestatic    android/graphics/BitmapFactory.decodeFileDescriptor:(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
        //    36: astore          5
        //    38: aload           5
        //    40: ifnull          125
        //    43: aload           5
        //    45: invokestatic    android/support/v7/a/a.adu:(Landroid/graphics/Bitmap;)Landroid/support/v7/a/c;
        //    48: astore          5
        //    50: aload           5
        //    52: invokevirtual   android/support/v7/a/c.adG:()Landroid/support/v7/a/c;
        //    55: astore          5
        //    57: aload           5
        //    59: invokevirtual   android/support/v7/a/c.adH:()Landroid/support/v7/a/a;
        //    62: astore          5
        //    64: aload           4
        //    66: ifnull          74
        //    69: aload           4
        //    71: invokevirtual   android/os/ParcelFileDescriptor.close:()V
        //    74: aload_1        
        //    75: ifnull          122
        //    78: aload_1        
        //    79: athrow         
        //    80: astore          5
        //    82: ldc             "ColorExtractionService"
        //    84: astore          4
        //    86: ldc             "Fetching partial bitmap failed, trying old method"
        //    88: astore_1       
        //    89: aload           4
        //    91: aload_1        
        //    92: aload           5
        //    94: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //    97: pop            
        //    98: aload_2        
        //    99: invokevirtual   android/app/WallpaperManager.getDrawable:()Landroid/graphics/drawable/Drawable;
        //   102: checkcast       Landroid/graphics/drawable/BitmapDrawable;
        //   105: invokevirtual   android/graphics/drawable/BitmapDrawable.getBitmap:()Landroid/graphics/Bitmap;
        //   108: invokestatic    android/support/v7/a/a.adu:(Landroid/graphics/Bitmap;)Landroid/support/v7/a/c;
        //   111: invokevirtual   android/support/v7/a/c.adG:()Landroid/support/v7/a/c;
        //   114: invokevirtual   android/support/v7/a/c.adH:()Landroid/support/v7/a/a;
        //   117: areturn        
        //   118: astore_1       
        //   119: goto            74
        //   122: aload           5
        //   124: areturn        
        //   125: aload           4
        //   127: ifnull          135
        //   130: aload           4
        //   132: invokevirtual   android/os/ParcelFileDescriptor.close:()V
        //   135: aload_1        
        //   136: ifnull          98
        //   139: aload_1        
        //   140: athrow         
        //   141: astore_1       
        //   142: goto            135
        //   145: astore          5
        //   147: aconst_null    
        //   148: astore          4
        //   150: aload           5
        //   152: athrow         
        //   153: astore          6
        //   155: aload           5
        //   157: astore_1       
        //   158: aload           6
        //   160: astore          5
        //   162: aload           4
        //   164: ifnull          172
        //   167: aload           4
        //   169: invokevirtual   android/os/ParcelFileDescriptor.close:()V
        //   172: aload_1        
        //   173: ifnull          205
        //   176: aload_1        
        //   177: athrow         
        //   178: astore          4
        //   180: aload_1        
        //   181: ifnonnull       190
        //   184: aload           4
        //   186: astore_1       
        //   187: goto            172
        //   190: aload_1        
        //   191: aload           4
        //   193: if_acmpeq       172
        //   196: aload_1        
        //   197: aload           4
        //   199: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   202: goto            172
        //   205: aload           5
        //   207: athrow         
        //   208: astore          5
        //   210: goto            150
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                            
        //  -----  -----  -----  -----  --------------------------------
        //  18     22     145    150    Any
        //  24     29     208    213    Any
        //  31     36     208    213    Any
        //  43     48     208    213    Any
        //  50     55     208    213    Any
        //  57     62     208    213    Any
        //  69     74     118    122    Any
        //  78     80     80     98     Ljava/io/IOException;
        //  78     80     80     98     Ljava/lang/NullPointerException;
        //  130    135    141    145    Any
        //  139    141    80     98     Ljava/io/IOException;
        //  139    141    80     98     Ljava/lang/NullPointerException;
        //  150    153    153    208    Any
        //  167    172    178    205    Any
        //  176    178    80     98     Ljava/io/IOException;
        //  176    178    80     98     Ljava/lang/NullPointerException;
        //  197    202    80     98     Ljava/io/IOException;
        //  197    202    80     98     Ljava/lang/NullPointerException;
        //  205    208    80     98     Ljava/io/IOException;
        //  205    208    80     98     Ljava/lang/NullPointerException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0074:
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
    
    public void onCreate() {
        super.onCreate();
        (this.mWorkerThread = new HandlerThread("ColorExtractionService")).start();
        this.mWorkerHandler = new Handler(this.mWorkerThread.getLooper());
    }
    
    public void onDestroy() {
        super.onDestroy();
        this.mWorkerThread.quit();
    }
    
    public boolean onStartJob(final JobParameters jobParameters) {
        this.mWorkerHandler.post((Runnable)new ColorExtractionService$1(this, jobParameters));
        return true;
    }
    
    public boolean onStopJob(final JobParameters jobParameters) {
        this.mWorkerHandler.removeCallbacksAndMessages((Object)null);
        return true;
    }
}
