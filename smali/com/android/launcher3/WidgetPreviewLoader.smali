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
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 69
    iput-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    .line 78
    new-instance v0, Lcom/android/launcher3/MainThreadExecutor;

    invoke-direct {v0}, Lcom/android/launcher3/MainThreadExecutor;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

    .line 82
    iput-object p1, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 84
    invoke-static {p1}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    .line 85
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 86
    new-instance v0, Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;

    invoke-direct {v0, p1}, Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mDb:Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mWorkerHandler:Landroid/os/Handler;

    .line 88
    return-void
.end method

.method private drawBoxWithShadow(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)Landroid/graphics/RectF;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 435
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 436
    const v1, 0x7f0b0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 437
    const v2, 0x7f0b0044

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 438
    const v3, 0x7f0b0045

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 440
    new-instance v3, Landroid/graphics/RectF;

    .line 441
    int-to-float v4, p3

    sub-float/2addr v4, v1

    int-to-float v5, p4

    sub-float/2addr v5, v1

    sub-float/2addr v5, v2

    .line 440
    invoke-direct {v3, v1, v1, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 442
    const/4 v4, -0x1

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 446
    const/high16 v4, 0x3d000000    # 0.03125f

    .line 445
    invoke-virtual {p2, v1, v6, v2, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 447
    invoke-virtual {p1, v3, v0, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 451
    const/high16 v2, -0x1000000

    const/16 v4, 0x1e

    invoke-static {v2, v4}, Landroid/support/v4/b/a;->arc(II)I

    move-result v2

    .line 450
    invoke-virtual {p2, v1, v6, v6, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 452
    invoke-virtual {p1, v3, v0, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 454
    invoke-virtual {p2}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 455
    return-object v3
.end method

.method private generatePreview(Lcom/android/launcher3/BaseActivity;Lcom/android/launcher3/model/WidgetItem;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 294
    iget-object v0, p2, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    .line 295
    iget-object v2, p2, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/WidgetPreviewLoader;->generateWidgetPreview(Lcom/android/launcher3/BaseActivity;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;ILandroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 298
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
    .locals 12

    .prologue
    .line 460
    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 461
    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 462
    const v3, 0x7f0b0047

    .line 461
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 464
    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    .line 465
    move/from16 v0, p4

    if-lt v0, v3, :cond_0

    if-ge p3, v3, :cond_1

    .line 466
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Max size is too small for preview"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 468
    :cond_1
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    .line 469
    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ge v5, v3, :cond_3

    .line 470
    :cond_2
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p5

    .line 471
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 481
    :goto_0
    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 482
    invoke-direct {p0, v4, v5, v3, v3}, Lcom/android/launcher3/WidgetPreviewLoader;->drawBoxWithShadow(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)Landroid/graphics/RectF;

    move-result-object v3

    .line 485
    iget-object v6, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {p2, v6}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;->getFullResIcon(Lcom/android/launcher3/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/launcher3/WidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    const/16 v8, 0x1a

    .line 484
    invoke-static {v6, v7, v8}, Lcom/android/launcher3/graphics/LauncherIcons;->createScaledBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 486
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v7, v10, v11, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 488
    const/4 v8, 0x0

    const/4 v9, 0x0

    int-to-float v10, v1

    int-to-float v1, v1

    invoke-virtual {v3, v8, v9, v10, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 489
    int-to-float v1, v2

    int-to-float v2, v2

    invoke-virtual {v3, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 490
    invoke-virtual {v4, v6, v7, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 491
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 492
    return-object p5

    .line 469
    :cond_3
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-lt v5, v3, :cond_2

    .line 473
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-gt v5, v3, :cond_4

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-le v5, v3, :cond_5

    .line 474
    :cond_4
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v3, v5}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 478
    :cond_5
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 479
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 497
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

    .line 506
    :catch_0
    move-exception v0

    .line 507
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 503
    :catch_1
    move-exception v0

    .line 504
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 505
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private removePackage(Ljava/lang/String;Landroid/os/UserHandle;J)V
    .locals 5

    .prologue
    .line 162
    iget-object v1, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    monitor-enter v1

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 166
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mDb:Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;

    .line 167
    const-string/jumbo v1, "packageName = ? AND profileId = ?"

    .line 168
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 166
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;->delete(Ljava/lang/String;[Ljava/lang/String;)V

    .line 169
    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public generateWidgetPreview(Lcom/android/launcher3/BaseActivity;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;ILandroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;
    .locals 16

    .prologue
    .line 317
    if-gez p3, :cond_0

    const p3, 0x7fffffff

    .line 319
    :cond_0
    const/4 v2, 0x0

    .line 320
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->previewImage:I

    if-eqz v3, :cond_d

    .line 322
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->loadPreviewImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 329
    :goto_0
    if-eqz v2, :cond_2

    .line 330
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/WidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v6, v2

    .line 337
    :goto_1
    if-eqz v6, :cond_3

    const/4 v2, 0x1

    move v3, v2

    .line 338
    :goto_2
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->spanX:I

    .line 339
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->spanY:I

    .line 344
    if-eqz v3, :cond_4

    .line 345
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 346
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 356
    :goto_3
    const/high16 v5, 0x3f800000    # 1.0f

    .line 357
    if-eqz p5, :cond_1

    .line 358
    const/4 v7, 0x0

    aput v4, p5, v7

    .line 360
    :cond_1
    move/from16 v0, p3

    if-le v4, v0, :cond_c

    .line 361
    move/from16 v0, p3

    int-to-float v5, v0

    int-to-float v7, v4

    div-float/2addr v5, v7

    move v11, v5

    .line 363
    :goto_4
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v11, v5

    if-eqz v5, :cond_b

    .line 364
    int-to-float v4, v4

    mul-float/2addr v4, v11

    float-to-int v4, v4

    .line 365
    int-to-float v2, v2

    mul-float/2addr v2, v11

    float-to-int v2, v2

    move v8, v2

    move v9, v4

    .line 369
    :goto_5
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 370
    if-nez p4, :cond_5

    .line 371
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 372
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 386
    :goto_6
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, v9

    div-int/lit8 v4, v4, 0x2

    .line 387
    if-eqz v3, :cond_7

    .line 388
    add-int v3, v4, v9

    const/4 v5, 0x0

    invoke-virtual {v6, v4, v5, v3, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 389
    invoke-virtual {v6, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 431
    :goto_7
    return-object p4

    .line 323
    :catch_0
    move-exception v2

    .line 324
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

    .line 327
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 332
    :cond_2
    const-string/jumbo v3, "WidgetPreviewLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t load widget preview drawable 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 333
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->previewImage:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 332
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 333
    const-string/jumbo v5, " for provider: "

    .line 332
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 333
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 332
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v2

    goto/16 :goto_1

    .line 337
    :cond_3
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_2

    .line 348
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    .line 349
    iget v4, v2, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 350
    mul-int v4, v2, v12

    .line 351
    mul-int/2addr v2, v13

    goto/16 :goto_3

    .line 377
    :cond_5
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v4, v8, :cond_6

    .line 378
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v8, v5}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 381
    :cond_6
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 382
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_6

    .line 391
    :cond_7
    new-instance v7, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v7, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 392
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7, v9, v8}, Lcom/android/launcher3/WidgetPreviewLoader;->drawBoxWithShadow(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)Landroid/graphics/RectF;

    move-result-object v14

    .line 395
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 397
    const v4, 0x7f0b0046

    .line 396
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 398
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 400
    iget v4, v14, Landroid/graphics/RectF;->left:F

    .line 401
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v3

    int-to-float v5, v12

    div-float v15, v3, v5

    .line 402
    const/4 v3, 0x1

    move v10, v3

    move v3, v4

    :goto_8
    if-ge v10, v12, :cond_8

    .line 403
    add-float/2addr v3, v15

    .line 404
    const/4 v4, 0x0

    int-to-float v6, v8

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 402
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_8

    .line 407
    :cond_8
    iget v4, v14, Landroid/graphics/RectF;->top:F

    .line 408
    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v3

    int-to-float v5, v13

    div-float v12, v3, v5

    .line 409
    const/4 v3, 0x1

    move v10, v3

    :goto_9
    if-ge v10, v13, :cond_9

    .line 410
    add-float/2addr v4, v12

    .line 411
    const/4 v3, 0x0

    int-to-float v5, v9

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 409
    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto :goto_9

    .line 416
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mIconCache:Lcom/android/launcher3/IconCache;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getIcon(Landroid/content/Context;Lcom/android/launcher3/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 417
    if-eqz v3, :cond_a

    .line 418
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 419
    int-to-float v4, v4

    mul-float/2addr v4, v11

    .line 420
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 419
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    .line 422
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher3/WidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 423
    sub-int v5, v9, v4

    div-int/lit8 v5, v5, 0x2

    .line 424
    sub-int v6, v8, v4

    div-int/lit8 v6, v6, 0x2

    .line 425
    add-int v7, v5, v4

    add-int/2addr v4, v6

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 426
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 429
    :cond_a
    :goto_a
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_7

    .line 428
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
    .line 515
    iget-object v2, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    monitor-enter v2

    .line 516
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 517
    if-nez v0, :cond_0

    .line 518
    const/4 v0, 0x2

    new-array v1, v0, [J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 521
    const/16 v3, 0x2000

    .line 520
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 522
    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v4, v3

    const/4 v3, 0x0

    aput-wide v4, v1, v3

    .line 523
    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    const/4 v0, 0x1

    aput-wide v4, v1, v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mPackageVersions:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    :cond_0
    monitor-exit v2

    .line 529
    return-object v0

    .line 524
    :catch_0
    move-exception v0

    .line 525
    :try_start_3
    const-string/jumbo v3, "WidgetPreviewLoader"

    const-string/jumbo v4, "PackageInfo not found"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public getPreview(Lcom/android/launcher3/model/WidgetItem;IILcom/android/launcher3/widget/WidgetCell;Z)Landroid/os/CancellationSignal;
    .locals 8

    .prologue
    .line 98
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

    .line 99
    new-instance v2, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;

    iget-object v1, p1, Lcom/android/launcher3/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    invoke-direct {v2, v1, v3, v0}, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 101
    new-instance v0, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;-><init>(Lcom/android/launcher3/WidgetPreviewLoader;Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;Lcom/android/launcher3/model/WidgetItem;IILcom/android/launcher3/widget/WidgetCell;Z)V

    .line 103
    sget-object v1, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 105
    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    .line 106
    invoke-virtual {v1, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 107
    return-object v1
.end method

.method readFromDb(Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;Landroid/graphics/Bitmap;Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mDb:Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;

    .line 258
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v3, "preview_bitmap"

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 259
    const-string/jumbo v3, "componentName = ? AND profileId = ? AND size = ?"

    .line 261
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    .line 262
    iget-object v5, p1, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 263
    iget-object v5, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v6, p1, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 264
    iget-object v5, p1, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;->size:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 257
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 267
    :try_start_1
    invoke-virtual {p3}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    if-eqz v1, :cond_0

    .line 286
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 268
    :cond_0
    return-object v2

    .line 270
    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 271
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 272
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 273
    iput-object p2, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 275
    :try_start_3
    invoke-virtual {p3}, Lcom/android/launcher3/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 276
    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 285
    if-eqz v1, :cond_2

    .line 286
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 276
    :cond_2
    return-object v0

    .line 278
    :catch_0
    move-exception v0

    .line 285
    if-eqz v1, :cond_3

    .line 286
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 279
    :cond_3
    return-object v2

    .line 285
    :cond_4
    if-eqz v1, :cond_5

    .line 286
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 289
    :cond_5
    :goto_0
    return-object v2

    .line 282
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 283
    :goto_1
    :try_start_4
    const-string/jumbo v3, "WidgetPreviewLoader"

    const-string/jumbo v4, "Error loading preview from DB"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 285
    if-eqz v1, :cond_5

    .line 286
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v0

    .line 285
    :goto_2
    if-eqz v2, :cond_6

    .line 286
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 284
    :cond_6
    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 282
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public removeObsoletePreviews(Ljava/util/ArrayList;Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 18

    .prologue
    .line 182
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertWorkerThread()V

    .line 184
    new-instance v6, Landroid/util/LongSparseArray;

    invoke-direct {v6}, Landroid/util/LongSparseArray;-><init>()V

    .line 186
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/ComponentKey;

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v5, v2, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v8

    .line 188
    invoke-virtual {v6, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 189
    if-nez v3, :cond_0

    .line 190
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 191
    invoke-virtual {v6, v8, v9, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 193
    :cond_0
    iget-object v2, v2, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    :cond_1
    new-instance v7, Landroid/util/LongSparseArray;

    invoke-direct {v7}, Landroid/util/LongSparseArray;-><init>()V

    .line 197
    if-nez p2, :cond_7

    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 199
    :goto_1
    const/4 v3, 0x0

    .line 201
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mDb:Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;

    .line 202
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "profileId"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-string/jumbo v9, "packageName"

    const/4 v10, 0x1

    aput-object v9, v8, v10

    .line 203
    const-string/jumbo v9, "lastUpdated"

    const/4 v10, 0x2

    aput-object v9, v8, v10

    const-string/jumbo v9, "version"

    const/4 v10, 0x3

    aput-object v9, v8, v10

    .line 204
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 201
    invoke-virtual {v2, v8, v9, v10}, Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 205
    :cond_2
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 206
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 207
    const/4 v2, 0x1

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 208
    const/4 v2, 0x2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 209
    const/4 v2, 0x3

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 211
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    cmp-long v2, v8, v4

    if-nez v2, :cond_2

    .line 217
    :cond_3
    invoke-virtual {v6, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 218
    if-eqz v2, :cond_4

    invoke-virtual {v2, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 219
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher3/WidgetPreviewLoader;->getPackageVersion(Ljava/lang/String;)[J

    move-result-object v2

    .line 220
    const/4 v11, 0x0

    aget-wide v16, v2, v11

    cmp-long v11, v16, v14

    if-nez v11, :cond_4

    const/4 v11, 0x1

    aget-wide v14, v2, v11

    cmp-long v2, v14, v12

    if-eqz v2, :cond_2

    .line 227
    :cond_4
    invoke-virtual {v7, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 228
    if-nez v2, :cond_5

    .line 229
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 230
    invoke-virtual {v7, v8, v9, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 232
    :cond_5
    invoke-virtual {v2, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 242
    :catch_0
    move-exception v2

    .line 243
    :try_start_1
    const-string/jumbo v4, "WidgetPreviewLoader"

    const-string/jumbo v5, "Error updating widget previews"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    if-eqz v3, :cond_6

    .line 246
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 249
    :cond_6
    :goto_3
    return-void

    .line 198
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    move-wide v4, v2

    goto/16 :goto_1

    .line 235
    :cond_8
    const/4 v2, 0x0

    move v4, v2

    :goto_4
    :try_start_2
    invoke-virtual {v7}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v4, v2, :cond_b

    .line 236
    invoke-virtual {v7, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v8

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v2, v8, v9}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v5

    .line 238
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

    .line 239
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v8, v9}, Lcom/android/launcher3/WidgetPreviewLoader;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;J)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 244
    :catchall_0
    move-exception v2

    .line 245
    if-eqz v3, :cond_9

    .line 246
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 244
    :cond_9
    throw v2

    .line 235
    :cond_a
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_4

    .line 245
    :cond_b
    if-eqz v3, :cond_6

    .line 246
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_3
.end method

.method public removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/launcher3/WidgetPreviewLoader;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;J)V

    .line 159
    return-void
.end method

.method writeToDb(Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;[JLandroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 146
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 147
    const-string/jumbo v1, "componentName"

    iget-object v2, p1, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string/jumbo v1, "profileId"

    iget-object v2, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v3, p1, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 149
    const-string/jumbo v1, "size"

    iget-object v2, p1, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;->size:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string/jumbo v1, "packageName"

    iget-object v2, p1, Lcom/android/launcher3/WidgetPreviewLoader$WidgetCacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string/jumbo v1, "version"

    const/4 v2, 0x0

    aget-wide v2, p2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 152
    const-string/jumbo v1, "lastUpdated"

    const/4 v2, 0x1

    aget-wide v2, p2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 153
    const-string/jumbo v1, "preview_bitmap"

    invoke-static {p3}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 154
    iget-object v1, p0, Lcom/android/launcher3/WidgetPreviewLoader;->mDb:Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/WidgetPreviewLoader$CacheDb;->insertOrReplace(Landroid/content/ContentValues;)V

    .line 155
    return-void
.end method
