.class public Lcom/android/launcher3/WidgetPreviewLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDb:Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;

.field private final mIconCache:Lcom/android/launcher3/IconCache;

.field private final mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

.field private final mPackageVersions:Ljava/util/HashMap;

.field final mUnusedBitmaps:Ljava/util/Set;

.field private final mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

.field private final mWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

.field final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -wrap0(Lcom/android/launcher3/WidgetPreviewLoader;Lcom/android/launcher3/BaseActivity;Lcom/android/launcher3/model/WidgetItem;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/WidgetPreviewLoader;->generatePreview(Lcom/android/launcher3/BaseActivity;Lcom/android/launcher3/model/WidgetItem;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/IconCache;)V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    .line 69
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    .line 77
    new-instance v0, Lcom/android/launcher3/MainThreadExecutor;

    invoke-direct {v0}, Lcom/android/launcher3/MainThreadExecutor;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

    .line 81
    iput-object p1, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 83
    invoke-static {p1}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    .line 84
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 85
    new-instance v0, Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;

    invoke-direct {v0, p1}, Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mDb:Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mWorkerHandler:Landroid/os/Handler;

    .line 87
    return-void
.end method

.method private drawBoxWithShadow(Landroid/graphics/Canvas;II)Landroid/graphics/RectF;
    .locals 7

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 436
    new-instance v1, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;-><init>(I)V

    .line 437
    const v2, 0x7f0b004c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, v1, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->shadowBlur:F

    .line 438
    const v2, 0x7f0b004e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, v1, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->radius:F

    .line 439
    const v2, 0x7f0b004d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, v1, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->keyShadowDistance:F

    .line 441
    iget-object v0, v1, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    iget v2, v1, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->shadowBlur:F

    iget v3, v1, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->shadowBlur:F

    .line 442
    int-to-float v4, p2

    iget v5, v1, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->shadowBlur:F

    sub-float/2addr v4, v5

    .line 443
    int-to-float v5, p3

    iget v6, v1, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->shadowBlur:F

    sub-float/2addr v5, v6

    iget v6, v1, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->keyShadowDistance:F

    sub-float/2addr v5, v6

    .line 441
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 444
    invoke-virtual {v1, p1}, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->drawShadow(Landroid/graphics/Canvas;)V

    .line 445
    iget-object v0, v1, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method private generatePreview(Lcom/android/launcher3/BaseActivity;Lcom/android/launcher3/model/WidgetItem;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 293
    iget-object v0, p2, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    .line 294
    iget-object v2, p2, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/WidgetPreviewLoader;->generateWidgetPreview(Lcom/android/launcher3/BaseActivity;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;ILandroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 297
    :cond_0
    iget-object v2, p2, Lcom/android/launcher3/model/WidgetItem;->activityInfo:Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/WidgetPreviewLoader;->generateShortcutPreview(Lcom/android/launcher3/BaseActivity;Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private generateShortcutPreview(Lcom/android/launcher3/BaseActivity;Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    .line 450
    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 451
    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 452
    const v2, 0x7f0b0050

    .line 451
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 454
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    .line 455
    if-lt p4, v2, :cond_0

    if-ge p3, v2, :cond_1

    .line 456
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Max size is too small for preview"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_1
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    .line 459
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ge v4, v2, :cond_3

    .line 460
    :cond_2
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p5

    .line 461
    invoke-virtual {v3, p5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 471
    :goto_0
    invoke-direct {p0, v3, v2, v2}, Lcom/android/launcher3/WidgetPreviewLoader;->drawBoxWithShadow(Landroid/graphics/Canvas;II)Landroid/graphics/RectF;

    move-result-object v2

    .line 474
    iget-object v4, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {p2, v4}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;->getFullResIcon(Lcom/android/launcher3/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/WidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    .line 473
    invoke-static {v4, v5, v6}, Lcom/android/launcher3/graphics/LauncherIcons;->createScaledBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 475
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v8, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 477
    const/4 v6, 0x0

    const/4 v7, 0x0

    int-to-float v8, v0

    int-to-float v0, v0

    invoke-virtual {v2, v6, v7, v8, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 478
    int-to-float v0, v1

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 480
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 479
    invoke-virtual {v3, v4, v5, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 481
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 482
    return-object p5

    .line 459
    :cond_3
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-lt v4, v2, :cond_2

    .line 463
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-gt v4, v2, :cond_4

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v4, v2, :cond_5

    .line 464
    :cond_4
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-virtual {p5, v2, v2, v4}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 468
    :cond_5
    invoke-virtual {v3, p5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 469
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

    new-instance v1, Lcom/android/launcher3/WidgetPreviewLoader$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/WidgetPreviewLoader$1;-><init>(Lcom/android/launcher3/WidgetPreviewLoader;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/MainThreadExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 496
    :catch_0
    move-exception v0

    .line 497
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 493
    :catch_1
    move-exception v0

    .line 494
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 495
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private removePackage(Ljava/lang/String;Landroid/os/UserHandle;J)V
    .locals 5

    .prologue
    .line 161
    iget-object v1, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    monitor-enter v1

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 165
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mDb:Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;

    .line 166
    const-string/jumbo v1, "packageName = ? AND profileId = ?"

    .line 167
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 165
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;->delete(Ljava/lang/String;[Ljava/lang/String;)V

    .line 168
    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public generateWidgetPreview(Lcom/android/launcher3/BaseActivity;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;ILandroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;
    .locals 16

    .prologue
    .line 316
    if-gez p3, :cond_0

    const p3, 0x7fffffff

    .line 318
    :cond_0
    const/4 v2, 0x0

    .line 319
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->previewImage:I

    if-eqz v3, :cond_d

    .line 321
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->loadPreviewImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 328
    :goto_0
    if-eqz v2, :cond_2

    .line 329
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/WidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v6, v2

    .line 336
    :goto_1
    if-eqz v6, :cond_3

    const/4 v2, 0x1

    move v3, v2

    .line 337
    :goto_2
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->spanX:I

    .line 338
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->spanY:I

    .line 343
    if-eqz v3, :cond_4

    .line 344
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 345
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 355
    :goto_3
    const/high16 v5, 0x3f800000    # 1.0f

    .line 356
    if-eqz p5, :cond_1

    .line 357
    const/4 v7, 0x0

    aput v4, p5, v7

    .line 359
    :cond_1
    move/from16 v0, p3

    if-le v4, v0, :cond_c

    .line 360
    move/from16 v0, p3

    int-to-float v5, v0

    int-to-float v7, v4

    div-float/2addr v5, v7

    move v11, v5

    .line 362
    :goto_4
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v11, v5

    if-eqz v5, :cond_b

    .line 363
    int-to-float v4, v4

    mul-float/2addr v4, v11

    float-to-int v4, v4

    .line 364
    int-to-float v2, v2

    mul-float/2addr v2, v11

    float-to-int v2, v2

    move v8, v2

    move v9, v4

    .line 368
    :goto_5
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 369
    if-nez p4, :cond_5

    .line 370
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 371
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 385
    :goto_6
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, v9

    div-int/lit8 v4, v4, 0x2

    .line 386
    if-eqz v3, :cond_7

    .line 387
    add-int v3, v4, v9

    const/4 v5, 0x0

    invoke-virtual {v6, v4, v5, v3, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 388
    invoke-virtual {v6, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 430
    :goto_7
    return-object p4

    .line 322
    :catch_0
    move-exception v2

    .line 323
    const-string/jumbo v3, "WidgetPreviewLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error loading widget preview for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 331
    :cond_2
    const-string/jumbo v3, "WidgetPreviewLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t load widget preview drawable 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 332
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->previewImage:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 331
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 332
    const-string/jumbo v5, " for provider: "

    .line 331
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 332
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 331
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v2

    goto/16 :goto_1

    .line 336
    :cond_3
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_2

    .line 347
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    .line 348
    iget v4, v2, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 349
    mul-int v4, v2, v12

    .line 350
    mul-int/2addr v2, v13

    goto/16 :goto_3

    .line 376
    :cond_5
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v4, v8, :cond_6

    .line 377
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v8, v5}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 380
    :cond_6
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 381
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_6

    .line 390
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v8}, Lcom/android/launcher3/WidgetPreviewLoader;->drawBoxWithShadow(Landroid/graphics/Canvas;II)Landroid/graphics/RectF;

    move-result-object v14

    .line 393
    new-instance v7, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v7, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 394
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 396
    const v4, 0x7f0b004f

    .line 395
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 397
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 399
    iget v4, v14, Landroid/graphics/RectF;->left:F

    .line 400
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v3

    int-to-float v5, v12

    div-float v15, v3, v5

    .line 401
    const/4 v3, 0x1

    move v10, v3

    move v3, v4

    :goto_8
    if-ge v10, v12, :cond_8

    .line 402
    add-float/2addr v3, v15

    .line 403
    const/4 v4, 0x0

    int-to-float v6, v8

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 401
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_8

    .line 406
    :cond_8
    iget v4, v14, Landroid/graphics/RectF;->top:F

    .line 407
    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v3

    int-to-float v5, v13

    div-float v12, v3, v5

    .line 408
    const/4 v3, 0x1

    move v10, v3

    :goto_9
    if-ge v10, v13, :cond_9

    .line 409
    add-float/2addr v4, v12

    .line 410
    const/4 v3, 0x0

    int-to-float v5, v9

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 408
    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto :goto_9

    .line 415
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mIconCache:Lcom/android/launcher3/IconCache;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getIcon(Landroid/content/Context;Lcom/android/launcher3/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 416
    if-eqz v3, :cond_a

    .line 417
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 418
    int-to-float v4, v4

    mul-float/2addr v4, v11

    .line 419
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 418
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    .line 421
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher3/WidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 422
    sub-int v5, v9, v4

    div-int/lit8 v5, v5, 0x2

    .line 423
    sub-int v6, v8, v4

    div-int/lit8 v6, v6, 0x2

    .line 424
    add-int v7, v5, v4

    add-int/2addr v4, v6

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 425
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 428
    :cond_a
    :goto_a
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_7

    .line 427
    :catch_1
    move-exception v3

    goto :goto_a

    :cond_b
    move v8, v2

    move v9, v4

    goto/16 :goto_5

    :cond_c
    move v11, v5

    goto/16 :goto_4

    :cond_d
    move-object v6, v2

    goto/16 :goto_1
.end method

.method getPackageVersion(Ljava/lang/String;)[J
    .locals 6

    .prologue
    .line 505
    iget-object v2, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    monitor-enter v2

    .line 506
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 507
    if-nez v0, :cond_0

    .line 508
    const/4 v0, 0x2

    new-array v1, v0, [J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 511
    const/16 v3, 0x2000

    .line 510
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 512
    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v4, v3

    const/4 v3, 0x0

    aput-wide v4, v1, v3

    .line 513
    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    const/4 v0, 0x1

    aput-wide v4, v1, v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    :cond_0
    monitor-exit v2

    .line 519
    return-object v0

    .line 514
    :catch_0
    move-exception v0

    .line 515
    :try_start_3
    const-string/jumbo v3, "WidgetPreviewLoader"

    const-string/jumbo v4, "PackageInfo not found"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public getPreview(Lcom/android/launcher3/model/WidgetItem;IILcom/android/launcher3/widget/WidgetCell;Z)Landroid/os/CancellationSignal;
    .locals 8

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    new-instance v2, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;

    iget-object v1, p1, Lcom/android/launcher3/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    invoke-direct {v2, v1, v3, v0}, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 100
    new-instance v0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;-><init>(Lcom/android/launcher3/WidgetPreviewLoader;Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;Lcom/android/launcher3/model/WidgetItem;IILcom/android/launcher3/widget/WidgetCell;Z)V

    .line 102
    sget-object v1, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 104
    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    .line 105
    invoke-virtual {v1, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 106
    return-object v1
.end method

.method readFromDb(Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;Landroid/graphics/Bitmap;Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mDb:Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;

    .line 257
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v3, "preview_bitmap"

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 258
    const-string/jumbo v3, "componentName = ? AND profileId = ? AND size = ?"

    .line 260
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    .line 261
    iget-object v5, p1, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 262
    iget-object v5, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v6, p1, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 263
    iget-object v5, p1, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;->size:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 256
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 266
    :try_start_1
    invoke-virtual {p3}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    if-eqz v1, :cond_0

    .line 285
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 267
    :cond_0
    return-object v2

    .line 269
    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 270
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 271
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 272
    iput-object p2, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 274
    :try_start_3
    invoke-virtual {p3}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 275
    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 284
    if-eqz v1, :cond_2

    .line 285
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_2
    return-object v0

    .line 277
    :catch_0
    move-exception v0

    .line 284
    if-eqz v1, :cond_3

    .line 285
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 278
    :cond_3
    return-object v2

    .line 284
    :cond_4
    if-eqz v1, :cond_5

    .line 285
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 288
    :cond_5
    :goto_0
    return-object v2

    .line 281
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 282
    :goto_1
    :try_start_4
    const-string/jumbo v3, "WidgetPreviewLoader"

    const-string/jumbo v4, "Error loading preview from DB"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 284
    if-eqz v1, :cond_5

    .line 285
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 283
    :catchall_0
    move-exception v0

    .line 284
    :goto_2
    if-eqz v2, :cond_6

    .line 285
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 283
    :cond_6
    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 281
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public removeObsoletePreviews(Ljava/util/ArrayList;Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 18

    .prologue
    .line 181
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertWorkerThread()V

    .line 183
    new-instance v6, Landroid/util/LongSparseArray;

    invoke-direct {v6}, Landroid/util/LongSparseArray;-><init>()V

    .line 185
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/ComponentKey;

    .line 186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v5, v2, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v8

    .line 187
    invoke-virtual {v6, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 188
    if-nez v3, :cond_0

    .line 189
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 190
    invoke-virtual {v6, v8, v9, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 192
    :cond_0
    iget-object v2, v2, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    :cond_1
    new-instance v7, Landroid/util/LongSparseArray;

    invoke-direct {v7}, Landroid/util/LongSparseArray;-><init>()V

    .line 196
    if-nez p2, :cond_7

    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 198
    :goto_1
    const/4 v3, 0x0

    .line 200
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mDb:Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;

    .line 201
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "profileId"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-string/jumbo v9, "packageName"

    const/4 v10, 0x1

    aput-object v9, v8, v10

    .line 202
    const-string/jumbo v9, "lastUpdated"

    const/4 v10, 0x2

    aput-object v9, v8, v10

    const-string/jumbo v9, "version"

    const/4 v10, 0x3

    aput-object v9, v8, v10

    .line 203
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 200
    invoke-virtual {v2, v8, v9, v10}, Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 204
    :cond_2
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 205
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 206
    const/4 v2, 0x1

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 207
    const/4 v2, 0x2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 208
    const/4 v2, 0x3

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 210
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 211
    cmp-long v2, v8, v4

    if-nez v2, :cond_2

    .line 216
    :cond_3
    invoke-virtual {v6, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 217
    if-eqz v2, :cond_4

    invoke-virtual {v2, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 218
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher3/WidgetPreviewLoader;->getPackageVersion(Ljava/lang/String;)[J

    move-result-object v2

    .line 219
    const/4 v11, 0x0

    aget-wide v16, v2, v11

    cmp-long v11, v16, v14

    if-nez v11, :cond_4

    const/4 v11, 0x1

    aget-wide v14, v2, v11

    cmp-long v2, v14, v12

    if-eqz v2, :cond_2

    .line 226
    :cond_4
    invoke-virtual {v7, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 227
    if-nez v2, :cond_5

    .line 228
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 229
    invoke-virtual {v7, v8, v9, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 231
    :cond_5
    invoke-virtual {v2, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 241
    :catch_0
    move-exception v2

    .line 242
    :try_start_1
    const-string/jumbo v4, "WidgetPreviewLoader"

    const-string/jumbo v5, "Error updating widget previews"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    if-eqz v3, :cond_6

    .line 245
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 248
    :cond_6
    :goto_3
    return-void

    .line 197
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    move-wide v4, v2

    goto/16 :goto_1

    .line 234
    :cond_8
    const/4 v2, 0x0

    move v4, v2

    :goto_4
    :try_start_2
    invoke-virtual {v7}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v4, v2, :cond_b

    .line 235
    invoke-virtual {v7, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v8

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v2, v8, v9}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v5

    .line 237
    invoke-virtual {v7, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 238
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v8, v9}, Lcom/android/launcher3/WidgetPreviewLoader;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;J)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 243
    :catchall_0
    move-exception v2

    .line 244
    if-eqz v3, :cond_9

    .line 245
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_9
    throw v2

    .line 234
    :cond_a
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_4

    .line 244
    :cond_b
    if-eqz v3, :cond_6

    .line 245
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_3
.end method

.method public removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/launcher3/WidgetPreviewLoader;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;J)V

    .line 158
    return-void
.end method

.method writeToDb(Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;[JLandroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 145
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 146
    const-string/jumbo v1, "componentName"

    iget-object v2, p1, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string/jumbo v1, "profileId"

    iget-object v2, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v3, p1, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 148
    const-string/jumbo v1, "size"

    iget-object v2, p1, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;->size:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string/jumbo v1, "packageName"

    iget-object v2, p1, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string/jumbo v1, "version"

    const/4 v2, 0x0

    aget-wide v2, p2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 151
    const-string/jumbo v1, "lastUpdated"

    const/4 v2, 0x1

    aget-wide v2, p2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 152
    const-string/jumbo v1, "preview_bitmap"

    invoke-static {p3}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 153
    iget-object v1, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mDb:Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;->insertOrReplace(Landroid/content/ContentValues;)V

    .line 154
    return-void
.end method
