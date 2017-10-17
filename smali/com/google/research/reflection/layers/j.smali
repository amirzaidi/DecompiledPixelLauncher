.class public Lcom/google/research/reflection/layers/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private MT:I

.field private MU:Lcom/google/research/reflection/layers/b;

.field private MV:Lcom/google/research/reflection/layers/b;

.field private MW:Lcom/google/research/reflection/layers/b;

.field private MX:Lcom/google/research/reflection/layers/b;

.field private MY:Lcom/google/research/reflection/layers/b;

.field private MZ:Lcom/google/research/reflection/layers/b;

.field private Na:[Lcom/google/research/reflection/layers/b;

.field private Nb:Lcom/google/research/reflection/layers/b;

.field private Nc:Lcom/google/research/reflection/layers/b;

.field private Nd:I

.field private Ne:Lcom/google/research/reflection/layers/b;

.field private Nf:Lcom/google/research/reflection/common/a;

.field private Ng:Lcom/google/research/reflection/common/a;

.field private Nh:Lcom/google/research/reflection/layers/b;

.field private Ni:I

.field private Nj:Lcom/google/research/reflection/layers/b;

.field private Nk:Lcom/google/research/reflection/common/a;

.field private Nl:Lcom/google/research/reflection/layers/b;

.field private Nm:I

.field private Nn:Lcom/google/research/reflection/layers/b;

.field private No:Lcom/google/research/reflection/common/a;

.field private Np:Lcom/google/research/reflection/common/a;

.field private Nq:Lcom/google/research/reflection/layers/b;

.field private Nr:Lcom/google/research/reflection/common/a;

.field private Ns:Lcom/google/research/reflection/layers/b;

.field private Nt:Lcom/google/research/reflection/layers/b;


# direct methods
.method private static Vu(ZLcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;I[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;III)V
    .locals 15

    .prologue
    .line 368
    const/4 v2, 0x0

    move v14, v2

    :goto_0
    move/from16 v0, p8

    if-lt v14, v0, :cond_0

    .line 386
    return-void

    .line 369
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v0, v2, v14, v1}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v6

    .line 370
    if-nez p0, :cond_2

    .line 373
    if-nez p4, :cond_3

    .line 377
    if-nez p5, :cond_4

    .line 368
    :cond_1
    :goto_1
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_0

    .line 371
    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p1

    move/from16 v5, p7

    invoke-virtual/range {v2 .. v7}, Lcom/google/research/reflection/layers/b;->Vk(ZIID)V

    goto :goto_1

    .line 374
    :cond_3
    aget-object v2, p4, v14

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/reflection/common/d;

    .line 375
    iget v10, v2, Lcom/google/research/reflection/common/d;->Mb:I

    iget v2, v2, Lcom/google/research/reflection/common/d;->Mc:F

    float-to-double v4, v2

    mul-double v12, v4, v6

    const/4 v9, 0x0

    move-object/from16 v8, p1

    move/from16 v11, p7

    invoke-virtual/range {v8 .. v13}, Lcom/google/research/reflection/layers/b;->Vk(ZIID)V

    goto :goto_2

    .line 378
    :cond_4
    const/4 v10, 0x0

    :goto_3
    move/from16 v0, p6

    if-ge v10, v0, :cond_1

    .line 379
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v14, v10}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v2

    .line 380
    mul-double v12, v2, v6

    const/4 v9, 0x0

    move-object/from16 v8, p1

    move/from16 v11, p7

    invoke-virtual/range {v8 .. v13}, Lcom/google/research/reflection/layers/b;->Vk(ZIID)V

    .line 378
    add-int/lit8 v10, v10, 0x1

    goto :goto_3
.end method

.method private Vx(ZLcom/google/research/reflection/layers/b;II[Lcom/google/research/reflection/layers/b;[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;)V
    .locals 9

    .prologue
    .line 357
    const/4 v0, 0x1

    aget-object v2, p5, v0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move v0, p1

    move-object v1, p2

    move-object v4, p6

    move-object/from16 v5, p7

    move v6, p3

    move v8, p4

    invoke-static/range {v0 .. v8}, Lcom/google/research/reflection/layers/j;->Vu(ZLcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;I[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;III)V

    .line 359
    const/4 v0, 0x2

    aget-object v2, p5, v0

    const/4 v3, 0x0

    const/4 v7, 0x1

    move v0, p1

    move-object v1, p2

    move-object v4, p6

    move-object/from16 v5, p7

    move v6, p3

    move v8, p4

    invoke-static/range {v0 .. v8}, Lcom/google/research/reflection/layers/j;->Vu(ZLcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;I[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;III)V

    .line 361
    const/4 v0, 0x4

    aget-object v2, p5, v0

    const/4 v3, 0x0

    const/4 v7, 0x2

    move v0, p1

    move-object v1, p2

    move-object v4, p6

    move-object/from16 v5, p7

    move v6, p3

    move v8, p4

    invoke-static/range {v0 .. v8}, Lcom/google/research/reflection/layers/j;->Vu(ZLcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;I[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;III)V

    .line 363
    return-void
.end method

.method private Vz(I[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;I)D
    .locals 9

    .prologue
    .line 391
    const-wide/16 v0, 0x0

    .line 392
    if-nez p2, :cond_3

    .line 397
    const/4 v2, 0x0

    move v8, v2

    move-wide v2, v0

    move v0, v8

    :goto_0
    iget v1, p0, Lcom/google/research/reflection/layers/j;->Nd:I

    if-lt v0, v1, :cond_4

    .line 402
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-nez p4, :cond_5

    .line 406
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-nez p5, :cond_6

    .line 410
    :cond_2
    return-wide v2

    .line 393
    :cond_3
    aget-object v2, p2, p1

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/common/d;

    .line 394
    iget v1, v0, Lcom/google/research/reflection/common/d;->Mc:F

    float-to-double v6, v1

    iget-object v1, p0, Lcom/google/research/reflection/layers/j;->MW:Lcom/google/research/reflection/layers/b;

    iget v0, v0, Lcom/google/research/reflection/common/d;->Mb:I

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v0, p6}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v0

    mul-double/2addr v0, v6

    add-double/2addr v0, v2

    move-wide v2, v0

    .line 395
    goto :goto_3

    .line 398
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p3, v1, p1, v0}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v4

    iget-object v1, p0, Lcom/google/research/reflection/layers/j;->MW:Lcom/google/research/reflection/layers/b;

    .line 399
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v0, p6}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_5
    iget v1, p0, Lcom/google/research/reflection/layers/j;->MT:I

    if-ge v0, v1, :cond_1

    .line 403
    const/4 v1, 0x0

    invoke-virtual {p4, v1, p1, v0}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v4

    iget-object v1, p0, Lcom/google/research/reflection/layers/j;->Nh:Lcom/google/research/reflection/layers/b;

    .line 404
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v0, p6}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 406
    :cond_6
    iget v1, p0, Lcom/google/research/reflection/layers/j;->Ni:I

    if-ge v0, v1, :cond_2

    .line 407
    const/4 v1, 0x0

    invoke-virtual {p5, v1, p1, v0}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v4

    iget-object v1, p0, Lcom/google/research/reflection/layers/j;->Nj:Lcom/google/research/reflection/layers/b;

    .line 408
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v0, p6}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 406
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method VA()Lcom/google/research/reflection/layers/b;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/google/research/reflection/layers/j;->Ne:Lcom/google/research/reflection/layers/b;

    return-object v0
.end method

.method public VB()V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/research/reflection/layers/j;->Nk:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/common/a;->clear()V

    .line 516
    iget-object v0, p0, Lcom/google/research/reflection/layers/j;->No:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/common/a;->clear()V

    .line 517
    iget-object v0, p0, Lcom/google/research/reflection/layers/j;->Ng:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/common/a;->clear()V

    .line 518
    iget-object v0, p0, Lcom/google/research/reflection/layers/j;->Np:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/common/a;->clear()V

    .line 519
    iget-object v0, p0, Lcom/google/research/reflection/layers/j;->Nf:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/common/a;->clear()V

    .line 520
    iget-object v0, p0, Lcom/google/research/reflection/layers/j;->Nr:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/common/a;->clear()V

    .line 521
    return-void
.end method

.method public Vt(I[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V
    .locals 24

    .prologue
    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/research/reflection/layers/j;->No:Lcom/google/research/reflection/common/a;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/research/reflection/common/a;->Ug(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/research/reflection/layers/b;

    .line 228
    new-instance v2, Lcom/google/research/reflection/layers/b;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/research/reflection/layers/j;->Nm:I

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    .line 229
    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/research/reflection/layers/j;->Nm:I

    if-lt v4, v3, :cond_0

    .line 240
    new-instance v4, Lcom/google/research/reflection/layers/b;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/research/reflection/layers/j;->Nm:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/research/reflection/layers/j;->Ni:I

    invoke-direct {v4, v3, v5}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    .line 241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/research/reflection/layers/j;->Nf:Lcom/google/research/reflection/common/a;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v3, v5}, Lcom/google/research/reflection/common/a;->Ug(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/research/reflection/layers/b;

    .line 242
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/research/reflection/layers/j;->Nk:Lcom/google/research/reflection/common/a;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/google/research/reflection/common/a;->Ug(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Lcom/google/research/reflection/layers/b;

    .line 243
    const/4 v6, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/research/reflection/layers/j;->Nm:I

    if-lt v6, v5, :cond_2

    .line 270
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/research/reflection/layers/j;->Nr:Lcom/google/research/reflection/common/a;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/research/reflection/common/a;->Ug(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/research/reflection/layers/b;

    .line 271
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/research/reflection/layers/j;->Ng:Lcom/google/research/reflection/common/a;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/google/research/reflection/common/a;->Ug(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/research/reflection/layers/b;

    .line 272
    new-instance v6, Lcom/google/research/reflection/layers/b;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/research/reflection/layers/j;->Nm:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/research/reflection/layers/j;->Ni:I

    invoke-direct {v6, v7, v8}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    .line 273
    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/research/reflection/layers/j;->Nm:I

    if-lt v8, v7, :cond_6

    .line 283
    new-instance v8, Lcom/google/research/reflection/layers/b;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/research/reflection/layers/j;->Nm:I

    const/4 v7, 0x1

    invoke-direct {v8, v3, v7}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    .line 284
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/research/reflection/layers/j;->Nf:Lcom/google/research/reflection/common/a;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/research/reflection/common/a;->Ug(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/research/reflection/layers/b;

    .line 285
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/research/reflection/layers/j;->Nk:Lcom/google/research/reflection/common/a;

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v7, v9}, Lcom/google/research/reflection/common/a;->Ug(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v17, v7

    check-cast v17, Lcom/google/research/reflection/layers/b;

    .line 286
    const/4 v10, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/research/reflection/layers/j;->Nm:I

    if-lt v10, v7, :cond_8

    .line 297
    new-instance v10, Lcom/google/research/reflection/layers/b;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/research/reflection/layers/j;->Nm:I

    const/4 v7, 0x1

    invoke-direct {v10, v3, v7}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    .line 298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/research/reflection/layers/j;->Nr:Lcom/google/research/reflection/common/a;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/research/reflection/common/a;->Ug(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/research/reflection/layers/b;

    .line 299
    const/4 v12, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/research/reflection/layers/j;->Nm:I

    if-lt v12, v7, :cond_b

    .line 309
    const/4 v3, 0x5

    new-array v3, v3, [Lcom/google/research/reflection/layers/b;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v10, v3, v4

    const/4 v4, 0x2

    aput-object v8, v3, v4

    const/4 v4, 0x3

    aput-object v6, v3, v4

    const/4 v4, 0x4

    aput-object v2, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/research/reflection/layers/j;->Na:[Lcom/google/research/reflection/layers/b;

    .line 317
    invoke-static {v10, v8}, Lcom/google/research/reflection/layers/b;->Vi(Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)Lcom/google/research/reflection/layers/b;

    move-result-object v3

    .line 316
    invoke-static {v3, v2}, Lcom/google/research/reflection/layers/b;->Vi(Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)Lcom/google/research/reflection/layers/b;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/google/research/reflection/layers/b;->Vi(Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)Lcom/google/research/reflection/layers/b;

    move-result-object v2

    .line 320
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/research/reflection/layers/j;->MW:Lcom/google/research/reflection/layers/b;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/research/reflection/layers/j;->MX:Lcom/google/research/reflection/layers/b;

    invoke-static {v3, v4}, Lcom/google/research/reflection/layers/b;->Vi(Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)Lcom/google/research/reflection/layers/b;

    move-result-object v3

    .line 321
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/research/reflection/layers/j;->MZ:Lcom/google/research/reflection/layers/b;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v3, v5, v4, v6}, Lcom/google/research/reflection/layers/b;->Vb(Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;ZLcom/google/research/reflection/layers/b;Z)Lcom/google/research/reflection/layers/b;

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/research/reflection/layers/j;->Nh:Lcom/google/research/reflection/layers/b;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/research/reflection/layers/j;->Ns:Lcom/google/research/reflection/layers/b;

    invoke-static {v3, v4}, Lcom/google/research/reflection/layers/b;->Vi(Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)Lcom/google/research/reflection/layers/b;

    move-result-object v3

    .line 324
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/research/reflection/layers/j;->Ne:Lcom/google/research/reflection/layers/b;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v3, v5, v4, v6}, Lcom/google/research/reflection/layers/b;->Vb(Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;ZLcom/google/research/reflection/layers/b;Z)Lcom/google/research/reflection/layers/b;

    .line 329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/research/reflection/layers/j;->Nt:Lcom/google/research/reflection/layers/b;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/research/reflection/layers/j;->Nd:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/research/reflection/layers/j;->Nm:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/research/reflection/layers/j;->Na:[Lcom/google/research/reflection/layers/b;

    const/4 v3, 0x0

    move-object/from16 v2, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/google/research/reflection/layers/j;->Vx(ZLcom/google/research/reflection/layers/b;II[Lcom/google/research/reflection/layers/b;[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/research/reflection/layers/j;->MY:Lcom/google/research/reflection/layers/b;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/research/reflection/layers/j;->MT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/research/reflection/layers/j;->Nm:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/research/reflection/layers/j;->Na:[Lcom/google/research/reflection/layers/b;

    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/google/research/reflection/layers/j;->Vx(ZLcom/google/research/reflection/layers/b;II[Lcom/google/research/reflection/layers/b;[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/research/reflection/layers/j;->MU:Lcom/google/research/reflection/layers/b;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/research/reflection/layers/j;->Na:[Lcom/google/research/reflection/layers/b;

    const/4 v4, 0x1

    aget-object v4, v2, v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/research/reflection/layers/j;->Ni:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/research/reflection/layers/j;->Nm:I

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v7, v17

    invoke-static/range {v2 .. v10}, Lcom/google/research/reflection/layers/j;->Vu(ZLcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;I[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;III)V

    .line 335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/research/reflection/layers/j;->MU:Lcom/google/research/reflection/layers/b;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/research/reflection/layers/j;->Na:[Lcom/google/research/reflection/layers/b;

    const/4 v4, 0x2

    aget-object v4, v2, v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/research/reflection/layers/j;->Ni:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/research/reflection/layers/j;->Nm:I

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    move-object/from16 v7, v17

    invoke-static/range {v2 .. v10}, Lcom/google/research/reflection/layers/j;->Vu(ZLcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;I[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;III)V

    .line 337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/research/reflection/layers/j;->MU:Lcom/google/research/reflection/layers/b;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/research/reflection/layers/j;->Na:[Lcom/google/research/reflection/layers/b;

    const/4 v4, 0x4

    aget-object v4, v2, v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/research/reflection/layers/j;->Ni:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/research/reflection/layers/j;->Nm:I

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x2

    move-object/from16 v7, v16

    invoke-static/range {v2 .. v10}, Lcom/google/research/reflection/layers/j;->Vu(ZLcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;I[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;III)V

    .line 339
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/research/reflection/layers/j;->Nb:Lcom/google/research/reflection/layers/b;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/research/reflection/layers/j;->Nm:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/research/reflection/layers/j;->Na:[Lcom/google/research/reflection/layers/b;

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/google/research/reflection/layers/j;->Vx(ZLcom/google/research/reflection/layers/b;II[Lcom/google/research/reflection/layers/b;[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;)V

    .line 344
    const/4 v5, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/research/reflection/layers/j;->Ni:I

    if-lt v5, v2, :cond_d

    .line 352
    return-void

    .line 230
    :cond_0
    const-wide/16 v6, 0x0

    .line 231
    const/4 v3, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/research/reflection/layers/j;->Ni:I

    if-lt v3, v5, :cond_1

    .line 235
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/research/reflection/layers/j;->Np:Lcom/google/research/reflection/common/a;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/research/reflection/common/a;->Ug(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/research/reflection/layers/b;

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v4, v8}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v8

    .line 236
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v8

    mul-double/2addr v8, v12

    mul-double/2addr v6, v8

    .line 237
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/research/reflection/layers/b;->Vd(ZIID)V

    .line 229
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 232
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v10, v5, v4, v3}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v8

    .line 233
    const/4 v5, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v4, v3}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v12

    mul-double/2addr v8, v12

    add-double/2addr v6, v8

    .line 231
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 244
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/research/reflection/layers/j;->Np:Lcom/google/research/reflection/common/a;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/google/research/reflection/common/a;->Ug(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/research/reflection/layers/b;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v6, v8}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v14

    .line 247
    if-nez v3, :cond_3

    .line 250
    const-wide/16 v8, 0x0

    move-wide v12, v8

    .line 252
    :goto_7
    const/4 v7, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/research/reflection/layers/j;->Ni:I

    if-lt v7, v5, :cond_4

    .line 243
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 248
    :cond_3
    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v8

    move-wide v12, v8

    goto :goto_7

    .line 253
    :cond_4
    const/4 v5, 0x0

    invoke-virtual {v10, v5, v6, v7}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v8

    .line 254
    mul-double/2addr v8, v8

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v8, v18, v8

    mul-double/2addr v8, v14

    .line 255
    const/4 v5, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v6, v7}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v18

    mul-double v8, v8, v18

    .line 256
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/research/reflection/layers/j;->Na:[Lcom/google/research/reflection/layers/b;

    const/4 v11, 0x0

    aget-object v5, v5, v11

    if-nez v5, :cond_5

    .line 264
    :goto_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/research/reflection/layers/j;->Nj:Lcom/google/research/reflection/layers/b;

    const/4 v11, 0x0

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v5, v11, v7, v0}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v18

    const/4 v5, 0x0

    .line 265
    const/4 v11, 0x0

    invoke-virtual {v2, v11, v6, v5}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v8, v8, v18

    .line 266
    const/4 v5, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/google/research/reflection/layers/b;->Vd(ZIID)V

    .line 252
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 257
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/research/reflection/layers/j;->Na:[Lcom/google/research/reflection/layers/b;

    const/4 v11, 0x0

    aget-object v5, v5, v11

    .line 258
    const/4 v11, 0x0

    invoke-virtual {v5, v11, v6, v7}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v18

    mul-double v18, v18, v12

    add-double v8, v8, v18

    .line 259
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/research/reflection/layers/j;->Nj:Lcom/google/research/reflection/layers/b;

    const/4 v11, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v11, v7, v0}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/research/reflection/layers/j;->Na:[Lcom/google/research/reflection/layers/b;

    const/4 v11, 0x1

    aget-object v5, v5, v11

    const/4 v11, 0x0

    .line 260
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0, v6, v11}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v8, v8, v18

    .line 261
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/research/reflection/layers/j;->Nj:Lcom/google/research/reflection/layers/b;

    const/4 v11, 0x0

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v11, v7, v0}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/research/reflection/layers/j;->Na:[Lcom/google/research/reflection/layers/b;

    const/4 v11, 0x2

    aget-object v5, v5, v11

    const/4 v11, 0x0

    .line 262
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0, v6, v11}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v8, v8, v18

    goto :goto_9

    .line 274
    :cond_6
    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v12

    .line 275
    const/4 v9, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/research/reflection/layers/j;->Ni:I

    if-lt v9, v7, :cond_7

    .line 273
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 276
    :cond_7
    const/4 v7, 0x0

    invoke-virtual {v5, v7, v8, v9}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v10

    .line 277
    mul-double/2addr v10, v10

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double v10, v14, v10

    mul-double/2addr v10, v12

    .line 278
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v8, v9}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v14

    mul-double/2addr v10, v14

    .line 279
    const/4 v7, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/google/research/reflection/layers/b;->Vd(ZIID)V

    .line 275
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 287
    :cond_8
    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v10, v9}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v12

    .line 288
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v12

    mul-double/2addr v14, v12

    .line 289
    const-wide/16 v12, 0x0

    .line 290
    const/4 v7, 0x0

    :goto_b
    if-nez v17, :cond_a

    .line 294
    :cond_9
    mul-double/2addr v12, v14

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/google/research/reflection/layers/b;->Vd(ZIID)V

    .line 286
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 290
    :cond_a
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/research/reflection/layers/j;->Ni:I

    if-ge v7, v9, :cond_9

    .line 291
    const/4 v9, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v10, v7}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v18

    .line 292
    const/4 v9, 0x0

    invoke-virtual {v4, v9, v10, v7}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v12, v12, v18

    .line 290
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 300
    :cond_b
    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v12, v9}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v14

    .line 301
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v18, v18, v14

    mul-double v18, v18, v14

    .line 302
    const-wide/16 v14, 0x0

    .line 303
    const/4 v7, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/research/reflection/layers/j;->Ni:I

    if-lt v7, v9, :cond_c

    .line 307
    mul-double v14, v14, v18

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/google/research/reflection/layers/b;->Vd(ZIID)V

    .line 299
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 304
    :cond_c
    const/4 v9, 0x0

    invoke-virtual {v5, v9, v12, v7}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v20

    .line 305
    const/4 v9, 0x0

    invoke-virtual {v4, v9, v12, v7}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v14, v14, v20

    .line 303
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 345
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/research/reflection/layers/j;->Nc:Lcom/google/research/reflection/layers/b;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/research/reflection/layers/j;->Na:[Lcom/google/research/reflection/layers/b;

    const/4 v4, 0x3

    aget-object v4, v2, v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/research/reflection/layers/j;->Nd:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/research/reflection/layers/j;->Nm:I

    const/4 v2, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move v9, v5

    invoke-static/range {v2 .. v10}, Lcom/google/research/reflection/layers/j;->Vu(ZLcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;I[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;III)V

    .line 347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/research/reflection/layers/j;->Nn:Lcom/google/research/reflection/layers/b;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/research/reflection/layers/j;->Na:[Lcom/google/research/reflection/layers/b;

    const/4 v4, 0x3

    aget-object v4, v2, v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/research/reflection/layers/j;->MT:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/research/reflection/layers/j;->Nm:I

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object/from16 v7, p4

    move v9, v5

    invoke-static/range {v2 .. v10}, Lcom/google/research/reflection/layers/j;->Vu(ZLcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;I[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;III)V

    .line 349
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/research/reflection/layers/j;->Nl:Lcom/google/research/reflection/layers/b;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/research/reflection/layers/j;->Na:[Lcom/google/research/reflection/layers/b;

    const/4 v4, 0x3

    aget-object v4, v2, v4

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/research/reflection/layers/j;->Nm:I

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v9, v5

    invoke-static/range {v2 .. v10}, Lcom/google/research/reflection/layers/j;->Vu(ZLcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;I[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;III)V

    .line 344
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5
.end method

.method Vv()Lcom/google/research/reflection/layers/b;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/research/reflection/layers/j;->MZ:Lcom/google/research/reflection/layers/b;

    return-object v0
.end method

.method public Vw()V
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/research/reflection/layers/b;

    iput-object v0, p0, Lcom/google/research/reflection/layers/j;->Na:[Lcom/google/research/reflection/layers/b;

    .line 425
    iget-object v0, p0, Lcom/google/research/reflection/layers/j;->Nl:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Mr:[D

    invoke-static {v0}, Lcom/google/research/reflection/layers/k;->VD([D)V

    .line 426
    iget-object v0, p0, Lcom/google/research/reflection/layers/j;->Nn:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Mr:[D

    invoke-static {v0}, Lcom/google/research/reflection/layers/k;->VD([D)V

    .line 427
    iget-object v0, p0, Lcom/google/research/reflection/layers/j;->Nc:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Mr:[D

    invoke-static {v0}, Lcom/google/research/reflection/layers/k;->VD([D)V

    .line 428
    iget-object v0, p0, Lcom/google/research/reflection/layers/j;->MU:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Mr:[D

    invoke-static {v0}, Lcom/google/research/reflection/layers/k;->VD([D)V

    .line 429
    iget-object v0, p0, Lcom/google/research/reflection/layers/j;->MY:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Mr:[D

    invoke-static {v0}, Lcom/google/research/reflection/layers/k;->VD([D)V

    .line 430
    iget-object v0, p0, Lcom/google/research/reflection/layers/j;->Nt:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Mr:[D

    invoke-static {v0}, Lcom/google/research/reflection/layers/k;->VD([D)V

    .line 431
    iget-object v0, p0, Lcom/google/research/reflection/layers/j;->Nb:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Mr:[D

    invoke-static {v0}, Lcom/google/research/reflection/layers/k;->VD([D)V

    .line 432
    return-void
.end method

.method public Vy([Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V
    .locals 43

    .prologue
    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/research/reflection/layers/j;->Np:Lcom/google/research/reflection/common/a;

    invoke-virtual {v2}, Lcom/google/research/reflection/common/a;->Uf()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/reflection/layers/b;

    .line 126
    if-eqz v2, :cond_0

    .line 129
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/research/reflection/layers/j;->Np:Lcom/google/research/reflection/common/a;

    invoke-virtual {v3, v2}, Lcom/google/research/reflection/common/a;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v40, v2

    check-cast v40, Lcom/google/research/reflection/layers/b;

    .line 130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/research/reflection/layers/j;->Nf:Lcom/google/research/reflection/common/a;

    invoke-virtual {v2}, Lcom/google/research/reflection/common/a;->Uf()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/reflection/layers/b;

    .line 131
    if-eqz v2, :cond_1

    .line 134
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/research/reflection/layers/j;->Nf:Lcom/google/research/reflection/common/a;

    invoke-virtual {v3, v2}, Lcom/google/research/reflection/common/a;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/research/reflection/layers/b;

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/research/reflection/layers/j;->Nr:Lcom/google/research/reflection/common/a;

    invoke-virtual {v2}, Lcom/google/research/reflection/common/a;->Uf()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/reflection/layers/b;

    .line 136
    if-eqz v2, :cond_2

    .line 139
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/research/reflection/layers/j;->Nr:Lcom/google/research/reflection/common/a;

    invoke-virtual {v3, v2}, Lcom/google/research/reflection/common/a;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v41, v2

    check-cast v41, Lcom/google/research/reflection/layers/b;

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/research/reflection/layers/j;->Nk:Lcom/google/research/reflection/common/a;

    invoke-virtual {v2}, Lcom/google/research/reflection/common/a;->Uh()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/research/reflection/layers/b;

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/research/reflection/layers/j;->No:Lcom/google/research/reflection/common/a;

    invoke-virtual {v2}, Lcom/google/research/reflection/common/a;->Uf()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/reflection/layers/b;

    .line 142
    if-eqz v2, :cond_3

    .line 145
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/research/reflection/layers/j;->No:Lcom/google/research/reflection/common/a;

    invoke-virtual {v3, v2}, Lcom/google/research/reflection/common/a;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v42, v2

    check-cast v42, Lcom/google/research/reflection/layers/b;

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/research/reflection/layers/j;->Nk:Lcom/google/research/reflection/common/a;

    invoke-virtual {v2}, Lcom/google/research/reflection/common/a;->Uf()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/reflection/layers/b;

    .line 147
    if-eqz v2, :cond_4

    .line 150
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/research/reflection/layers/j;->Nk:Lcom/google/research/reflection/common/a;

    invoke-virtual {v3, v2}, Lcom/google/research/reflection/common/a;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/google/research/reflection/layers/b;

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/research/reflection/layers/j;->Ng:Lcom/google/research/reflection/common/a;

    invoke-virtual {v2}, Lcom/google/research/reflection/common/a;->Uf()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/reflection/layers/b;

    .line 152
    if-eqz v2, :cond_5

    .line 155
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/research/reflection/layers/j;->Ng:Lcom/google/research/reflection/common/a;

    invoke-virtual {v3, v2}, Lcom/google/research/reflection/common/a;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/research/reflection/layers/b;

    .line 156
    const/4 v3, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/research/reflection/layers/j;->Nm:I

    if-lt v3, v2, :cond_6

    .line 218
    return-void

    .line 127
    :cond_0
    new-instance v2, Lcom/google/research/reflection/layers/b;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/research/reflection/layers/j;->Nm:I

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    goto/16 :goto_0

    .line 132
    :cond_1
    new-instance v2, Lcom/google/research/reflection/layers/b;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/research/reflection/layers/j;->Nm:I

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    goto/16 :goto_1

    .line 137
    :cond_2
    new-instance v2, Lcom/google/research/reflection/layers/b;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/research/reflection/layers/j;->Nm:I

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    goto/16 :goto_2

    .line 143
    :cond_3
    new-instance v2, Lcom/google/research/reflection/layers/b;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/research/reflection/layers/j;->Nm:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/research/reflection/layers/j;->Ni:I

    invoke-direct {v2, v3, v4}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    goto :goto_3

    .line 148
    :cond_4
    new-instance v2, Lcom/google/research/reflection/layers/b;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/research/reflection/layers/j;->Nm:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/research/reflection/layers/j;->Ni:I

    invoke-direct {v2, v3, v4}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    goto :goto_4

    .line 153
    :cond_5
    new-instance v2, Lcom/google/research/reflection/layers/b;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/research/reflection/layers/j;->Nm:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/research/reflection/layers/j;->Ni:I

    invoke-direct {v2, v3, v4}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    goto :goto_5

    .line 158
    :cond_6
    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/google/research/reflection/layers/j;->Vz(I[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;I)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/research/reflection/layers/j;->Nq:Lcom/google/research/reflection/layers/b;

    iget-object v2, v2, Lcom/google/research/reflection/layers/b;->Mr:[D

    const/4 v6, 0x0

    aget-wide v8, v2, v6

    add-double/2addr v4, v8

    .line 161
    invoke-static {v4, v5}, Lcom/google/research/reflection/layers/k;->VH(D)D

    move-result-wide v12

    .line 162
    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v8, v41

    move v10, v3

    invoke-virtual/range {v8 .. v13}, Lcom/google/research/reflection/layers/b;->Vd(ZIID)V

    .line 164
    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/google/research/reflection/layers/j;->Vz(I[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;I)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/research/reflection/layers/j;->Nq:Lcom/google/research/reflection/layers/b;

    iget-object v2, v2, Lcom/google/research/reflection/layers/b;->Mr:[D

    const/4 v6, 0x1

    aget-wide v8, v2, v6

    add-double/2addr v4, v8

    .line 167
    invoke-static {v4, v5}, Lcom/google/research/reflection/layers/k;->VH(D)D

    move-result-wide v18

    .line 168
    const/4 v15, 0x0

    const/16 v17, 0x0

    move/from16 v16, v3

    invoke-virtual/range {v14 .. v19}, Lcom/google/research/reflection/layers/b;->Vd(ZIID)V

    .line 170
    const/16 v23, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/research/reflection/layers/j;->Ni:I

    move/from16 v0, v23

    if-lt v0, v2, :cond_7

    .line 200
    const/16 v27, 0x2

    move-object/from16 v21, p0

    move/from16 v22, v3

    move-object/from16 v23, p1

    move-object/from16 v24, p2

    move-object/from16 v25, p3

    invoke-direct/range {v21 .. v27}, Lcom/google/research/reflection/layers/j;->Vz(I[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;I)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/research/reflection/layers/j;->Nq:Lcom/google/research/reflection/layers/b;

    iget-object v2, v2, Lcom/google/research/reflection/layers/b;->Mr:[D

    const/4 v6, 0x2

    aget-wide v8, v2, v6

    add-double/2addr v4, v8

    .line 203
    invoke-static {v4, v5}, Lcom/google/research/reflection/layers/k;->VH(D)D

    move-result-wide v12

    .line 204
    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v8, v40

    move v10, v3

    invoke-virtual/range {v8 .. v13}, Lcom/google/research/reflection/layers/b;->Vd(ZIID)V

    .line 206
    const/16 v31, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/research/reflection/layers/j;->Ni:I

    move/from16 v0, v31

    if-lt v0, v2, :cond_f

    .line 156
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 171
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/research/reflection/layers/j;->MV:Lcom/google/research/reflection/layers/b;

    iget-object v2, v2, Lcom/google/research/reflection/layers/b;->Mr:[D

    aget-wide v4, v2, v23

    .line 172
    if-nez p1, :cond_a

    .line 178
    const/4 v2, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/research/reflection/layers/j;->Nd:I

    if-lt v2, v6, :cond_b

    .line 183
    :cond_8
    const/4 v2, 0x0

    :goto_a
    if-nez p3, :cond_c

    .line 187
    :cond_9
    invoke-static {v4, v5}, Ljava/lang/Math;->tanh(D)D

    move-result-wide v24

    .line 188
    const/16 v21, 0x0

    move/from16 v22, v3

    invoke-virtual/range {v20 .. v25}, Lcom/google/research/reflection/layers/b;->Vd(ZIID)V

    .line 189
    mul-double v30, v12, v24

    .line 190
    if-nez v7, :cond_d

    .line 193
    :goto_b
    const/16 v27, 0x0

    move/from16 v28, v3

    move/from16 v29, v23

    invoke-virtual/range {v26 .. v31}, Lcom/google/research/reflection/layers/b;->Vd(ZIID)V

    .line 194
    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_e

    .line 170
    add-int/lit8 v23, v23, 0x1

    goto :goto_7

    .line 173
    :cond_a
    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/reflection/common/d;

    .line 174
    iget v8, v2, Lcom/google/research/reflection/common/d;->Mc:F

    float-to-double v8, v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/research/reflection/layers/j;->MX:Lcom/google/research/reflection/layers/b;

    iget v2, v2, Lcom/google/research/reflection/common/d;->Mb:I

    .line 175
    const/4 v11, 0x0

    move/from16 v0, v23

    invoke-virtual {v10, v11, v2, v0}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    goto :goto_c

    .line 179
    :cond_b
    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v3, v2}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/research/reflection/layers/j;->MX:Lcom/google/research/reflection/layers/b;

    .line 180
    const/4 v10, 0x0

    move/from16 v0, v23

    invoke-virtual {v6, v10, v2, v0}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 183
    :cond_c
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/research/reflection/layers/j;->MT:I

    if-ge v2, v6, :cond_9

    .line 184
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v3, v2}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/research/reflection/layers/j;->Ns:Lcom/google/research/reflection/layers/b;

    .line 185
    const/4 v10, 0x0

    move/from16 v0, v23

    invoke-virtual {v6, v10, v2, v0}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 191
    :cond_d
    const/4 v2, 0x0

    move/from16 v0, v23

    invoke-virtual {v7, v2, v3, v0}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v4

    mul-double v4, v4, v18

    add-double v30, v30, v4

    goto :goto_b

    .line 195
    :cond_e
    new-instance v2, Lcom/google/research/reflection/layers/InvalidValueException;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x4e

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/research/reflection/layers/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 207
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tanh(D)D

    move-result-wide v32

    .line 209
    const/16 v29, 0x0

    move-object/from16 v28, v42

    move/from16 v30, v3

    invoke-virtual/range {v28 .. v33}, Lcom/google/research/reflection/layers/b;->Vd(ZIID)V

    .line 210
    mul-double v38, v12, v32

    const/16 v35, 0x0

    move-object/from16 v34, p4

    move/from16 v36, v3

    move/from16 v37, v31

    invoke-virtual/range {v34 .. v39}, Lcom/google/research/reflection/layers/b;->Vd(ZIID)V

    .line 211
    mul-double v4, v12, v32

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_10

    .line 206
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_8

    .line 212
    :cond_10
    new-instance v2, Lcom/google/research/reflection/layers/InvalidValueException;

    .line 213
    const/4 v4, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v4, v3, v1}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v4

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v6, 0x52

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " x "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v32

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "=tanh("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/research/reflection/layers/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method update()V
    .locals 4

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/research/reflection/layers/j;->MW:Lcom/google/research/reflection/layers/b;

    iget-object v1, p0, Lcom/google/research/reflection/layers/j;->Nt:Lcom/google/research/reflection/layers/b;

    invoke-static {}, Lcom/google/research/reflection/layers/v;->Wj()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/research/reflection/layers/b;->Vn(D)Lcom/google/research/reflection/layers/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/layers/b;->Ve(Lcom/google/research/reflection/layers/b;)Lcom/google/research/reflection/layers/b;

    .line 415
    iget-object v0, p0, Lcom/google/research/reflection/layers/j;->Nh:Lcom/google/research/reflection/layers/b;

    iget-object v1, p0, Lcom/google/research/reflection/layers/j;->MY:Lcom/google/research/reflection/layers/b;

    invoke-static {}, Lcom/google/research/reflection/layers/v;->Wj()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/research/reflection/layers/b;->Vn(D)Lcom/google/research/reflection/layers/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/layers/b;->Ve(Lcom/google/research/reflection/layers/b;)Lcom/google/research/reflection/layers/b;

    .line 416
    iget-object v0, p0, Lcom/google/research/reflection/layers/j;->Nj:Lcom/google/research/reflection/layers/b;

    iget-object v1, p0, Lcom/google/research/reflection/layers/j;->MU:Lcom/google/research/reflection/layers/b;

    invoke-static {}, Lcom/google/research/reflection/layers/v;->Wj()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/research/reflection/layers/b;->Vn(D)Lcom/google/research/reflection/layers/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/layers/b;->Ve(Lcom/google/research/reflection/layers/b;)Lcom/google/research/reflection/layers/b;

    .line 417
    iget-object v0, p0, Lcom/google/research/reflection/layers/j;->Nq:Lcom/google/research/reflection/layers/b;

    iget-object v1, p0, Lcom/google/research/reflection/layers/j;->Nb:Lcom/google/research/reflection/layers/b;

    invoke-static {}, Lcom/google/research/reflection/layers/v;->Wj()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/research/reflection/layers/b;->Vn(D)Lcom/google/research/reflection/layers/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/layers/b;->Ve(Lcom/google/research/reflection/layers/b;)Lcom/google/research/reflection/layers/b;

    .line 418
    iget-object v0, p0, Lcom/google/research/reflection/layers/j;->Ns:Lcom/google/research/reflection/layers/b;

    iget-object v1, p0, Lcom/google/research/reflection/layers/j;->Nn:Lcom/google/research/reflection/layers/b;

    invoke-static {}, Lcom/google/research/reflection/layers/v;->Wj()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/research/reflection/layers/b;->Vn(D)Lcom/google/research/reflection/layers/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/layers/b;->Ve(Lcom/google/research/reflection/layers/b;)Lcom/google/research/reflection/layers/b;

    .line 419
    iget-object v0, p0, Lcom/google/research/reflection/layers/j;->MX:Lcom/google/research/reflection/layers/b;

    iget-object v1, p0, Lcom/google/research/reflection/layers/j;->Nc:Lcom/google/research/reflection/layers/b;

    invoke-static {}, Lcom/google/research/reflection/layers/v;->Wj()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/research/reflection/layers/b;->Vn(D)Lcom/google/research/reflection/layers/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/layers/b;->Ve(Lcom/google/research/reflection/layers/b;)Lcom/google/research/reflection/layers/b;

    .line 420
    iget-object v0, p0, Lcom/google/research/reflection/layers/j;->MV:Lcom/google/research/reflection/layers/b;

    iget-object v1, p0, Lcom/google/research/reflection/layers/j;->Nl:Lcom/google/research/reflection/layers/b;

    invoke-static {}, Lcom/google/research/reflection/layers/v;->Wj()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/research/reflection/layers/b;->Vn(D)Lcom/google/research/reflection/layers/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/layers/b;->Ve(Lcom/google/research/reflection/layers/b;)Lcom/google/research/reflection/layers/b;

    .line 421
    return-void
.end method
