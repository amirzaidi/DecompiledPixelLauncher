.class public Lcom/android/launcher3/compat/WallpaperManagerCompatVL$ColorExtractionService;
.super Landroid/app/job/JobService;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final MAX_WALLPAPER_EXTRACTION_AREA:I = 0x3100


# instance fields
.field private mWorkerHandler:Landroid/os/Handler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 178
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ColorExtractionService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$ColorExtractionService;->mWorkerThread:Landroid/os/HandlerThread;

    .line 179
    iget-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$ColorExtractionService;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 180
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$ColorExtractionService;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$ColorExtractionService;->mWorkerHandler:Landroid/os/Handler;

    .line 181
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    .line 186
    iget-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$ColorExtractionService;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 187
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$ColorExtractionService;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$ColorExtractionService;->mWorkerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 19

    .prologue
    .line 206
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->-wrap0(Landroid/content/Context;)I

    move-result v7

    .line 208
    const/4 v4, 0x0

    .line 209
    const/4 v6, 0x0

    .line 211
    invoke-static/range {p0 .. p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v8

    .line 212
    invoke-virtual {v8}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v2

    .line 213
    if-eqz v2, :cond_2

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$ColorExtractionService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v18, v2

    move-object v2, v4

    move-object/from16 v4, v18

    .line 244
    :goto_0
    if-eqz v4, :cond_1

    .line 247
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 248
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 247
    mul-int v5, v2, v3

    .line 249
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 250
    const/16 v6, 0x3100

    if-le v5, v6, :cond_0

    .line 251
    int-to-double v2, v5

    const-wide v8, 0x40c8800000000000L    # 12544.0

    div-double v2, v8, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 253
    :cond_0
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-double v8, v5

    mul-double/2addr v8, v2

    double-to-int v5, v8

    .line 254
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-double v8, v6

    mul-double/2addr v2, v8

    double-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 253
    invoke-static {v5, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 255
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 256
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 257
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 260
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "1,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 262
    if-eqz v2, :cond_b

    .line 263
    invoke-static {v2}, Landroid/support/v7/a/a;->adu(Landroid/graphics/Bitmap;)Landroid/support/v7/a/c;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/a/c;->adH()Landroid/support/v7/a/a;

    move-result-object v4

    .line 264
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 266
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 268
    invoke-virtual {v4}, Landroid/support/v7/a/a;->adr()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/a/d;

    .line 269
    new-instance v4, Landroid/util/Pair;

    invoke-virtual {v2}, Landroid/support/v7/a/d;->adM()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2}, Landroid/support/v7/a/d;->adK()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v4, v7, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 217
    :cond_2
    sget-boolean v2, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT:Z

    if-eqz v2, :cond_5

    .line 218
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v8, v2}, Landroid/app/WallpaperManager;->getWallpaperFile(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 220
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v9, 0x0

    .line 219
    invoke-static {v2, v9}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    .line 222
    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v10

    mul-int/2addr v9, v10

    .line 223
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 225
    const/16 v11, 0x3100

    if-le v9, v11, :cond_3

    .line 227
    int-to-double v12, v9

    const-wide v14, 0x40c8800000000000L    # 12544.0

    div-double/2addr v12, v14

    .line 229
    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v14, v14, v16

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    .line 230
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-int v9, v12

    iput v9, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 232
    :cond_3
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v11

    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v9, v13, v14, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 233
    invoke-virtual {v2, v9, v10}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 234
    :try_start_1
    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->recycle()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 237
    if-eqz v3, :cond_4

    :try_start_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    :goto_2
    if-eqz v5, :cond_5

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    .line 235
    :catch_0
    move-exception v2

    move-object v5, v4

    .line 236
    :goto_3
    const-string/jumbo v3, "WMCompatVL"

    const-string/jumbo v4, "Fetching partial bitmap failed, trying old method"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v5

    .line 239
    :cond_5
    if-nez v4, :cond_c

    .line 240
    invoke-virtual {v8}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v18, v2

    move-object v2, v4

    move-object/from16 v4, v18

    goto/16 :goto_0

    .line 237
    :catch_1
    move-exception v5

    goto :goto_2

    :catch_2
    move-exception v2

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v5

    move-object/from16 v18, v5

    move-object v5, v4

    move-object v4, v2

    move-object/from16 v2, v18

    :goto_4
    if-eqz v3, :cond_6

    :try_start_5
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_6
    :goto_5
    if-eqz v4, :cond_8

    :try_start_6
    throw v4

    .line 235
    :catch_3
    move-exception v2

    goto :goto_3

    .line 237
    :catch_4
    move-exception v3

    if-nez v4, :cond_7

    move-object v4, v3

    goto :goto_5

    :cond_7
    if-eq v4, v3, :cond_6

    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_8
    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_3

    .line 272
    :cond_9
    new-instance v2, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$ColorExtractionService$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$ColorExtractionService$1;-><init>(Lcom/android/launcher3/compat/WallpaperManagerCompatVL$ColorExtractionService;)V

    invoke-static {v6, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 279
    const/4 v2, 0x0

    move v3, v2

    :goto_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x3

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v3, v2, :cond_a

    .line 280
    const/16 v2, 0x2c

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 279
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    .line 283
    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 287
    :goto_7
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.launcher3.compat.WallpaperManagerCompatVL.EXTRACTION_COMPLETE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$ColorExtractionService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 287
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 289
    const-string/jumbo v4, "wallpaper_parsed_colors"

    .line 287
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$ColorExtractionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 290
    return-void

    .line 237
    :catchall_1
    move-exception v2

    move-object/from16 v18, v5

    move-object v5, v4

    move-object/from16 v4, v18

    goto :goto_4

    :catchall_2
    move-exception v2

    move-object/from16 v18, v5

    move-object v5, v4

    move-object/from16 v4, v18

    goto :goto_4

    :cond_b
    move-object v2, v3

    goto :goto_7

    :cond_c
    move-object v2, v4

    move-object v4, v6

    goto/16 :goto_0
.end method
