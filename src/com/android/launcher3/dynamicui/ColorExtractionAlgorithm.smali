.class public Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final BLACKLISTED_COLORS:[Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;

.field private static final GREY_PALETTE:Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;

.field private static final TONAL_PALETTES:[Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;


# instance fields
.field private mTmpHSL:[F


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/16 v11, 0xc

    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v9, 0xe

    const/16 v8, 0xd

    const v7, 0x3f333333    # 0.7f

    .line 325
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;

    .line 326
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;

    .line 327
    new-array v2, v8, [F

    fill-array-data v2, :array_0

    .line 330
    new-array v3, v8, [F

    fill-array-data v3, :array_1

    .line 332
    new-array v4, v8, [F

    fill-array-data v4, :array_2

    .line 326
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;-><init>([F[F[F)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 337
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;

    .line 338
    new-array v2, v11, [F

    fill-array-data v2, :array_3

    .line 342
    new-array v3, v11, [F

    fill-array-data v3, :array_4

    .line 345
    new-array v4, v11, [F

    fill-array-data v4, :array_5

    .line 337
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;-><init>([F[F[F)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 350
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;

    .line 351
    new-array v2, v8, [F

    fill-array-data v2, :array_6

    .line 355
    new-array v3, v8, [F

    fill-array-data v3, :array_7

    .line 357
    new-array v4, v8, [F

    fill-array-data v4, :array_8

    .line 350
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;-><init>([F[F[F)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 362
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;

    .line 363
    new-array v2, v9, [F

    fill-array-data v2, :array_9

    .line 367
    new-array v3, v9, [F

    fill-array-data v3, :array_a

    .line 369
    new-array v4, v9, [F

    fill-array-data v4, :array_b

    .line 362
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;-><init>([F[F[F)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 374
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;

    .line 375
    new-array v2, v8, [F

    fill-array-data v2, :array_c

    .line 379
    new-array v3, v8, [F

    fill-array-data v3, :array_d

    .line 382
    new-array v4, v8, [F

    fill-array-data v4, :array_e

    .line 374
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;-><init>([F[F[F)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 387
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;

    .line 388
    new-array v2, v8, [F

    fill-array-data v2, :array_f

    .line 392
    new-array v3, v8, [F

    fill-array-data v3, :array_10

    .line 393
    new-array v4, v8, [F

    fill-array-data v4, :array_11

    .line 387
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;-><init>([F[F[F)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 398
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;

    .line 399
    new-array v2, v9, [F

    fill-array-data v2, :array_12

    .line 403
    new-array v3, v9, [F

    fill-array-data v3, :array_13

    .line 404
    new-array v4, v9, [F

    fill-array-data v4, :array_14

    .line 398
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;-><init>([F[F[F)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 409
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;

    .line 410
    new-array v2, v9, [F

    fill-array-data v2, :array_15

    .line 414
    new-array v3, v9, [F

    fill-array-data v3, :array_16

    .line 415
    new-array v4, v9, [F

    fill-array-data v4, :array_17

    .line 409
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;-><init>([F[F[F)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 418
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;

    .line 419
    new-array v2, v8, [F

    fill-array-data v2, :array_18

    .line 423
    new-array v3, v8, [F

    fill-array-data v3, :array_19

    .line 426
    new-array v4, v8, [F

    fill-array-data v4, :array_1a

    .line 418
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;-><init>([F[F[F)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 431
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;

    .line 432
    new-array v2, v11, [F

    fill-array-data v2, :array_1b

    .line 436
    new-array v3, v11, [F

    fill-array-data v3, :array_1c

    .line 438
    new-array v4, v11, [F

    fill-array-data v4, :array_1d

    .line 431
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;-><init>([F[F[F)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 443
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;

    .line 444
    new-array v2, v9, [F

    fill-array-data v2, :array_1e

    .line 448
    new-array v3, v9, [F

    fill-array-data v3, :array_1f

    .line 451
    new-array v4, v9, [F

    fill-array-data v4, :array_20

    .line 443
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;-><init>([F[F[F)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 456
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;

    .line 457
    new-array v2, v8, [F

    fill-array-data v2, :array_21

    .line 461
    new-array v3, v8, [F

    fill-array-data v3, :array_22

    .line 464
    new-array v4, v8, [F

    fill-array-data v4, :array_23

    .line 456
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;-><init>([F[F[F)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 469
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;

    .line 470
    const/16 v2, 0xb

    new-array v2, v2, [F

    fill-array-data v2, :array_24

    .line 474
    const/16 v3, 0xb

    new-array v3, v3, [F

    fill-array-data v3, :array_25

    .line 478
    const/16 v4, 0xb

    new-array v4, v4, [F

    fill-array-data v4, :array_26

    .line 469
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;-><init>([F[F[F)V

    aput-object v1, v0, v11

    .line 483
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;

    .line 484
    new-array v2, v9, [F

    fill-array-data v2, :array_27

    .line 488
    new-array v3, v9, [F

    fill-array-data v3, :array_28

    .line 492
    new-array v4, v9, [F

    fill-array-data v4, :array_29

    .line 483
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;-><init>([F[F[F)V

    aput-object v1, v0, v8

    .line 498
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;

    .line 499
    new-array v2, v8, [F

    fill-array-data v2, :array_2a

    .line 503
    new-array v3, v8, [F

    fill-array-data v3, :array_2b

    .line 507
    new-array v4, v8, [F

    fill-array-data v4, :array_2c

    .line 498
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;-><init>([F[F[F)V

    aput-object v1, v0, v9

    .line 512
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;

    .line 513
    new-array v2, v11, [F

    fill-array-data v2, :array_2d

    .line 517
    new-array v3, v11, [F

    fill-array-data v3, :array_2e

    .line 521
    new-array v4, v11, [F

    fill-array-data v4, :array_2f

    .line 512
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;-><init>([F[F[F)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 526
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;

    .line 527
    const/16 v2, 0xa

    new-array v2, v2, [F

    fill-array-data v2, :array_30

    .line 531
    const/16 v3, 0xa

    new-array v3, v3, [F

    fill-array-data v3, :array_31

    .line 534
    const/16 v4, 0xa

    new-array v4, v4, [F

    fill-array-data v4, :array_32

    .line 526
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;-><init>([F[F[F)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 539
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;

    .line 540
    const/16 v2, 0xb

    new-array v2, v2, [F

    fill-array-data v2, :array_33

    .line 544
    const/16 v3, 0xb

    new-array v3, v3, [F

    fill-array-data v3, :array_34

    .line 546
    const/16 v4, 0xb

    new-array v4, v4, [F

    fill-array-data v4, :array_35

    .line 539
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;-><init>([F[F[F)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 550
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;

    .line 551
    const/16 v2, 0xb

    new-array v2, v2, [F

    fill-array-data v2, :array_36

    .line 555
    const/16 v3, 0xb

    new-array v3, v3, [F

    fill-array-data v3, :array_37

    .line 559
    const/16 v4, 0xb

    new-array v4, v4, [F

    fill-array-data v4, :array_38

    .line 550
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;-><init>([F[F[F)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 565
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;

    .line 566
    const/16 v2, 0xa

    new-array v2, v2, [F

    fill-array-data v2, :array_39

    .line 570
    const/16 v3, 0xa

    new-array v3, v3, [F

    fill-array-data v3, :array_3a

    .line 574
    const/16 v4, 0xa

    new-array v4, v4, [F

    fill-array-data v4, :array_3b

    .line 565
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;-><init>([F[F[F)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 579
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;

    .line 580
    new-array v2, v9, [F

    fill-array-data v2, :array_3c

    .line 585
    new-array v3, v9, [F

    fill-array-data v3, :array_3d

    .line 586
    new-array v4, v9, [F

    fill-array-data v4, :array_3e

    .line 579
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;-><init>([F[F[F)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 325
    sput-object v0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->TONAL_PALETTES:[Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;

    .line 593
    new-instance v0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;

    .line 594
    new-array v1, v11, [F

    fill-array-data v1, :array_3f

    .line 595
    new-array v2, v11, [F

    fill-array-data v2, :array_40

    .line 596
    new-array v3, v11, [F

    fill-array-data v3, :array_41

    .line 593
    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;-><init>([F[F[F)V

    sput-object v0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->GREY_PALETTE:Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;

    .line 602
    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;

    .line 605
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;

    .line 606
    new-instance v2, Landroid/util/Range;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 607
    new-instance v3, Landroid/util/Range;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 608
    new-instance v4, Landroid/util/Range;

    const v5, 0x3e570a3d    # 0.21f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v6, 0x3f4a3d71    # 0.79f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 605
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;-><init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 609
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;

    .line 610
    new-instance v2, Landroid/util/Range;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 611
    new-instance v3, Landroid/util/Range;

    const v4, 0x3e99999a    # 0.3f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 612
    new-instance v4, Landroid/util/Range;

    const v5, 0x3eb5c28f    # 0.355f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v6, 0x3f272b02    # 0.653f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 609
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;-><init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 615
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;

    .line 616
    new-instance v2, Landroid/util/Range;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 617
    new-instance v3, Landroid/util/Range;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 618
    new-instance v4, Landroid/util/Range;

    const v5, 0x3e8f5c29    # 0.28f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v6, 0x3f249ba6    # 0.643f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 615
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;-><init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 619
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;

    .line 620
    new-instance v2, Landroid/util/Range;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 621
    new-instance v3, Landroid/util/Range;

    const v4, 0x3e99999a    # 0.3f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 622
    new-instance v4, Landroid/util/Range;

    const v5, 0x3ed3f7cf    # 0.414f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v6, 0x3f0f9db2    # 0.561f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 619
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;-><init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 623
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;

    .line 624
    new-instance v2, Landroid/util/Range;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 625
    new-instance v3, Landroid/util/Range;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 626
    new-instance v4, Landroid/util/Range;

    const v5, 0x3eaf9db2    # 0.343f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v6, 0x3f158106    # 0.584f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 623
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;-><init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 629
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;

    .line 630
    new-instance v2, Landroid/util/Range;

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x42700000    # 60.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 631
    new-instance v3, Landroid/util/Range;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 632
    new-instance v4, Landroid/util/Range;

    const v5, 0x3e3126e9    # 0.173f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v6, 0x3eb2b021    # 0.349f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 629
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;-><init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 633
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;

    .line 634
    new-instance v2, Landroid/util/Range;

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x42700000    # 60.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 635
    new-instance v3, Landroid/util/Range;

    const v4, 0x3e99999a    # 0.3f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 636
    new-instance v4, Landroid/util/Range;

    const v5, 0x3e6e978d    # 0.233f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v6, 0x3eda9fbe    # 0.427f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 633
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;-><init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 637
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;

    .line 638
    new-instance v2, Landroid/util/Range;

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x42700000    # 60.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 639
    new-instance v3, Landroid/util/Range;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const v5, 0x3e99999a    # 0.3f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 640
    new-instance v4, Landroid/util/Range;

    const v5, 0x3e6c8b44    # 0.231f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v6, 0x3ef7ced9    # 0.484f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 637
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;-><init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 643
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;

    .line 644
    new-instance v2, Landroid/util/Range;

    const/high16 v3, 0x42700000    # 60.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x42a00000    # 80.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 645
    new-instance v3, Landroid/util/Range;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 646
    new-instance v4, Landroid/util/Range;

    const v5, 0x3ef9db23    # 0.488f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v6, 0x3f3cac08    # 0.737f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 643
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;-><init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 647
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;

    .line 648
    new-instance v2, Landroid/util/Range;

    const/high16 v3, 0x42700000    # 60.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x42a00000    # 80.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 649
    new-instance v3, Landroid/util/Range;

    const v4, 0x3e99999a    # 0.3f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 650
    new-instance v4, Landroid/util/Range;

    const v5, 0x3f2c49ba    # 0.673f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v6, 0x3f5645a2    # 0.837f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 647
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;-><init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 653
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;

    .line 654
    new-instance v2, Landroid/util/Range;

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 655
    new-instance v3, Landroid/util/Range;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 656
    new-instance v4, Landroid/util/Range;

    const v5, 0x3ef020c5    # 0.469f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v6, 0x3f1c28f6    # 0.61f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 653
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;-><init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 659
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;

    .line 660
    new-instance v2, Landroid/util/Range;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x42f00000    # 120.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 661
    new-instance v3, Landroid/util/Range;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 662
    new-instance v4, Landroid/util/Range;

    const v5, 0x3ec6a7f0    # 0.388f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v6, 0x3f1cac08    # 0.612f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 659
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;-><init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 663
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;

    .line 664
    new-instance v2, Landroid/util/Range;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x42f00000    # 120.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 665
    new-instance v3, Landroid/util/Range;

    const v4, 0x3e99999a    # 0.3f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 666
    new-instance v4, Landroid/util/Range;

    const v5, 0x3ed91687    # 0.424f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v6, 0x3f0a7efa    # 0.541f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 663
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;-><init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    aput-object v1, v0, v11

    .line 669
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;

    .line 670
    new-instance v2, Landroid/util/Range;

    const/high16 v3, 0x42f00000    # 120.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x430c0000    # 140.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 671
    new-instance v3, Landroid/util/Range;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 672
    new-instance v4, Landroid/util/Range;

    const/high16 v5, 0x3ec00000    # 0.375f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v6, 0x3f051eb8    # 0.52f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 669
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;-><init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    aput-object v1, v0, v8

    .line 673
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;

    .line 674
    new-instance v2, Landroid/util/Range;

    const/high16 v3, 0x42f00000    # 120.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x430c0000    # 140.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 675
    new-instance v3, Landroid/util/Range;

    const v4, 0x3e99999a    # 0.3f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 676
    new-instance v4, Landroid/util/Range;

    const v5, 0x3edeb852    # 0.435f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v6, 0x3f0624dd    # 0.524f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 673
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;-><init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    aput-object v1, v0, v9

    .line 679
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;

    .line 680
    new-instance v2, Landroid/util/Range;

    const/high16 v3, 0x430c0000    # 140.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x43200000    # 160.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 681
    new-instance v3, Landroid/util/Range;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 682
    new-instance v4, Landroid/util/Range;

    const v5, 0x3efdf3b6    # 0.496f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v6, 0x3f241893    # 0.641f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 679
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;-><init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 685
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;

    .line 686
    new-instance v2, Landroid/util/Range;

    const/high16 v3, 0x43200000    # 160.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x43340000    # 180.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 687
    new-instance v3, Landroid/util/Range;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 688
    new-instance v4, Landroid/util/Range;

    const v5, 0x3efdf3b6    # 0.496f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v6, 0x3f1126e9    # 0.567f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 685
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;-><init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 691
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;

    .line 692
    new-instance v2, Landroid/util/Range;

    const/high16 v3, 0x43340000    # 180.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x43480000    # 200.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 693
    new-instance v3, Landroid/util/Range;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 694
    new-instance v4, Landroid/util/Range;

    const v5, 0x3f051eb8    # 0.52f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v6, 0x3f3a9fbe    # 0.729f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 691
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;-><init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 697
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;

    .line 698
    new-instance v2, Landroid/util/Range;

    const/high16 v3, 0x435c0000    # 220.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x43700000    # 240.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 699
    new-instance v3, Landroid/util/Range;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 700
    new-instance v4, Landroid/util/Range;

    const v5, 0x3ecac083    # 0.396f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v6, 0x3f122d0e    # 0.571f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 697
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;-><init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 701
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;

    .line 702
    new-instance v2, Landroid/util/Range;

    const/high16 v3, 0x435c0000    # 220.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x43700000    # 240.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 703
    new-instance v3, Landroid/util/Range;

    const v4, 0x3e99999a    # 0.3f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 704
    new-instance v4, Landroid/util/Range;

    const v5, 0x3ed9999a    # 0.425f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v6, 0x3f0d0e56    # 0.551f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 701
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;-><init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 707
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;

    .line 708
    new-instance v2, Landroid/util/Range;

    const/high16 v3, 0x43700000    # 240.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x43820000    # 260.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 709
    new-instance v3, Landroid/util/Range;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 710
    new-instance v4, Landroid/util/Range;

    const v5, 0x3ed60419    # 0.418f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v6, 0x3f239581    # 0.639f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 707
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;-><init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 711
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;

    .line 712
    new-instance v2, Landroid/util/Range;

    const/high16 v3, 0x435c0000    # 220.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x43700000    # 240.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 713
    new-instance v3, Landroid/util/Range;

    const v4, 0x3e99999a    # 0.3f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 714
    new-instance v4, Landroid/util/Range;

    const v5, 0x3ee1cac1    # 0.441f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v6, 0x3f1374bc    # 0.576f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 711
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;-><init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 717
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;

    .line 718
    new-instance v2, Landroid/util/Range;

    const/high16 v3, 0x43820000    # 260.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x438c0000    # 280.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 719
    new-instance v3, Landroid/util/Range;

    const v4, 0x3e99999a    # 0.3f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 720
    new-instance v4, Landroid/util/Range;

    const v5, 0x3eec0831    # 0.461f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v6, 0x3f0d9168    # 0.553f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 717
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;-><init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 723
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;

    .line 724
    new-instance v2, Landroid/util/Range;

    const/high16 v3, 0x43960000    # 300.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x43a00000    # 320.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 725
    new-instance v3, Landroid/util/Range;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 726
    new-instance v4, Landroid/util/Range;

    const v5, 0x3ef7ced9    # 0.484f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v6, 0x3f16872b    # 0.588f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 723
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;-><init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 727
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;

    .line 728
    new-instance v2, Landroid/util/Range;

    const/high16 v3, 0x43960000    # 300.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x43a00000    # 320.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 729
    new-instance v3, Landroid/util/Range;

    const v4, 0x3e99999a    # 0.3f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 730
    new-instance v4, Landroid/util/Range;

    const v5, 0x3ef5c28f    # 0.48f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v6, 0x3f178d50    # 0.592f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 727
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;-><init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 733
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;

    .line 734
    new-instance v2, Landroid/util/Range;

    const/high16 v3, 0x43a00000    # 320.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x43aa0000    # 340.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 735
    new-instance v3, Landroid/util/Range;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 736
    new-instance v4, Landroid/util/Range;

    const v5, 0x3eee978d    # 0.466f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v6, 0x3f210625    # 0.629f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 733
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;-><init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 739
    new-instance v1, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;

    .line 740
    new-instance v2, Landroid/util/Range;

    const/high16 v3, 0x43aa0000    # 340.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x43b40000    # 360.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 741
    new-instance v3, Landroid/util/Range;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 742
    new-instance v4, Landroid/util/Range;

    const v5, 0x3edfbe77    # 0.437f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v6, 0x3f189375    # 0.596f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 739
    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;-><init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 602
    sput-object v0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->BLACKLISTED_COLORS:[Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;

    .line 39
    return-void

    .line 327
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f7db22d    # 0.991f
        0x3f7db22d    # 0.991f
        0x3f7bbbbc
        0x0
        0x0
        0x0
        0x3c39db5d
        0x3c800000    # 0.015625f
        0x3cc6318c
        0x3ce07038
        0x3c8fb824
    .end array-data

    .line 330
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f57ee31
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 332
    :array_2
    .array-data 4
        0x3d23d70a    # 0.04f
        0x3db851ec    # 0.09f
        0x3e0f5c29    # 0.14f
        0x3e4ccccd    # 0.2f
        0x3e8c8c8d
        0x3eb2b2b3
        0x3ed8d8d9
        0x3f0c8c8d
        0x3f202020
        0x3f2fafb0
        0x3f41c1c2
        0x3f5b5b5b
        0x3f6ceced
    .end array-data

    .line 338
    :array_3
    .array-data 4
        0x3f2353f8    # 0.638f
        0x3f2353f8    # 0.638f
        0x3f2379c5
        0x3f214f58
        0x3f1f5555
        0x3f1d77b6
        0x3f1b4636
        0x3f19442c
        0x3f1750ac
        0x3f155555
        0x3f13264d
        0x3f0ee644
    .end array-data

    .line 342
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f66c2b4
        0x3f5017f4
        0x3f4c4867
        0x3f481ad4
        0x3f475a6b
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 345
    :array_5
    .array-data 4
        0x3d4ccccd    # 0.05f
        0x3df5c28f    # 0.12f
        0x3e32b2b3
        0x3e64e4e5
        0x3e8e8e8f
        0x3eababac
        0x3ec6c6c7
        0x3ee5e5e6
        0x3f0a0a0a
        0x3f26a6a7
        0x3f404040
        0x3f606060
    .end array-data

    .line 351
    :array_6
    .array-data 4
        0x3f1020c5    # 0.563f
        0x3f11a9fc    # 0.569f
        0x3f110cb3    # 0.5666f
        0x3f11267c
        0x3f13264d
        0x3f0f3cf4
        0x3f0c1ca1
        0x3f0a1142
        0x3f0816a6
        0x3f0626e5
        0x3f03f5eb
        0x3f021195
        0x3f000000    # 0.5f
    .end array-data

    .line 355
    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f628087
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 357
    :array_8
    .array-data 4
        0x3d8f5c29    # 0.07f
        0x3df5c28f    # 0.12f
        0x3e23d70a    # 0.16f
        0x3e4ccccd    # 0.2f
        0x3e7efeff
        0x3e8c8c8d
        0x3e9b9b9c
        0x3eb2b2b3
        0x3ed3d3d4
        0x3ef3f3f4
        0x3f090909
        0x3f2d2d2d
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 363
    :array_9
    .array-data 4
        0x3f020c4a    # 0.508f
        0x3f02d0e5    # 0.511f
        0x3f020c4a    # 0.508f
        0x3f020c4a    # 0.508f
        0x3f021b64
        0x3f01c71c
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3ef978c6
        0x3ef5c71c
        0x3ef3767f
        0x3ef1e3c8
        0x3eef286c
    .end array-data

    .line 367
    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f638e39
        0x3f6c9b27
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f50369d
        0x3f497150
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 369
    :array_b
    .array-data 4
        0x3d23d70a    # 0.04f
        0x3d75c28f    # 0.06f
        0x3da3d70a    # 0.08f
        0x3df5c28f    # 0.12f
        0x3e22a2a3
        0x3e58d8d9
        0x3e848485
        0x3e99999a    # 0.3f
        0x3eb2b2b3
        0x3ee1e1e2
        0x3f058586
        0x3f161616
        0x3f404040
        0x3f59d9da
    .end array-data

    .line 375
    :array_c
    .array-data 4
        0x3eaa7efa    # 0.333f
        0x3eaa7efa    # 0.333f
        0x3eaa7efa    # 0.333f
        0x3eaaaaab
        0x3eaaaaab
        0x3eae1d4e
        0x3eae1d4e
        0x3eae1d4e
        0x3eaf684c
        0x3eb1f5ca
        0x3eb201d6
        0x3eb18c63
        0x3ebda12f
    .end array-data

    .line 379
    :array_d
    .array-data 4
        0x3f333333    # 0.7f
        0x3f3851ec    # 0.72f
        0x3f30a3d7    # 0.69f
        0x3f2b9aba
        0x3f3a9387
        0x3f10d2a7
        0x3f01f820
        0x3ec9f1b9
        0x3f1ee584
        0x3f64a427
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 382
    :array_e
    .array-data 4
        0x3d4ccccd    # 0.05f
        0x3da3d70a    # 0.08f
        0x3e0f5c29    # 0.14f
        0x3e36b6b7
        0x3e6ceced
        0x3eafafb0
        0x3ec3c3c4
        0x3efbfbfc
        0x3f28a8a9
        0x3f3e3e3e
        0x3f515151
        0x3f60e0e1
        0x3f6dedee
    .end array-data

    .line 388
    :array_f
    .array-data 4
        0x3e24dd2f    # 0.161f
        0x3e26e979    # 0.163f
        0x3e26e979    # 0.163f
        0x3e262cea
        0x3e19ef45
        0x3e229a8a
        0x3e26432a
        0x3e32a00e
        0x3e3684be
        0x3e3f3a9a
        0x3e3f6922
        0x3e4759a3
        0x3e3e82fa
    .end array-data

    .line 392
    :array_10
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 393
    :array_11
    .array-data 4
        0x3d4ccccd    # 0.05f
        0x3da3d70a    # 0.08f
        0x3de147ae    # 0.11f
        0x3e189899
        0x3e4ccccd    # 0.2f
        0x3e7efeff
        0x3e9b9b9c
        0x3ec1c1c2
        0x3ed8d8d9
        0x3ef9f9fa
        0x3f252525
        0x3f444444
        0x3f54d4d5
    .end array-data

    .line 399
    :array_12
    .array-data 4
        0x3ddd2f1b    # 0.108f
        0x3dd70a3d    # 0.105f
        0x3dd70a3d    # 0.105f
        0x3dd70a3d    # 0.105f
        0x3dd97c9a
        0x3df437b3
        0x3e05987b
        0x3e11e73d
        0x3e1a3785
        0x3e261862
        0x3e2aaaab
        0x3e2aaaab
        0x3e262cea
        0x3e20a0a1
    .end array-data

    .line 403
    :array_13
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 404
    :array_14
    .array-data 4
        0x3e2e147b    # 0.17f
        0x3e6147ae    # 0.22f
        0x3e8f5c29    # 0.28f
        0x3eb33333    # 0.35f
        0x3ee2e2e3
        0x3eefeff0
        0x3ef4f4f5
        0x3f000000    # 0.5f
        0x3f030303
        0x3f0f8f90
        0x3f26a6a7
        0x3f404040
        0x3f59d9da
        0x3f666666    # 0.9f
    .end array-data

    .line 410
    :array_15
    .array-data 4
        0x3d1374bc    # 0.036f
        0x3d1374bc    # 0.036f
        0x3d1374bc    # 0.036f
        0x3d1374bc    # 0.036f
        0x3d11de73
        0x3d50d0d1
        0x3d99ef45
        0x3dc2176d
        0x3deb9641
        0x3e09df35
        0x3e15eb41
        0x3e220997
        0x3e218618
        0x3e1d47f3
    .end array-data

    .line 414
    :array_16
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 415
    :array_17
    .array-data 4
        0x3e428f5c    # 0.19f
        0x3e851eb8    # 0.26f
        0x3eae147b    # 0.34f
        0x3ec7ae14    # 0.39f
        0x3eeaeaeb
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f26a6a7
        0x3f47c7c8
        0x3f666666    # 0.9f
    .end array-data

    .line 419
    :array_18
    .array-data 4
        0x3f747ae1    # 0.955f
        0x3f760419    # 0.961f
        0x3f753f7d    # 0.958f
        0x3f75ab91
        0x3f759a2c
        0x3f7393fc
        0x3f71a0c9
        0x3f708f09
        0x3f7085db
        0x3f707c1f
        0x3f6fafb0
        0x3f79b476
        0x3f7b823f
    .end array-data

    .line 423
    :array_19
    .array-data 4
        0x3f5eb852    # 0.87f
        0x3f59999a    # 0.85f
        0x3f59999a    # 0.85f
        0x3f5738a3
        0x3f5218b8
        0x3f4c4867
        0x3f442108
        0x3f67b961
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 426
    :array_1a
    .array-data 4
        0x3d75c28f    # 0.06f
        0x3de147ae    # 0.11f
        0x3e23d70a    # 0.16f
        0x3e62e2e3
        0x3e919192
        0x3ec6c6c7
        0x3ef8f8f9
        0x3f0b8b8c
        0x3f19999a    # 0.6f
        0x3f2d2d2d
        0x3f4ccccd    # 0.8f
        0x3f616161
        0x3f6ceced
    .end array-data

    .line 432
    :array_1b
    .array-data 4
        0x3f5db22d    # 0.866f
        0x3f5ae148    # 0.855f
        0x3f574d75
        0x3f555555
        0x3f541a42
        0x3f524f49
        0x3f4eeeef
        0x3f4dfe2a
        0x3f4cf2f5
        0x3f48c3ce
        0x3f46f094
        0x3f4657a4
    .end array-data

    .line 436
    :array_1c
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f3cb565
        0x3f24b693
        0x3eefcc27
    .end array-data

    .line 438
    :array_1d
    .array-data 4
        0x3d4ccccd    # 0.05f
        0x3da3d70a    # 0.08f
        0x3e028283
        0x3e1e9e9f
        0x3e50d0d1
        0x3e7efeff
        0x3ea0a0a1
        0x3ebababb
        0x3ee5e5e6
        0x3f282828
        0x3f3f3f3f
        0x3f585858
    .end array-data

    .line 444
    :array_1e
    .array-data 4
        0x3f6ccccd    # 0.925f
        0x3f6e147b    # 0.93f
        0x3f7020c5    # 0.938f
        0x3f726e98    # 0.947f
        0x3f74b94c
        0x3f77d5dc
        0x3f79de47
        0x3f7cc362
        0x0
        0x0
        0x3c1467e2
        0x3cdb20a9
        0x3d2aaaab
        0x3d59364e
    .end array-data

    .line 448
    :array_1f
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f55c5f0
        0x3f3164ea
        0x3f238634
        0x3f310572
        0x3f4225cc
        0x3f4e98b4
        0x3f6e5847
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 451
    :array_20
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3e051eb8    # 0.13f
        0x3e2e147b    # 0.17f
        0x3e4ccccd    # 0.2f
        0x3e8c8c8d
        0x3ec2c2c3
        0x3ef1f1f2
        0x3f0e0e0e
        0x3f21a1a2
        0x3f353535
        0x3f46c6c7
        0x3f545454
        0x3f67e7e8
        0x3f74f4f5
    .end array-data

    .line 457
    :array_21
    .array-data 4
        0x3f3ba5e3    # 0.733f
        0x3f3c6a7f    # 0.736f
        0x3f3e76c9    # 0.744f
        0x3f405fd0
        0x3f4499ef
        0x3f47bbbc
        0x3f48d07b
        0x3f4c0000    # 0.796875f
        0x3f510a32
        0x3f594594
        0x3f5bb575
        0x3f5b3086
        0x3f5dddde
    .end array-data

    .line 461
    :array_22
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f50fac7
        0x3f2a53a2
        0x3f413522
        0x3f6e08fc
        0x3f74b4b5
        0x3f74bf4c
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 464
    :array_23
    .array-data 4
        0x3d8f5c29    # 0.07f
        0x3df5c28f    # 0.12f
        0x3e2e147b    # 0.17f
        0x3e64e4e5
        0x3e99999a    # 0.3f
        0x3ec4c4c5
        0x3efbfbfc
        0x3f159596
        0x3f2a2a2a
        0x3f3bbbbc
        0x3f525252
        0x3f666666    # 0.9f
        0x3f70f0f1
    .end array-data

    .line 470
    :array_24
    .array-data 4
        0x3f2aaaab
        0x3f2aaaab
        0x3f2aaaab
        0x3f2aaaab
        0x3f2aaaab
        0x3f2aaaab
        0x3f2aaaab
        0x3f2aaaab
        0x3f2aaaab
        0x3f2aaaab
        0x3f2aaaab
    .end array-data

    .line 474
    :array_25
    .array-data 4
        0x3e800000    # 0.25f
        0x3e7bcda4
        0x3e37196e
        0x3e1592b2
        0x3e0ceadd
        0x3e1882b9
        0x3e2b96d5
        0x3e500000    # 0.203125f
        0x3e8590b2
        0x3e99999a    # 0.3f
        0x3f000000    # 0.5f
    .end array-data

    .line 478
    :array_26
    .array-data 4
        0x3e3851ec    # 0.18f
        0x3e74f4f5
        0x3e979798
        0x3eb2b2b3
        0x3edadadb
        0x3f0a0a0a
        0x3f232323
        0x3f3fbfc0
        0x3f51d1d2
        0x3f61e1e2
        0x3f6feff0
    .end array-data

    .line 484
    :array_27
    .array-data 4
        0x3f7020c5    # 0.938f
        0x3f71a9fc    # 0.944f
        0x3f73b646    # 0.952f
        0x3f760419    # 0.961f
        0x3f77c57c
        0x3f7e9653
        0x0
        0x0
        0x3b9b26ca
        0x3b4f6475
        0x0
        0x3f7f7f7f
        0x3f7b425f
        0x3f78e38e
    .end array-data

    .line 488
    :array_28
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f33cb9c
        0x3f29f318
        0x3f26f4df
        0x3f459d31
        0x3f54e25c
        0x3f2fcea7
        0x3f39fba0
        0x3f51745d
        0x3f51745d
    .end array-data

    .line 492
    :array_29
    .array-data 4
        0x3da3d70a    # 0.08f
        0x3e051eb8    # 0.13f
        0x3e3851ec    # 0.18f
        0x3e6b851f    # 0.23f
        0x3e8c8c8d
        0x3ed7d7d8
        0x3eeeeeef
        0x3f010101
        0x3f0d8d8e
        0x3f20a0a1
        0x3f2cacad
        0x3f454545
        0x3f646464
        0x3f74f4f5
    .end array-data

    .line 499
    :array_2a
    .array-data 4
        0x3f6147ae    # 0.88f
        0x3f6353f8    # 0.888f
        0x3f65a1cb    # 0.897f
        0x3f67bd12
        0x3f69448c
        0x3f6d50df
        0x3f6f2f2f
        0x3f706c5c
        0x3f719cc6
        0x3f7193d5
        0x3f71a310
        0x3f714fbd
        0x3f71c71c
    .end array-data

    .line 503
    :array_2b
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f50369d
        0x3f4af169
        0x3f47a20e
        0x3f471c72
        0x3f51ad1b
        0x3f53594d
        0x3f52361d
        0x3f50369d
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 507
    :array_2c
    .array-data 4
        0x3da3d70a    # 0.08f
        0x3df5c28f    # 0.12f
        0x3e23d70a    # 0.16f
        0x3e4ccccd    # 0.2f
        0x3e969697
        0x3ec1c1c2
        0x3edadadb
        0x3ef3f3f4
        0x3f169697
        0x3f29a9aa
        0x3f424242
        0x3f5a5a5a
        0x3f70f0f1
    .end array-data

    .line 513
    :array_2d
    .array-data 4
        0x3f2b4396    # 0.669f
        0x3f2e147b    # 0.68f
        0x3f303b5d
        0x3f328dfc
        0x3f353ec4
        0x3f37278b
        0x3f38c632
        0x3f3a37d3
        0x3f3a2e8c
        0x3f39ce74
        0x3f39a85c
        0x3f3bbbbc
    .end array-data

    .line 517
    :array_2e
    .array-data 4
        0x3f4f5c29    # 0.81f
        0x3f4f5c29    # 0.81f
        0x3f524925
        0x3f3017ad
        0x3f1ba886
        0x3f13d4bb
        0x3f0a0474
        0x3eef3b40
        0x3eefa8da
        0x3eece541
        0x3ee9e065
        0x3ee8ba2f
    .end array-data

    .line 521
    :array_2f
    .array-data 4
        0x3df5c28f    # 0.12f
        0x3e23d70a    # 0.16f
        0x3e60e0e1
        0x3eadadae
        0x3ec7c7c8
        0x3ed5d5d6
        0x3ee6e6e7
        0x3f0d0d0d
        0x3f21a1a2
        0x3f3cbcbd
        0x3f575757
        0x3f6f6f6f
    .end array-data

    .line 527
    :array_30
    .array-data 4
        0x3f25a5a6
        0x3f26d3a0
        0x3f257b9d
        0x3f24e6a1
        0x3f24ada9
        0x3f244444
        0x3f23e706
        0x3f24287f
        0x3f24bda1
        0x3f249249
    .end array-data

    .line 531
    :array_31
    .array-data 4
        0x3f4f3cf4
        0x3f286bca
        0x3f127b35
        0x3f09467e
        0x3f000000    # 0.5f
        0x3ee28c76
        0x3ee1b86e
        0x3ee320b9
        0x3ee66666    # 0.45f
        0x3ee00000    # 0.4375f
    .end array-data

    .line 534
    :array_32
    .array-data 4
        0x3e28a8a9
        0x3e989899
        0x3ebbbbbc
        0x3ecfcfd0
        0x3ee4e4e5
        0x3f0e8e8f
        0x3f22a2a3
        0x3f3d3d3d
        0x3f57d7d8
        0x3f6feff0
    .end array-data

    .line 540
    :array_33
    .array-data 4
        0x3ef020c5    # 0.469f
        0x3eef449a
        0x3ef197d4
        0x3ef56f57
        0x3ef62071
        0x3ef747a1
        0x3ef80000    # 0.484375f
        0x3ef7df7e
        0x3ef8091a
        0x3ef86a31
        0x3efb425f
    .end array-data

    .line 544
    :array_34
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f20a0a1
        0x3ed62eeb
        0x3ed68670
        0x3ed3604b
        0x3ed1745d
    .end array-data

    .line 546
    :array_35
    .array-data 4
        0x3d8f5c29    # 0.07f
        0x3dcccccd    # 0.1f
        0x3e1a9a9b
        0x3e52d2d3
        0x3e72f2f3
        0x3e89898a
        0x3ecccccd    # 0.4f
        0x3f020202
        0x3f262626
        0x3f494949
        0x3f69e9ea
    .end array-data

    .line 551
    :array_36
    .array-data 4
        0x3f0ac083    # 0.542f
        0x3f0b60b6
        0x3f0e38e4
        0x3f0e38e4
        0x3f0dc371
        0x3f0d7943
        0x3f0e38e4
        0x3f0e38e4
        0x3f0e38e4
        0x3f0d20d2
        0x3f111111
    .end array-data

    .line 555
    :array_37
    .array-data 4
        0x3e800000    # 0.25f
        0x3e7bcda4
        0x3e4415ca
        0x3e37672a
        0x3e3bd596
        0x3e3ce4a9
        0x3e1d89d9
        0x3e200000    # 0.15625f
        0x3e1cf6a8
        0x3e2062b3
        0x3e1b26ca
    .end array-data

    .line 559
    :array_38
    .array-data 4
        0x3d4ccccd    # 0.05f
        0x3df4f4f5
        0x3e3cbcbd
        0x3e868687
        0x3ea9a9aa
        0x3ecececf
        0x3f0a8a8b
        0x3f1f9fa0
        0x3f3b3b3b
        0x3f565656
        0x3f6f6f6f
    .end array-data

    .line 566
    :array_39
    .array-data 4
        0x3cb60b61
        0x3cca4588
        0x3d000000    # 0.03125f
        0x3d21af28
        0x3d2aaaab
        0x3d32cb2d
        0x3d34b4b5
        0x3d2aaaab
        0x3d360b61
        0x3d638e39
    .end array-data

    .line 570
    :array_3a
    .array-data 4
        0x3eaaaaab
        0x3e8e83f5
        0x3e842108
        0x3e83759f
        0x3e8178a5
        0x3e333333    # 0.175f
        0x3e1cd42e
        0x3e1b8b57
        0x3e21af28
        0x3e21af28
    .end array-data

    .line 574
    :array_3b
    .array-data 4
        0x3db4b4b5
        0x3e42c2c3
        0x3e78f8f9
        0x3e949495
        0x3eaeaeaf
        0x3ef0f0f1
        0x3f109091
        0x3f30b0b1
        0x3f505050
        0x3f6ceced
    .end array-data

    .line 580
    :array_3c
    .array-data 4
        0x3cdd2f1b    # 0.027f
        0x3cf5c28f    # 0.03f
        0x3d1ba5e3    # 0.038f
        0x3d343958    # 0.044f
        0x3d506cbe
        0x3d949495
        0x3dbf6a15
        0x3dd62b81
        0x3def9a45
        0x3e009869
        0x3e01f07c
        0x3e005762
        0x3e000000    # 0.125f
        0x3e02d82e
    .end array-data

    .line 585
    :array_3d
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 586
    :array_3e
    .array-data 4
        0x3e800000    # 0.25f
        0x3e99999a    # 0.3f
        0x3eb33333    # 0.35f
        0x3ecccccd    # 0.4f
        0x3ee2e2e3
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f141414
        0x3f27a7a8
        0x3f414141
        0x3f59d9da
        0x3f70f0f1
    .end array-data

    .line 594
    :array_3f
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 595
    :array_40
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 596
    :array_41
    .array-data 4
        0x3da3d70a    # 0.08f
        0x3de147ae    # 0.11f
        0x3e189899
        0x3e4ccccd    # 0.2f
        0x3e989899
        0x3ecccccd    # 0.4f
        0x3efefeff
        0x3f1e9e9f
        0x3f37b7b8
        0x3f51d1d2
        0x3f6aeaeb
        0x3f72f2f3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->mTmpHSL:[F

    .line 39
    return-void
.end method

.method public static applyFallback(Lcom/android/launcher3/compat/WallpaperColorsCompat;)Landroid/util/Pair;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 161
    if-eqz p0, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/android/launcher3/compat/WallpaperColorsCompat;->getColorHints()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    move v2, v0

    .line 164
    :goto_0
    if-eqz v2, :cond_2

    const v0, -0x4f4f50

    move v1, v0

    .line 165
    :goto_1
    if-eqz v2, :cond_3

    const v0, -0x616162

    .line 166
    :goto_2
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_0
    move v2, v0

    .line 162
    goto :goto_0

    :cond_1
    move v2, v0

    .line 161
    goto :goto_0

    .line 164
    :cond_2
    const v0, -0xdededf

    move v1, v0

    goto :goto_1

    .line 165
    :cond_3
    const/high16 v0, -0x1000000

    goto :goto_2
.end method

.method private static bestFit(Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;FFF)I
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 221
    const/4 v2, -0x1

    .line 222
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 224
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->h:[F

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 226
    iget-object v3, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->h:[F

    aget v3, v3, v0

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v6

    .line 227
    iget-object v4, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->s:[F

    aget v4, v4, v0

    sub-float v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v6

    .line 226
    add-float/2addr v3, v4

    .line 228
    iget-object v4, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->l:[F

    aget v4, v4, v0

    sub-float v4, p3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v4, v5

    .line 226
    add-float/2addr v3, v4

    .line 229
    cmpg-float v4, v3, v1

    if-gez v4, :cond_0

    move v1, v3

    move v2, v0

    .line 224
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_1
    return v2
.end method

.method private static findTonalPalette(FF)Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 242
    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 243
    sget-object v0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->GREY_PALETTE:Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;

    return-object v0

    .line 246
    :cond_0
    const/4 v2, 0x0

    .line 247
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 249
    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->TONAL_PALETTES:[Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;

    array-length v3, v3

    if-ge v0, v3, :cond_9

    .line 250
    sget-object v3, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->TONAL_PALETTES:[Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;

    aget-object v3, v3, v0

    .line 252
    iget v4, v3, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->minHue:F

    cmpl-float v4, p0, v4

    if-ltz v4, :cond_2

    iget v4, v3, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->maxHue:F

    cmpg-float v4, p0, v4

    if-gtz v4, :cond_2

    .line 284
    :cond_1
    :goto_1
    return-object v3

    .line 257
    :cond_2
    iget v4, v3, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->maxHue:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_3

    cmpl-float v4, p0, v5

    if-ltz v4, :cond_3

    iget v4, v3, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->maxHue:F

    invoke-static {v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->fract(F)F

    move-result v4

    cmpg-float v4, p0, v4

    if-lez v4, :cond_1

    .line 262
    :cond_3
    iget v4, v3, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->minHue:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    iget v4, v3, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->minHue:F

    invoke-static {v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->fract(F)F

    move-result v4

    cmpl-float v4, p0, v4

    if-ltz v4, :cond_4

    cmpg-float v4, p0, v6

    if-lez v4, :cond_1

    .line 267
    :cond_4
    iget v4, v3, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->minHue:F

    cmpg-float v4, p0, v4

    if-gtz v4, :cond_6

    iget v4, v3, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->minHue:F

    sub-float/2addr v4, p0

    cmpg-float v4, v4, v1

    if-gez v4, :cond_6

    .line 269
    iget v1, v3, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->minHue:F

    sub-float/2addr v1, p0

    move-object v2, v3

    .line 249
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_6
    iget v4, v3, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->maxHue:F

    cmpl-float v4, p0, v4

    if-ltz v4, :cond_7

    iget v4, v3, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->maxHue:F

    sub-float v4, p0, v4

    cmpg-float v4, v4, v1

    if-gez v4, :cond_7

    .line 272
    iget v1, v3, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->maxHue:F

    sub-float v1, p0, v1

    move-object v2, v3

    .line 270
    goto :goto_2

    .line 273
    :cond_7
    iget v4, v3, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->maxHue:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_8

    iget v4, v3, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->maxHue:F

    invoke-static {v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->fract(F)F

    move-result v4

    cmpl-float v4, p0, v4

    if-ltz v4, :cond_8

    .line 274
    iget v4, v3, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->maxHue:F

    invoke-static {v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->fract(F)F

    move-result v4

    sub-float v4, p0, v4

    cmpg-float v4, v4, v1

    if-gez v4, :cond_8

    .line 276
    iget v1, v3, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->maxHue:F

    invoke-static {v1}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->fract(F)F

    move-result v1

    sub-float v1, p0, v1

    move-object v2, v3

    .line 274
    goto :goto_2

    .line 277
    :cond_8
    iget v4, v3, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->minHue:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    iget v4, v3, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->minHue:F

    invoke-static {v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->fract(F)F

    move-result v4

    cmpg-float v4, p0, v4

    if-gtz v4, :cond_5

    .line 278
    iget v4, v3, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->minHue:F

    invoke-static {v4}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->fract(F)F

    move-result v4

    sub-float/2addr v4, p0

    cmpg-float v4, v4, v1

    if-gez v4, :cond_5

    .line 280
    iget v1, v3, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->minHue:F

    invoke-static {v1}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->fract(F)F

    move-result v1

    sub-float/2addr v1, p0

    move-object v2, v3

    goto :goto_2

    :cond_9
    move-object v3, v2

    goto/16 :goto_1
.end method

.method private static fit([FFIFF)[F
    .locals 4

    .prologue
    .line 201
    array-length v0, p0

    new-array v1, v0, [F

    .line 202
    aget v0, p0, p2

    sub-float v2, p1, v0

    .line 204
    const/4 v0, 0x0

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 205
    aget v3, p0, v0

    add-float/2addr v3, v2

    invoke-static {v3, p3, p4}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v3

    aput v3, v1, v0

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_0
    return-object v1
.end method

.method private static fract(F)F
    .locals 2

    .prologue
    .line 288
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v0, p0, v0

    return v0
.end method

.method private getColorInt(I[F[F[F)I
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->mTmpHSL:[F

    aget v1, p2, p1

    invoke-static {v1}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->fract(F)F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->mTmpHSL:[F

    aget v1, p3, p1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 172
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->mTmpHSL:[F

    aget v1, p4, p1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 173
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->mTmpHSL:[F

    invoke-static {v0}, Landroid/support/v4/b/a;->asa([F)I

    move-result v0

    return v0
.end method

.method private static getMainColors(Lcom/android/launcher3/compat/WallpaperColorsCompat;)Ljava/util/List;
    .locals 2

    .prologue
    .line 790
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 791
    invoke-virtual {p0}, Lcom/android/launcher3/compat/WallpaperColorsCompat;->getPrimaryColor()I

    move-result v1

    if-eqz v1, :cond_0

    .line 792
    invoke-virtual {p0}, Lcom/android/launcher3/compat/WallpaperColorsCompat;->getPrimaryColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 794
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/compat/WallpaperColorsCompat;->getSecondaryColor()I

    move-result v1

    if-eqz v1, :cond_1

    .line 795
    invoke-virtual {p0}, Lcom/android/launcher3/compat/WallpaperColorsCompat;->getSecondaryColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 797
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/compat/WallpaperColorsCompat;->getTertiaryColor()I

    move-result v1

    if-eqz v1, :cond_2

    .line 798
    invoke-virtual {p0}, Lcom/android/launcher3/compat/WallpaperColorsCompat;->getTertiaryColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 800
    :cond_2
    return-object v0
.end method

.method private isBlacklisted([F)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 182
    sget-object v2, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->BLACKLISTED_COLORS:[Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 183
    aget v5, p1, v1

    aget v6, p1, v8

    const/4 v7, 0x2

    aget v7, p1, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$ColorRange;->containsColor(FFF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 184
    return v8

    .line 182
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_1
    return v1
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;
    .locals 3

    .prologue
    .line 42
    const-class v0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c001c

    .line 42
    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->getOverrideObject(Ljava/lang/Class;Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;

    return-object v0
.end method


# virtual methods
.method public extractInto(Lcom/android/launcher3/compat/WallpaperColorsCompat;)Landroid/util/Pair;
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 62
    if-nez p1, :cond_0

    .line 63
    invoke-static {p1}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->applyFallback(Lcom/android/launcher3/compat/WallpaperColorsCompat;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 66
    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->getMainColors(Lcom/android/launcher3/compat/WallpaperColorsCompat;)Ljava/util/List;

    move-result-object v7

    .line 67
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 68
    invoke-virtual {p1}, Lcom/android/launcher3/compat/WallpaperColorsCompat;->getColorHints()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    move v5, v6

    .line 71
    :goto_0
    if-nez v8, :cond_2

    .line 72
    invoke-static {p1}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->applyFallback(Lcom/android/launcher3/compat/WallpaperColorsCompat;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_1
    move v5, v2

    .line 68
    goto :goto_0

    .line 80
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 81
    const/4 v0, 0x3

    new-array v9, v0, [F

    move v4, v2

    .line 82
    :goto_1
    if-ge v4, v8, :cond_c

    .line 83
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 84
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v10

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v11

    .line 85
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    .line 84
    invoke-static {v10, v11, v12, v9}, Landroid/support/v4/b/a;->arO(III[F)V

    .line 88
    invoke-direct {p0, v9}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->isBlacklisted([F)Z

    move-result v10

    if-nez v10, :cond_3

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 95
    :goto_2
    if-nez v0, :cond_4

    .line 96
    invoke-static {p1}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->applyFallback(Lcom/android/launcher3/compat/WallpaperColorsCompat;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 82
    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 99
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 100
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v3, v4, v0, v9}, Landroid/support/v4/b/a;->arO(III[F)V

    .line 105
    aget v0, v9, v2

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v0, v3

    aput v0, v9, v2

    .line 108
    aget v0, v9, v2

    aget v3, v9, v6

    invoke-static {v0, v3}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->findTonalPalette(FF)Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;

    move-result-object v0

    .line 109
    if-nez v0, :cond_5

    .line 110
    const-string/jumbo v0, "Tonal"

    const-string/jumbo v1, "Could not find a tonal palette!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {p1}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->applyFallback(Lcom/android/launcher3/compat/WallpaperColorsCompat;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 115
    :cond_5
    aget v3, v9, v2

    aget v4, v9, v6

    aget v7, v9, v1

    invoke-static {v0, v3, v4, v7}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->bestFit(Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;FFF)I

    move-result v3

    .line 116
    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    .line 117
    const-string/jumbo v0, "Tonal"

    const-string/jumbo v1, "Could not find best fit!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {p1}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->applyFallback(Lcom/android/launcher3/compat/WallpaperColorsCompat;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 122
    :cond_6
    iget-object v4, v0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->h:[F

    aget v7, v9, v2

    .line 123
    const/high16 v8, -0x800000    # Float.NEGATIVE_INFINITY

    const/high16 v10, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 122
    invoke-static {v4, v7, v3, v8, v10}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->fit([FFIFF)[F

    move-result-object v4

    .line 124
    iget-object v7, v0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->s:[F

    aget v6, v9, v6

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v6, v3, v13, v8}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->fit([FFIFF)[F

    move-result-object v6

    .line 125
    iget-object v0, v0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm$TonalPalette;->l:[F

    aget v7, v9, v1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v0, v7, v3, v13, v8}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->fit([FFIFF)[F

    move-result-object v7

    .line 128
    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->getColorInt(I[F[F[F)I

    move-result v8

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->mTmpHSL:[F

    invoke-static {v8, v0}, Landroid/support/v4/b/a;->arU(I[F)V

    .line 133
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->mTmpHSL:[F

    aget v0, v0, v1

    .line 134
    iget-object v9, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->mTmpHSL:[F

    const v10, -0x4f4f50

    invoke-static {v10, v9}, Landroid/support/v4/b/a;->arU(I[F)V

    .line 135
    iget-object v9, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->mTmpHSL:[F

    aget v9, v9, v1

    .line 136
    cmpl-float v9, v0, v9

    if-lez v9, :cond_7

    .line 137
    invoke-static {p1}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->applyFallback(Lcom/android/launcher3/compat/WallpaperColorsCompat;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 139
    :cond_7
    iget-object v9, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->mTmpHSL:[F

    const v10, -0xdededf

    invoke-static {v10, v9}, Landroid/support/v4/b/a;->arU(I[F)V

    .line 140
    iget-object v9, p0, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->mTmpHSL:[F

    aget v9, v9, v1

    .line 141
    cmpg-float v0, v0, v9

    if-gez v0, :cond_8

    .line 142
    invoke-static {p1}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->applyFallback(Lcom/android/launcher3/compat/WallpaperColorsCompat;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 147
    :cond_8
    if-eqz v5, :cond_a

    .line 148
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    .line 154
    :cond_9
    :goto_3
    if-lt v2, v1, :cond_b

    const/4 v0, -0x2

    :goto_4
    add-int/2addr v0, v2

    .line 155
    invoke-direct {p0, v0, v4, v6, v7}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->getColorInt(I[F[F[F)I

    move-result v0

    .line 157
    new-instance v1, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 149
    :cond_a
    if-lt v3, v1, :cond_9

    .line 152
    const/4 v0, 0x3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v2, v0

    goto :goto_3

    :cond_b
    move v0, v1

    .line 154
    goto :goto_4

    :cond_c
    move-object v0, v3

    goto/16 :goto_2
.end method
