.class public final Landroid/support/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ahc:Landroid/support/a/e;

.field private ahd:D

.field ahe:D

.field private ahf:D

.field private ahg:D

.field private ahh:Z

.field ahi:D

.field private ahj:D

.field private ahk:D

.field private ahl:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-wide v0, 0x4097700000000000L    # 1500.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/a/c;->ahi:D

    .line 84
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Landroid/support/a/c;->ahe:D

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/a/c;->ahh:Z

    .line 103
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Landroid/support/a/c;->ahd:D

    .line 106
    new-instance v0, Landroid/support/a/e;

    invoke-direct {v0}, Landroid/support/a/e;-><init>()V

    iput-object v0, p0, Landroid/support/a/c;->ahc:Landroid/support/a/e;

    .line 114
    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-wide v0, 0x4097700000000000L    # 1500.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/a/c;->ahi:D

    .line 84
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Landroid/support/a/c;->ahe:D

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/a/c;->ahh:Z

    .line 103
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Landroid/support/a/c;->ahd:D

    .line 106
    new-instance v0, Landroid/support/a/e;

    invoke-direct {v0}, Landroid/support/a/e;-><init>()V

    iput-object v0, p0, Landroid/support/a/c;->ahc:Landroid/support/a/e;

    .line 122
    float-to-double v0, p1

    iput-wide v0, p0, Landroid/support/a/c;->ahd:D

    .line 123
    return-void
.end method

.method private init()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 244
    iget-boolean v0, p0, Landroid/support/a/c;->ahh:Z

    if-nez v0, :cond_0

    .line 248
    iget-wide v0, p0, Landroid/support/a/c;->ahd:D

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 249
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Error: Final position of the spring must be set before the animation starts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_0
    return-void

    .line 253
    :cond_1
    iget-wide v0, p0, Landroid/support/a/c;->ahe:D

    cmpl-double v0, v0, v8

    if-lez v0, :cond_3

    .line 255
    iget-wide v0, p0, Landroid/support/a/c;->ahe:D

    neg-double v0, v0

    iget-wide v2, p0, Landroid/support/a/c;->ahi:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroid/support/a/c;->ahi:D

    iget-wide v4, p0, Landroid/support/a/c;->ahe:D

    iget-wide v6, p0, Landroid/support/a/c;->ahe:D

    mul-double/2addr v4, v6

    sub-double/2addr v4, v8

    .line 256
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/support/a/c;->ahk:D

    .line 257
    iget-wide v0, p0, Landroid/support/a/c;->ahe:D

    neg-double v0, v0

    iget-wide v2, p0, Landroid/support/a/c;->ahi:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroid/support/a/c;->ahi:D

    iget-wide v4, p0, Landroid/support/a/c;->ahe:D

    iget-wide v6, p0, Landroid/support/a/c;->ahe:D

    mul-double/2addr v4, v6

    sub-double/2addr v4, v8

    .line 258
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/support/a/c;->ahf:D

    .line 264
    :cond_2
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/a/c;->ahh:Z

    .line 265
    return-void

    .line 259
    :cond_3
    iget-wide v0, p0, Landroid/support/a/c;->ahe:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Landroid/support/a/c;->ahe:D

    cmpg-double v0, v0, v8

    if-gez v0, :cond_2

    .line 261
    iget-wide v0, p0, Landroid/support/a/c;->ahi:D

    iget-wide v2, p0, Landroid/support/a/c;->ahe:D

    iget-wide v4, p0, Landroid/support/a/c;->ahe:D

    mul-double/2addr v2, v4

    sub-double v2, v8, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/support/a/c;->ahl:D

    goto :goto_0
.end method


# virtual methods
.method public aun(FF)Z
    .locals 4

    .prologue
    .line 229
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Landroid/support/a/c;->ahg:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 230
    invoke-virtual {p0}, Landroid/support/a/c;->aur()F

    move-result v0

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Landroid/support/a/c;->ahj:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 231
    const/4 v0, 0x1

    return v0

    .line 233
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public auo(F)Landroid/support/a/c;
    .locals 2

    .prologue
    .line 170
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Damping ratio must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    float-to-double v0, p1

    iput-wide v0, p0, Landroid/support/a/c;->ahe:D

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/a/c;->ahh:Z

    .line 176
    return-object p0
.end method

.method public aup(F)Landroid/support/a/c;
    .locals 2

    .prologue
    .line 195
    float-to-double v0, p1

    iput-wide v0, p0, Landroid/support/a/c;->ahd:D

    .line 196
    return-object p0
.end method

.method auq(DDJ)Landroid/support/a/e;
    .locals 17

    .prologue
    .line 273
    invoke-direct/range {p0 .. p0}, Landroid/support/a/c;->init()V

    .line 275
    move-wide/from16 v0, p5

    long-to-double v2, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    .line 276
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/a/c;->ahd:D

    sub-double v6, p1, v4

    .line 279
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/a/c;->ahe:D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v8

    if-lez v4, :cond_0

    .line 281
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/a/c;->ahf:D

    mul-double/2addr v4, v6

    sub-double v4, v4, p3

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/support/a/c;->ahf:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/support/a/c;->ahk:D

    sub-double/2addr v8, v10

    div-double/2addr v4, v8

    sub-double v8, v6, v4

    .line 283
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/a/c;->ahf:D

    mul-double/2addr v4, v6

    sub-double v4, v4, p3

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/support/a/c;->ahf:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/support/a/c;->ahk:D

    sub-double/2addr v6, v10

    div-double v6, v4, v6

    .line 285
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/a/c;->ahf:D

    mul-double/2addr v4, v2

    const-wide v10, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/support/a/c;->ahk:D

    mul-double/2addr v10, v2

    const-wide v12, 0x4005bf0a8b145769L    # Math.E

    .line 286
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v10, v6

    add-double/2addr v4, v10

    .line 287
    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/support/a/c;->ahf:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/support/a/c;->ahf:D

    mul-double/2addr v10, v2

    const-wide v12, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/support/a/c;->ahk:D

    mul-double/2addr v6, v10

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/support/a/c;->ahk:D

    mul-double/2addr v2, v10

    const-wide v10, 0x4005bf0a8b145769L    # Math.E

    .line 288
    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v8

    .line 310
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/a/c;->ahc:Landroid/support/a/e;

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/support/a/c;->ahd:D

    add-double/2addr v4, v8

    double-to-float v4, v4

    iput v4, v6, Landroid/support/a/e;->ahn:F

    .line 311
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/a/c;->ahc:Landroid/support/a/e;

    double-to-float v2, v2

    iput v2, v4, Landroid/support/a/e;->mVelocity:F

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/a/c;->ahc:Landroid/support/a/e;

    return-object v2

    .line 289
    :cond_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/a/c;->ahe:D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v8

    if-nez v4, :cond_1

    .line 292
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/a/c;->ahi:D

    mul-double/2addr v4, v6

    add-double v8, p3, v4

    .line 293
    mul-double v4, v8, v2

    add-double/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/support/a/c;->ahi:D

    neg-double v10, v10

    mul-double/2addr v10, v2

    const-wide v12, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v4, v10

    .line 294
    mul-double v10, v8, v2

    add-double/2addr v6, v10

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/support/a/c;->ahi:D

    neg-double v10, v10

    mul-double/2addr v10, v2

    const-wide v12, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v6, v10

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/support/a/c;->ahi:D

    neg-double v10, v10

    mul-double/2addr v6, v10

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/support/a/c;->ahi:D

    neg-double v10, v10

    mul-double/2addr v2, v10

    const-wide v10, 0x4005bf0a8b145769L    # Math.E

    .line 295
    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v8

    add-double/2addr v2, v6

    goto :goto_0

    .line 299
    :cond_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/a/c;->ahl:D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double v4, v8, v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/support/a/c;->ahe:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/support/a/c;->ahi:D

    mul-double/2addr v8, v10

    mul-double/2addr v8, v6

    add-double v8, v8, p3

    mul-double/2addr v8, v4

    .line 301
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/a/c;->ahe:D

    neg-double v4, v4

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/support/a/c;->ahi:D

    mul-double/2addr v4, v10

    mul-double/2addr v4, v2

    const-wide v10, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/support/a/c;->ahl:D

    mul-double/2addr v10, v2

    .line 302
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v6

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/support/a/c;->ahl:D

    mul-double/2addr v12, v2

    .line 303
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v8

    add-double/2addr v10, v12

    mul-double/2addr v4, v10

    .line 304
    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/support/a/c;->ahi:D

    neg-double v10, v10

    mul-double/2addr v10, v4

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/support/a/c;->ahe:D

    mul-double/2addr v10, v12

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/support/a/c;->ahe:D

    neg-double v12, v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/support/a/c;->ahi:D

    mul-double/2addr v12, v14

    mul-double/2addr v12, v2

    const-wide v14, 0x4005bf0a8b145769L    # Math.E

    .line 305
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/support/a/c;->ahl:D

    neg-double v14, v14

    mul-double/2addr v6, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/support/a/c;->ahl:D

    mul-double/2addr v14, v2

    .line 306
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v6, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/support/a/c;->ahl:D

    mul-double/2addr v8, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/support/a/c;->ahl:D

    mul-double/2addr v2, v14

    .line 307
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v8

    add-double/2addr v2, v6

    mul-double/2addr v2, v12

    add-double/2addr v2, v10

    goto/16 :goto_0
.end method

.method public aur()F
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Landroid/support/a/c;->ahd:D

    double-to-float v0, v0

    return v0
.end method

.method public aus(F)Landroid/support/a/c;
    .locals 2

    .prologue
    .line 136
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Spring stiffness constant must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/a/c;->ahi:D

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/a/c;->ahh:Z

    .line 142
    return-object p0
.end method

.method aut(D)V
    .locals 5

    .prologue
    .line 326
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/a/c;->ahj:D

    .line 327
    iget-wide v0, p0, Landroid/support/a/c;->ahj:D

    const-wide v2, 0x404f400000000000L    # 62.5

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/support/a/c;->ahg:D

    .line 328
    return-void
.end method
