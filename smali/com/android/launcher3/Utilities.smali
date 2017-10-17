.class public final Lcom/android/launcher3/Utilities;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ATLEAST_LOLLIPOP_MR1:Z

.field public static final ATLEAST_MARSHMALLOW:Z

.field public static final ATLEAST_NOUGAT:Z

.field public static final ATLEAST_NOUGAT_MR1:Z

.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field public static final IS_DEBUG_DEVICE:Z

.field private static final MAXIMUM_POOL_SIZE:I

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final sInverseMatrix:Landroid/graphics/Matrix;

.field private static final sLoc0:[I

.field private static final sLoc1:[I

.field private static final sMatrix:Landroid/graphics/Matrix;

.field private static final sPoint:[F

.field private static final sTrimPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    const-string/jumbo v0, "^[\\s|\\p{javaSpaceChar}]*(.*)[\\s|\\p{javaSpaceChar}]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 79
    sput-object v0, Lcom/android/launcher3/Utilities;->sTrimPattern:Ljava/util/regex/Pattern;

    .line 82
    new-array v0, v3, [I

    sput-object v0, Lcom/android/launcher3/Utilities;->sLoc0:[I

    .line 83
    new-array v0, v3, [I

    sput-object v0, Lcom/android/launcher3/Utilities;->sLoc1:[I

    .line 84
    new-array v0, v3, [F

    sput-object v0, Lcom/android/launcher3/Utilities;->sPoint:[F

    .line 85
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/android/launcher3/Utilities;->sMatrix:Landroid/graphics/Matrix;

    .line 86
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/android/launcher3/Utilities;->sInverseMatrix:Landroid/graphics/Matrix;

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-lt v0, v3, :cond_0

    move v0, v1

    .line 92
    :goto_0
    sput-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT_MR1:Z

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_1

    move v0, v1

    .line 95
    :goto_1
    sput-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT:Z

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_2

    move v0, v1

    .line 98
    :goto_2
    sput-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_MARSHMALLOW:Z

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v0, v3, :cond_3

    .line 101
    :goto_3
    sput-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_LOLLIPOP_MR1:Z

    .line 108
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/Utilities;->IS_DEBUG_DEVICE:Z

    .line 114
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/android/launcher3/Utilities;->CPU_COUNT:I

    .line 115
    sget v0, Lcom/android/launcher3/Utilities;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/launcher3/Utilities;->CORE_POOL_SIZE:I

    .line 116
    sget v0, Lcom/android/launcher3/Utilities;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/launcher3/Utilities;->MAXIMUM_POOL_SIZE:I

    .line 121
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 122
    sget v2, Lcom/android/launcher3/Utilities;->CORE_POOL_SIZE:I

    sget v3, Lcom/android/launcher3/Utilities;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v4, 0x1

    .line 123
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 121
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 75
    return-void

    :cond_0
    move v0, v2

    .line 93
    goto :goto_0

    :cond_1
    move v0, v2

    .line 96
    goto :goto_1

    :cond_2
    move v0, v2

    .line 99
    goto :goto_2

    :cond_3
    move v1, v2

    .line 102
    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static boundToRange(FFF)F
    .locals 1

    .prologue
    .line 524
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static boundToRange(III)I
    .locals 1

    .prologue
    .line 517
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static calculateTextHeight(F)I
    .locals 2

    .prologue
    .line 425
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 426
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 427
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 428
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 569
    if-eqz p0, :cond_0

    .line 571
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 572
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 490
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v1, "%s IN (%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string/jumbo v3, ", "

    invoke-static {v3, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dpiFromPx(ILandroid/util/DisplayMetrics;)F
    .locals 2

    .prologue
    .line 477
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    .line 478
    int-to-float v1, p0

    div-float v0, v1, v0

    return v0
.end method

.method public static findDominantColorByHue(Landroid/graphics/Bitmap;I)I
    .locals 18

    .prologue
    .line 293
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 294
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 295
    mul-int v2, v11, v12

    div-int v2, v2, p1

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 296
    const/4 v3, 0x1

    if-ge v2, v3, :cond_a

    .line 297
    const/4 v2, 0x1

    move v3, v2

    .line 301
    :goto_0
    const/4 v2, 0x3

    new-array v13, v2, [F

    .line 305
    const/16 v2, 0x168

    new-array v8, v2, [F

    .line 306
    const/high16 v5, -0x40800000    # -1.0f

    .line 307
    const/4 v10, -0x1

    .line 309
    const/4 v2, 0x0

    move v7, v2

    :goto_1
    if-ge v7, v11, :cond_4

    .line 310
    const/4 v2, 0x0

    move v6, v2

    move v2, v10

    :goto_2
    if-ge v6, v12, :cond_3

    .line 311
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    .line 312
    shr-int/lit8 v9, v4, 0x18

    and-int/lit16 v9, v9, 0xff

    .line 313
    const/16 v10, 0x80

    if-ge v9, v10, :cond_0

    move v4, v5

    .line 310
    :goto_3
    add-int v5, v6, v3

    move v6, v5

    move v5, v4

    goto :goto_2

    .line 318
    :cond_0
    const/high16 v9, -0x1000000

    or-int/2addr v4, v9

    .line 319
    invoke-static {v4, v13}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 321
    const/4 v4, 0x0

    aget v4, v13, v4

    float-to-int v4, v4

    .line 322
    if-ltz v4, :cond_1

    array-length v9, v8

    if-lt v4, v9, :cond_2

    :cond_1
    move v4, v5

    .line 324
    goto :goto_3

    .line 326
    :cond_2
    const/4 v9, 0x1

    aget v9, v13, v9

    const/4 v10, 0x2

    aget v10, v13, v10

    mul-float/2addr v9, v10

    .line 327
    aget v10, v8, v4

    add-float/2addr v9, v10

    aput v9, v8, v4

    .line 328
    aget v9, v8, v4

    cmpl-float v9, v9, v5

    if-lez v9, :cond_9

    .line 329
    aget v2, v8, v4

    move/from16 v17, v4

    move v4, v2

    move/from16 v2, v17

    .line 330
    goto :goto_3

    .line 309
    :cond_3
    add-int v4, v7, v3

    move v7, v4

    move v10, v2

    goto :goto_1

    .line 335
    :cond_4
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 336
    const/high16 v6, -0x1000000

    .line 337
    const/high16 v7, -0x40800000    # -1.0f

    .line 341
    const/4 v2, 0x0

    move v9, v2

    :goto_4
    if-ge v9, v11, :cond_7

    .line 342
    const/4 v2, 0x0

    move v8, v2

    :goto_5
    if-ge v8, v12, :cond_6

    .line 343
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    const/high16 v4, -0x1000000

    or-int v5, v2, v4

    .line 344
    invoke-static {v5, v13}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 345
    const/4 v2, 0x0

    aget v2, v13, v2

    float-to-int v2, v2

    .line 346
    if-ne v2, v10, :cond_8

    .line 347
    const/4 v2, 0x1

    aget v2, v13, v2

    .line 348
    const/4 v4, 0x2

    aget v4, v13, v4

    .line 349
    const/high16 v15, 0x42c80000    # 100.0f

    mul-float/2addr v15, v2

    float-to-int v15, v15

    const v16, 0x461c4000    # 10000.0f

    mul-float v16, v16, v4

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    add-int v15, v15, v16

    .line 351
    mul-float/2addr v4, v2

    .line 352
    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 353
    if-nez v2, :cond_5

    move v2, v4

    .line 354
    :goto_6
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v14, v15, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 355
    cmpl-float v4, v2, v7

    if-lez v4, :cond_8

    move v4, v2

    move v2, v5

    .line 342
    :goto_7
    add-int v5, v8, v3

    move v8, v5

    move v6, v2

    move v7, v4

    goto :goto_5

    .line 353
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v2, v4

    goto :goto_6

    .line 341
    :cond_6
    add-int v2, v9, v3

    move v9, v2

    goto :goto_4

    .line 363
    :cond_7
    return v6

    :cond_8
    move v2, v6

    move v4, v7

    goto :goto_7

    :cond_9
    move v4, v5

    goto/16 :goto_3

    :cond_a
    move v3, v2

    goto/16 :goto_0
.end method

.method static findSystemApk(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/util/Pair;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 372
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 374
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    .line 375
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 376
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 378
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 379
    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 380
    :catch_0
    move-exception v2

    .line 381
    const-string/jumbo v2, "Launcher.Utilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to find resources for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 385
    :cond_1
    return-object v5
.end method

.method public static flattenBitmap(Landroid/graphics/Bitmap;)[B
    .locals 3

    .prologue
    .line 394
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    .line 395
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 397
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 398
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 399
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 400
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    const-string/jumbo v0, "Launcher.Utilities"

    const-string/jumbo v1, "Could not write bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAllowRotationDefaultValue(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 137
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT:Z

    if-eqz v1, :cond_1

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 142
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 141
    mul-int/2addr v1, v2

    .line 142
    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    .line 141
    div-int/2addr v1, v2

    .line 143
    const/16 v2, 0x258

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 145
    :cond_1
    return v0
.end method

.method public static getCenterDeltaInScreenSpace(Landroid/view/View;Landroid/view/View;)[I
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 223
    sget-object v0, Lcom/android/launcher3/Utilities;->sLoc0:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 224
    sget-object v0, Lcom/android/launcher3/Utilities;->sLoc1:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 226
    sget-object v0, Lcom/android/launcher3/Utilities;->sLoc0:[I

    aget v1, v0, v4

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v4

    .line 227
    sget-object v0, Lcom/android/launcher3/Utilities;->sLoc0:[I

    aget v1, v0, v5

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v5

    .line 228
    sget-object v0, Lcom/android/launcher3/Utilities;->sLoc1:[I

    aget v1, v0, v4

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v4

    .line 229
    sget-object v0, Lcom/android/launcher3/Utilities;->sLoc1:[I

    aget v1, v0, v5

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, v0, v5

    .line 230
    const/4 v0, 0x2

    new-array v0, v0, [I

    sget-object v1, Lcom/android/launcher3/Utilities;->sLoc1:[I

    aget v1, v1, v4

    sget-object v2, Lcom/android/launcher3/Utilities;->sLoc0:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    aput v1, v0, v4

    sget-object v1, Lcom/android/launcher3/Utilities;->sLoc1:[I

    aget v1, v1, v5

    sget-object v2, Lcom/android/launcher3/Utilities;->sLoc0:[I

    aget v2, v2, v5

    sub-int/2addr v1, v2

    aput v1, v0, v5

    return-object v0
.end method

.method public static getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[IZ)F
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 163
    sget-object v0, Lcom/android/launcher3/Utilities;->sPoint:[F

    aget v1, p2, v5

    int-to-float v1, v1

    aput v1, v0, v5

    .line 164
    sget-object v0, Lcom/android/launcher3/Utilities;->sPoint:[F

    aget v1, p2, v6

    int-to-float v1, v1

    aput v1, v0, v6

    .line 166
    const/high16 v0, 0x3f800000    # 1.0f

    move v1, v0

    move-object v0, p0

    .line 168
    :goto_0
    if-eq v0, p1, :cond_2

    if-eqz v0, :cond_2

    .line 171
    if-ne v0, p0, :cond_0

    if-eqz p3, :cond_1

    .line 172
    :cond_0
    sget-object v2, Lcom/android/launcher3/Utilities;->sPoint:[F

    aget v3, v2, v5

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    aput v3, v2, v5

    .line 173
    sget-object v2, Lcom/android/launcher3/Utilities;->sPoint:[F

    aget v3, v2, v6

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    aput v3, v2, v6

    .line 176
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/Utilities;->sPoint:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 177
    sget-object v2, Lcom/android/launcher3/Utilities;->sPoint:[F

    aget v3, v2, v5

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v2, v5

    .line 178
    sget-object v2, Lcom/android/launcher3/Utilities;->sPoint:[F

    aget v3, v2, v6

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v2, v6

    .line 179
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    .line 181
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 184
    :cond_2
    sget-object v0, Lcom/android/launcher3/Utilities;->sPoint:[F

    aget v0, v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, p2, v5

    .line 185
    sget-object v0, Lcom/android/launcher3/Utilities;->sPoint:[F

    aget v0, v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, p2, v6

    .line 186
    return v1
.end method

.method public static getOverrideObject(Ljava/lang/Class;Landroid/content/Context;I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 622
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 623
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 625
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 626
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 628
    :catch_0
    move-exception v0

    .line 629
    const-string/jumbo v1, "Launcher.Utilities"

    const-string/jumbo v2, "Bad overriden class"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 634
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    .line 635
    :catch_1
    move-exception v0

    .line 636
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 549
    const-string/jumbo v0, "com.android.launcher3.prefs"

    const/4 v1, 0x0

    .line 548
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 499
    :try_start_0
    const-string/jumbo v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 500
    const-string/jumbo v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 501
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 502
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 503
    return-object v0

    .line 505
    :catch_0
    move-exception v0

    .line 506
    const-string/jumbo v0, "Launcher.Utilities"

    const-string/jumbo v1, "Unable to read system properties"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_0
    return-object p1
.end method

.method public static isAllowRotationPrefEnabled(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 132
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_allowRotation"

    .line 133
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getAllowRotationDefaultValue(Landroid/content/Context;)Z

    move-result v2

    .line 132
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAtLeastO()Z
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Landroid/support/v4/os/a;->isAtLeastO()Z

    move-result v0

    return v0
.end method

.method public static isBinderSizeError(Ljava/lang/Exception;)Z
    .locals 1

    .prologue
    .line 617
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/os/TransactionTooLargeException;

    if-nez v0, :cond_0

    .line 618
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/os/DeadObjectException;

    .line 617
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isBootCompleted()Z
    .locals 3

    .prologue
    .line 494
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "sys.boot_completed"

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Lcom/android/launcher3/Utilities;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isEmpty(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 602
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isLauncherAppTarget(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 462
    if-eqz p0, :cond_1

    .line 463
    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 462
    if-eqz v1, :cond_1

    .line 464
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 465
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 466
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 467
    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    .line 462
    if-eqz v1, :cond_1

    .line 468
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 462
    if-eqz v1, :cond_1

    .line 470
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 471
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    :cond_0
    return v0

    .line 473
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isPowerSaverOn(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 553
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 554
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    return v0
.end method

.method public static isPropertyEnabled(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isRtl(Landroid/content/res/Resources;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 451
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 264
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 266
    if-nez v3, :cond_2

    .line 267
    const/high16 v3, 0x10000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 268
    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    .line 269
    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 274
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 276
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 277
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    .line 278
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 277
    :cond_1
    return v0

    .line 272
    :cond_2
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 279
    :catch_0
    move-exception v1

    .line 280
    return v0

    .line 283
    :cond_3
    return v0
.end method

.method public static isWallpaperAllowed(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 558
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT:Z

    if-eqz v0, :cond_0

    .line 560
    :try_start_0
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    .line 561
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "isSetWallpaperAllowed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 563
    :catch_0
    move-exception v0

    .line 565
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static longCompare(JJ)I
    .locals 2

    .prologue
    .line 544
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 193
    sget-object v0, Lcom/android/launcher3/Utilities;->sMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 195
    :goto_0
    if-eq p0, p1, :cond_0

    .line 196
    sget-object v0, Lcom/android/launcher3/Utilities;->sMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 197
    sget-object v0, Lcom/android/launcher3/Utilities;->sMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 198
    sget-object v0, Lcom/android/launcher3/Utilities;->sMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 199
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object p0, v0

    goto :goto_0

    .line 201
    :cond_0
    sget-object v0, Lcom/android/launcher3/Utilities;->sMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 202
    sget-object v0, Lcom/android/launcher3/Utilities;->sMatrix:Landroid/graphics/Matrix;

    sget-object v1, Lcom/android/launcher3/Utilities;->sInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 204
    sget-object v0, Lcom/android/launcher3/Utilities;->sPoint:[F

    aget v1, p2, v3

    int-to-float v1, v1

    aput v1, v0, v3

    .line 205
    sget-object v0, Lcom/android/launcher3/Utilities;->sPoint:[F

    aget v1, p2, v4

    int-to-float v1, v1

    aput v1, v0, v4

    .line 206
    sget-object v0, Lcom/android/launcher3/Utilities;->sInverseMatrix:Landroid/graphics/Matrix;

    sget-object v1, Lcom/android/launcher3/Utilities;->sPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 207
    sget-object v0, Lcom/android/launcher3/Utilities;->sPoint:[F

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, p2, v3

    .line 208
    sget-object v0, Lcom/android/launcher3/Utilities;->sPoint:[F

    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, p2, v4

    .line 209
    return-void
.end method

.method public static pointInView(Landroid/view/View;FFF)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 218
    neg-float v1, p3

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    neg-float v1, p3

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p3

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 219
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p3

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 218
    :cond_0
    return v0
.end method

.method public static pxFromDp(FLandroid/util/DisplayMetrics;)I
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static pxFromSp(FLandroid/util/DisplayMetrics;)I
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static scaleRectAboutCenter(Landroid/graphics/Rect;F)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 234
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 236
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 237
    neg-int v2, v0

    neg-int v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 239
    iget v2, p0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 240
    iget v2, p0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 241
    iget v2, p0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 242
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 244
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 246
    :cond_0
    return-void
.end method

.method public static sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 607
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 606
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 608
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 610
    invoke-virtual {p0, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 611
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 614
    :cond_0
    return-void
.end method

.method public static shrinkRect(Landroid/graphics/Rect;FF)F
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    .line 249
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 250
    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 251
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float v2, p1, v0

    mul-float/2addr v1, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 252
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 253
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v1

    iput v1, p0, Landroid/graphics/Rect;->right:I

    .line 255
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sub-float v2, p2, v0

    mul-float/2addr v1, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 256
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 257
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v1

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 259
    :cond_0
    return v0
.end method

.method public static singletonHashSet(Ljava/lang/Object;)Ljava/util/HashSet;
    .locals 2

    .prologue
    .line 645
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 646
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 647
    return-object v0
.end method

.method public static trim(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 412
    if-nez p0, :cond_0

    .line 413
    return-object v0

    .line 417
    :cond_0
    sget-object v0, Lcom/android/launcher3/Utilities;->sTrimPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 418
    const-string/jumbo v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wrapForTts(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 534
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 535
    new-instance v1, Landroid/text/style/TtsSpan$TextBuilder;

    invoke-direct {v1, p1}, Landroid/text/style/TtsSpan$TextBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$TextBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    .line 536
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x12

    .line 535
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 537
    return-object v0
.end method
