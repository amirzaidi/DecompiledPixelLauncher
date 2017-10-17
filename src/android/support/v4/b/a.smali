.class public final Landroid/support/v4/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ado:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v4/b/a;->ado:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static aqM(II)I
    .locals 2

    .prologue
    .line 63
    rsub-int v0, p1, 0xff

    rsub-int v1, p0, 0xff

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xff

    rsub-int v0, v0, 0xff

    return v0
.end method

.method public static aqN(II)D
    .locals 6

    .prologue
    const/16 v1, 0xff

    const-wide v4, 0x3fa999999999999aL    # 0.05

    .line 91
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 95
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 100
    :goto_0
    invoke-static {p0}, Landroid/support/v4/b/a;->aqR(I)D

    move-result-wide v0

    add-double/2addr v0, v4

    .line 101
    invoke-static {p1}, Landroid/support/v4/b/a;->aqR(I)D

    move-result-wide v2

    add-double/2addr v2, v4

    .line 104
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double v0, v4, v0

    return-wide v0

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "background can not be translucent: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1
    invoke-static {p0, p1}, Landroid/support/v4/b/a;->arg(II)I

    move-result p0

    goto :goto_0
.end method

.method private static aqO()[D
    .locals 2

    .prologue
    .line 610
    sget-object v0, Landroid/support/v4/b/a;->ado:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 611
    if-eqz v0, :cond_0

    .line 615
    :goto_0
    return-object v0

    .line 612
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [D

    .line 613
    sget-object v1, Landroid/support/v4/b/a;->ado:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static aqP(IIIII)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 67
    if-eqz p4, :cond_0

    .line 68
    mul-int/lit16 v0, p0, 0xff

    mul-int/2addr v0, p1

    mul-int v1, p2, p3

    rsub-int v2, p1, 0xff

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit16 v1, p4, 0xff

    div-int/2addr v0, v1

    return v0

    .line 67
    :cond_0
    return v0
.end method

.method public static aqQ(III[F)V
    .locals 11

    .prologue
    const/high16 v10, 0x43b40000    # 360.0f

    const/high16 v4, 0x437f0000    # 255.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 173
    int-to-float v0, p0

    div-float/2addr v0, v4

    .line 174
    int-to-float v2, p1

    div-float/2addr v2, v4

    .line 175
    int-to-float v3, p2

    div-float/2addr v3, v4

    .line 177
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 178
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 179
    sub-float v6, v4, v5

    .line 182
    add-float v7, v4, v5

    div-float/2addr v7, v9

    .line 184
    cmpl-float v5, v4, v5

    if-nez v5, :cond_1

    move v0, v1

    move v2, v1

    .line 199
    :goto_0
    const/high16 v3, 0x42700000    # 60.0f

    mul-float/2addr v0, v3

    rem-float/2addr v0, v10

    .line 200
    cmpg-float v3, v0, v1

    if-gez v3, :cond_0

    .line 201
    add-float/2addr v0, v10

    .line 204
    :cond_0
    invoke-static {v0, v1, v10}, Landroid/support/v4/b/a;->are(FFF)F

    move-result v0

    const/4 v3, 0x0

    aput v0, p3, v3

    .line 205
    invoke-static {v2, v1, v8}, Landroid/support/v4/b/a;->are(FFF)F

    move-result v0

    const/4 v2, 0x1

    aput v0, p3, v2

    .line 206
    invoke-static {v7, v1, v8}, Landroid/support/v4/b/a;->are(FFF)F

    move-result v0

    const/4 v1, 0x2

    aput v0, p3, v1

    .line 207
    return-void

    .line 188
    :cond_1
    cmpl-float v5, v4, v0

    if-nez v5, :cond_2

    .line 189
    sub-float v0, v2, v3

    div-float/2addr v0, v6

    const/high16 v2, 0x40c00000    # 6.0f

    rem-float/2addr v0, v2

    .line 196
    :goto_1
    mul-float v2, v9, v7

    sub-float/2addr v2, v8

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v8, v2

    div-float v2, v6, v2

    goto :goto_0

    .line 190
    :cond_2
    cmpl-float v4, v4, v2

    if-nez v4, :cond_3

    .line 191
    sub-float v0, v3, v0

    div-float/2addr v0, v6

    add-float/2addr v0, v9

    goto :goto_1

    .line 193
    :cond_3
    sub-float/2addr v0, v2

    div-float/2addr v0, v6

    const/high16 v2, 0x40800000    # 4.0f

    add-float/2addr v0, v2

    goto :goto_1
.end method

.method public static aqR(I)D
    .locals 4

    .prologue
    .line 77
    invoke-static {}, Landroid/support/v4/b/a;->aqO()[D

    move-result-object v0

    .line 78
    invoke-static {p0, v0}, Landroid/support/v4/b/a;->aqU(I[D)V

    .line 80
    const/4 v1, 0x1

    aget-wide v0, v0, v1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static aqS(DDD)I
    .locals 8

    .prologue
    .line 502
    invoke-static {}, Landroid/support/v4/b/a;->aqO()[D

    move-result-object v6

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .line 503
    invoke-static/range {v0 .. v6}, Landroid/support/v4/b/a;->arb(DDD[D)V

    .line 504
    const/4 v0, 0x0

    aget-wide v0, v6, v0

    const/4 v2, 0x1

    aget-wide v2, v6, v2

    const/4 v4, 0x2

    aget-wide v4, v6, v4

    invoke-static/range {v0 .. v5}, Landroid/support/v4/b/a;->aqY(DDD)I

    move-result v0

    return v0
.end method

.method private static aqT(D)D
    .locals 4

    .prologue
    .line 525
    const-wide v0, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    .line 526
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x408c3a6666666666L    # 903.3

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public static aqU(I[D)V
    .locals 3

    .prologue
    .line 353
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Landroid/support/v4/b/a;->ard(III[D)V

    .line 354
    return-void
.end method

.method public static aqV(DDD[D)V
    .locals 12

    .prologue
    .line 413
    move-object/from16 v0, p6

    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 416
    const-wide v2, 0x4057c3020c49ba5eL    # 95.047

    div-double v2, p0, v2

    invoke-static {v2, v3}, Landroid/support/v4/b/a;->aqT(D)D

    move-result-wide v2

    .line 417
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double v4, p2, v4

    invoke-static {v4, v5}, Landroid/support/v4/b/a;->aqT(D)D

    move-result-wide v4

    .line 418
    const-wide v6, 0x405b3883126e978dL    # 108.883

    div-double v6, p4, v6

    invoke-static {v6, v7}, Landroid/support/v4/b/a;->aqT(D)D

    move-result-wide v6

    .line 419
    const-wide/high16 v8, 0x405d000000000000L    # 116.0

    mul-double/2addr v8, v4

    const-wide/high16 v10, 0x4030000000000000L    # 16.0

    sub-double/2addr v8, v10

    const-wide/16 v10, 0x0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    const/4 v10, 0x0

    aput-wide v8, p6, v10

    .line 420
    sub-double/2addr v2, v4

    const-wide v8, 0x407f400000000000L    # 500.0

    mul-double/2addr v2, v8

    const/4 v8, 0x1

    aput-wide v2, p6, v8

    .line 421
    sub-double v2, v4, v6

    const-wide/high16 v4, 0x4069000000000000L    # 200.0

    mul-double/2addr v2, v4

    const/4 v4, 0x2

    aput-wide v2, p6, v4

    .line 422
    return-void

    .line 414
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "outLab must have a length of 3."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static aqW(I[F)V
    .locals 3

    .prologue
    .line 221
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Landroid/support/v4/b/a;->aqQ(III[F)V

    .line 222
    return-void
.end method

.method private static aqX(III)I
    .locals 0

    .prologue
    .line 521
    if-lt p0, p1, :cond_0

    if-gt p0, p2, :cond_1

    :goto_0
    return p0

    :cond_0
    move p0, p1

    goto :goto_0

    :cond_1
    move p0, p2

    goto :goto_0
.end method

.method public static aqY(DDD)I
    .locals 8

    .prologue
    .line 476
    const-wide v0, 0x4009ecbfb15b573fL    # 3.2406

    mul-double/2addr v0, p0

    const-wide v2, -0x400767a0f9096bbaL    # -1.5372

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    const-wide v2, -0x402016f0068db8bbL    # -0.4986

    mul-double/2addr v2, p4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 477
    const-wide v2, -0x4010fec56d5cfaadL    # -0.9689

    mul-double/2addr v2, p0

    const-wide v4, 0x3ffe0346dc5d6388L    # 1.8758

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    const-wide v4, 0x3fa53f7ced916873L    # 0.0415

    mul-double/2addr v4, p4

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    .line 478
    const-wide v4, 0x3fac84b5dcc63f14L    # 0.0557

    mul-double/2addr v4, p0

    const-wide v6, -0x4035e353f7ced917L    # -0.204

    mul-double/2addr v6, p2

    add-double/2addr v4, v6

    const-wide v6, 0x3ff0e978d4fdf3b6L    # 1.057

    mul-double/2addr v6, p4

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    .line 480
    const-wide v6, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v6, v0, v6

    if-lez v6, :cond_0

    const-wide v6, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v6, 0x3ff0e147ae147ae1L    # 1.055

    mul-double/2addr v0, v6

    const-wide v6, 0x3fac28f5c28f5c29L    # 0.055

    sub-double/2addr v0, v6

    .line 481
    :goto_0
    const-wide v6, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v6, v2, v6

    if-lez v6, :cond_1

    const-wide v6, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v6, 0x3ff0e147ae147ae1L    # 1.055

    mul-double/2addr v2, v6

    const-wide v6, 0x3fac28f5c28f5c29L    # 0.055

    sub-double/2addr v2, v6

    .line 482
    :goto_1
    const-wide v6, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v6, v4, v6

    if-lez v6, :cond_2

    const-wide v6, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide v6, 0x3ff0e147ae147ae1L    # 1.055

    mul-double/2addr v4, v6

    const-wide v6, 0x3fac28f5c28f5c29L    # 0.055

    sub-double/2addr v4, v6

    .line 484
    :goto_2
    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v6

    .line 485
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x0

    const/16 v6, 0xff

    invoke-static {v0, v1, v6}, Landroid/support/v4/b/a;->aqX(III)I

    move-result v0

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v6

    .line 486
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/support/v4/b/a;->aqX(III)I

    move-result v1

    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v4

    .line 487
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x0

    const/16 v4, 0xff

    invoke-static {v2, v3, v4}, Landroid/support/v4/b/a;->aqX(III)I

    move-result v2

    .line 484
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0

    .line 480
    :cond_0
    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    mul-double/2addr v0, v6

    goto :goto_0

    .line 481
    :cond_1
    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    mul-double/2addr v2, v6

    goto :goto_1

    .line 482
    :cond_2
    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    mul-double/2addr v4, v6

    goto :goto_2
.end method

.method public static aqZ(III[D)V
    .locals 7

    .prologue
    .line 331
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/b/a;->ard(III[D)V

    .line 333
    const/4 v0, 0x0

    aget-wide v0, p3, v0

    const/4 v2, 0x1

    aget-wide v2, p3, v2

    const/4 v4, 0x2

    aget-wide v4, p3, v4

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Landroid/support/v4/b/a;->aqV(DDD[D)V

    .line 335
    return-void
.end method

.method public static ara(I[D)V
    .locals 3

    .prologue
    .line 310
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Landroid/support/v4/b/a;->aqZ(III[D)V

    .line 311
    return-void
.end method

.method public static arb(DDD[D)V
    .locals 10

    .prologue
    .line 445
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    add-double/2addr v0, p0

    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    div-double v2, v0, v2

    .line 446
    const-wide v0, 0x407f400000000000L    # 500.0

    div-double v0, p2, v0

    add-double v4, v0, v2

    .line 447
    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    div-double v0, p4, v0

    sub-double v6, v2, v0

    .line 449
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 450
    const-wide v8, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v8, v0, v8

    if-lez v8, :cond_0

    .line 451
    :goto_0
    const-wide v4, 0x401fff9da4c11507L    # 7.9996247999999985

    cmpl-double v4, p0, v4

    if-lez v4, :cond_1

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 453
    :goto_1
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 454
    const-wide v8, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v8, v4, v8

    if-lez v8, :cond_2

    .line 456
    :goto_2
    const-wide v6, 0x4057c3020c49ba5eL    # 95.047

    mul-double/2addr v0, v6

    const/4 v6, 0x0

    aput-wide v0, p6, v6

    .line 457
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    const/4 v2, 0x1

    aput-wide v0, p6, v2

    .line 458
    const-wide v0, 0x405b3883126e978dL    # 108.883

    mul-double/2addr v0, v4

    const/4 v2, 0x2

    aput-wide v0, p6, v2

    .line 459
    return-void

    .line 450
    :cond_0
    const-wide/high16 v0, 0x405d000000000000L    # 116.0

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    sub-double/2addr v0, v4

    const-wide v4, 0x408c3a6666666666L    # 903.3

    div-double/2addr v0, v4

    goto :goto_0

    .line 451
    :cond_1
    const-wide v2, 0x408c3a6666666666L    # 903.3

    div-double v2, p0, v2

    goto :goto_1

    .line 454
    :cond_2
    const-wide/high16 v4, 0x405d000000000000L    # 116.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    sub-double/2addr v4, v6

    const-wide v6, 0x408c3a6666666666L    # 903.3

    div-double/2addr v4, v6

    goto :goto_2
.end method

.method public static arc(II)I
    .locals 2

    .prologue
    .line 297
    if-gez p1, :cond_1

    .line 298
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "alpha must be between 0 and 255."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_1
    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 300
    const v0, 0xffffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static ard(III[D)V
    .locals 10

    .prologue
    .line 376
    array-length v0, p3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 380
    int-to-double v0, p0

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    .line 381
    const-wide v2, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    const-wide v2, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v0, v2

    .line 382
    :goto_0
    int-to-double v2, p1

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v4

    .line 383
    const-wide v4, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v4, v2, v4

    if-gez v4, :cond_2

    const-wide v4, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v2, v4

    .line 384
    :goto_1
    int-to-double v4, p2

    const-wide v6, 0x406fe00000000000L    # 255.0

    div-double/2addr v4, v6

    .line 385
    const-wide v6, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v6, v4, v6

    if-gez v6, :cond_3

    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v4, v6

    .line 387
    :goto_2
    const-wide v6, 0x3fda64c2f837b4a2L    # 0.4124

    mul-double/2addr v6, v0

    const-wide v8, 0x3fd6e2eb1c432ca5L    # 0.3576

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    const-wide v8, 0x3fc71a9fbe76c8b4L    # 0.1805

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    const/4 v8, 0x0

    aput-wide v6, p3, v8

    .line 388
    const-wide v6, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v6, v0

    const-wide v8, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    const-wide v8, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    const/4 v8, 0x1

    aput-wide v6, p3, v8

    .line 389
    const-wide v6, 0x3f93c36113404ea5L    # 0.0193

    mul-double/2addr v0, v6

    const-wide v6, 0x3fbe83e425aee632L    # 0.1192

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    const-wide v2, 0x3fee6a7ef9db22d1L    # 0.9505

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    const/4 v2, 0x2

    aput-wide v0, p3, v2

    .line 390
    return-void

    .line 377
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outXyz must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_1
    const-wide v2, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v0, v2

    const-wide v2, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v0, v2

    const-wide v2, 0x4003333333333333L    # 2.4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto/16 :goto_0

    .line 383
    :cond_2
    const-wide v4, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v2, v4

    const-wide v4, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v2, v4

    const-wide v4, 0x4003333333333333L    # 2.4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    goto/16 :goto_1

    .line 385
    :cond_3
    const-wide v6, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v4, v6

    const-wide v6, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v4, v6

    const-wide v6, 0x4003333333333333L    # 2.4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    goto/16 :goto_2
.end method

.method private static are(FFF)F
    .locals 1

    .prologue
    .line 517
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method public static arf(IIF)I
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/16 v0, 0xff

    .line 119
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 125
    invoke-static {p0, v0}, Landroid/support/v4/b/a;->arc(II)I

    move-result v1

    .line 126
    invoke-static {v1, p1}, Landroid/support/v4/b/a;->aqN(II)D

    move-result-wide v4

    .line 127
    float-to-double v6, p2

    cmpg-double v1, v4, v6

    if-gez v1, :cond_1

    .line 129
    const/4 v0, -0x1

    return v0

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "background can not be translucent: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v3, v2

    .line 137
    :goto_0
    const/16 v1, 0xa

    if-le v3, v1, :cond_3

    .line 154
    :cond_2
    return v0

    .line 137
    :cond_3
    sub-int v1, v0, v2

    const/4 v4, 0x1

    if-le v1, v4, :cond_2

    .line 139
    add-int v1, v2, v0

    div-int/lit8 v1, v1, 0x2

    .line 141
    invoke-static {p0, v1}, Landroid/support/v4/b/a;->arc(II)I

    move-result v4

    .line 142
    invoke-static {v4, p1}, Landroid/support/v4/b/a;->aqN(II)D

    move-result-wide v4

    .line 144
    float-to-double v6, p2

    cmpg-double v4, v4, v6

    if-gez v4, :cond_4

    .line 150
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    .line 151
    goto :goto_0

    :cond_4
    move v0, v1

    move v1, v2

    .line 147
    goto :goto_1
.end method

.method public static arg(II)I
    .locals 7

    .prologue
    .line 48
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 49
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 50
    invoke-static {v1, v0}, Landroid/support/v4/b/a;->aqM(II)I

    move-result v2

    .line 52
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 53
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 52
    invoke-static {v3, v1, v4, v0, v2}, Landroid/support/v4/b/a;->aqP(IIIII)I

    move-result v3

    .line 54
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 55
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 54
    invoke-static {v4, v1, v5, v0, v2}, Landroid/support/v4/b/a;->aqP(IIIII)I

    move-result v4

    .line 56
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 57
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 56
    invoke-static {v5, v1, v6, v0, v2}, Landroid/support/v4/b/a;->aqP(IIIII)I

    move-result v0

    .line 59
    invoke-static {v2, v3, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method static circularInterpolate(FFF)F
    .locals 3

    .prologue
    const/high16 v2, 0x43b40000    # 360.0f

    .line 599
    sub-float v0, p1, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 600
    cmpl-float v0, p1, p0

    if-lez v0, :cond_1

    .line 601
    add-float/2addr p0, v2

    .line 606
    :cond_0
    :goto_0
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    rem-float/2addr v0, v2

    return v0

    .line 603
    :cond_1
    add-float/2addr p1, v2

    goto :goto_0
.end method
