.class Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field finalPlacedItems:Ljava/util/ArrayList;

.field private final ignoreMove:Z

.field private final itemsToPlace:Ljava/util/ArrayList;

.field lowestMoveCost:F

.field lowestWeightLoss:F

.field private final occupied:Lcom/android/launcher3/util/GridOccupancy;

.field private final startY:I

.field final synthetic this$0:Lcom/android/launcher3/model/GridSizeMigrationTask;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/GridSizeMigrationTask;Lcom/android/launcher3/util/GridOccupancy;Ljava/util/ArrayList;I)V
    .locals 6

    .prologue
    .line 423
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;-><init>(Lcom/android/launcher3/model/GridSizeMigrationTask;Lcom/android/launcher3/util/GridOccupancy;Ljava/util/ArrayList;IZ)V

    .line 424
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/model/GridSizeMigrationTask;Lcom/android/launcher3/util/GridOccupancy;Ljava/util/ArrayList;IZ)V
    .locals 1

    .prologue
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 426
    iput-object p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->this$0:Lcom/android/launcher3/model/GridSizeMigrationTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->lowestWeightLoss:F

    .line 418
    iput v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->lowestMoveCost:F

    .line 428
    iput-object p2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 429
    iput-object p3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->itemsToPlace:Ljava/util/ArrayList;

    .line 430
    iput-boolean p5, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->ignoreMove:Z

    .line 431
    iput p4, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->startY:I

    .line 434
    iget-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->itemsToPlace:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 435
    return-void
.end method


# virtual methods
.method public find()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2, v2, v0}, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->find(IFFLjava/util/ArrayList;)V

    .line 439
    return-void
.end method

.method public find(IFFLjava/util/ArrayList;)V
    .locals 14

    .prologue
    .line 450
    iget v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->lowestWeightLoss:F

    cmpl-float v2, p2, v2

    if-gez v2, :cond_0

    .line 451
    iget v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->lowestWeightLoss:F

    cmpl-float v2, p2, v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->lowestMoveCost:F

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_1

    .line 453
    :cond_0
    return-void

    .line 455
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->itemsToPlace:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_2

    .line 457
    move/from16 v0, p2

    iput v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->lowestWeightLoss:F

    .line 458
    move/from16 v0, p3

    iput v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->lowestMoveCost:F

    .line 461
    invoke-static/range {p4 .. p4}, Lcom/android/launcher3/model/GridSizeMigrationTask;->-wrap0(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->finalPlacedItems:Ljava/util/ArrayList;

    .line 462
    return-void

    .line 465
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->itemsToPlace:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    .line 466
    iget v9, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    .line 467
    iget v10, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    .line 470
    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v11, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 471
    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 472
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    iget v3, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    const/4 v4, 0x1

    if-gt v3, v4, :cond_3

    iget v3, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_d

    .line 478
    :cond_3
    iget v6, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    .line 479
    iget v7, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    .line 481
    iget v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->startY:I

    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->this$0:Lcom/android/launcher3/model/GridSizeMigrationTask;

    invoke-static {v4}, Lcom/android/launcher3/model/GridSizeMigrationTask;->-get1(Lcom/android/launcher3/model/GridSizeMigrationTask;)I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 482
    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->this$0:Lcom/android/launcher3/model/GridSizeMigrationTask;

    invoke-static {v5}, Lcom/android/launcher3/model/GridSizeMigrationTask;->-get0(Lcom/android/launcher3/model/GridSizeMigrationTask;)I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 484
    if-eq v4, v9, :cond_17

    .line 485
    iput v4, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    .line 486
    const/high16 v5, 0x3f800000    # 1.0f

    add-float v5, v5, p3

    .line 488
    :goto_2
    if-eq v3, v10, :cond_4

    .line 489
    iput v3, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    .line 490
    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v5, v8

    .line 492
    :cond_4
    iget-boolean v8, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->ignoreMove:Z

    if-eqz v8, :cond_5

    move/from16 v5, p3

    .line 496
    :cond_5
    iget-object v8, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v8, v4, v3, v6, v7}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 498
    iget-object v8, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v12, 0x1

    invoke-virtual {v8, v2, v12}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/ItemInfo;Z)V

    .line 499
    add-int/lit8 v8, p1, 0x1

    move/from16 v0, p2

    invoke-virtual {p0, v8, v0, v5, v11}, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->find(IFFLjava/util/ArrayList;)V

    .line 500
    iget-object v8, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v12, 0x0

    invoke-virtual {v8, v2, v12}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/ItemInfo;Z)V

    .line 504
    :cond_6
    iget v8, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->minSpanX:I

    if-le v6, v8, :cond_7

    iget-object v8, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    add-int/lit8 v12, v6, -0x1

    invoke-virtual {v8, v4, v3, v12, v7}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 505
    iget v8, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    .line 506
    iget-object v8, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v12, 0x1

    invoke-virtual {v8, v2, v12}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/ItemInfo;Z)V

    .line 508
    add-int/lit8 v8, p1, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v12, v5

    move/from16 v0, p2

    invoke-virtual {p0, v8, v0, v12, v11}, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->find(IFFLjava/util/ArrayList;)V

    .line 509
    iget-object v8, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v12, 0x0

    invoke-virtual {v8, v2, v12}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/ItemInfo;Z)V

    .line 510
    iget v8, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    .line 514
    :cond_7
    iget v8, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->minSpanY:I

    if-le v7, v8, :cond_8

    iget-object v8, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v8, v4, v3, v6, v12}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 515
    iget v8, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    .line 516
    iget-object v8, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v12, 0x1

    invoke-virtual {v8, v2, v12}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/ItemInfo;Z)V

    .line 518
    add-int/lit8 v8, p1, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v12, v5

    move/from16 v0, p2

    invoke-virtual {p0, v8, v0, v12, v11}, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->find(IFFLjava/util/ArrayList;)V

    .line 519
    iget-object v8, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v12, 0x0

    invoke-virtual {v8, v2, v12}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/ItemInfo;Z)V

    .line 520
    iget v8, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    .line 524
    :cond_8
    iget v8, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->minSpanY:I

    if-le v7, v8, :cond_9

    iget v8, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->minSpanX:I

    if-le v6, v8, :cond_9

    .line 525
    iget-object v8, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    add-int/lit8 v12, v6, -0x1

    add-int/lit8 v13, v7, -0x1

    invoke-virtual {v8, v4, v3, v12, v13}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v8

    .line 524
    if-eqz v8, :cond_9

    .line 526
    iget v8, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    .line 527
    iget v8, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    .line 528
    iget-object v8, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v12, 0x1

    invoke-virtual {v8, v2, v12}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/ItemInfo;Z)V

    .line 530
    add-int/lit8 v8, p1, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    add-float/2addr v5, v12

    move/from16 v0, p2

    invoke-virtual {p0, v8, v0, v5, v11}, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->find(IFFLjava/util/ArrayList;)V

    .line 531
    iget-object v5, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v8, 0x0

    invoke-virtual {v5, v2, v8}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/ItemInfo;Z)V

    .line 532
    iget v5, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanX:I

    .line 533
    iget v5, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->spanY:I

    .line 535
    :cond_9
    iput v9, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    .line 536
    iput v10, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    .line 482
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 481
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 543
    :cond_b
    add-int/lit8 v3, p1, 0x1

    iget v2, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F

    add-float v2, v2, p2

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->find(IFFLjava/util/ArrayList;)V

    .line 602
    :cond_c
    :goto_3
    return-void

    .line 548
    :cond_d
    const v6, 0x7fffffff

    .line 549
    const v5, 0x7fffffff

    const v4, 0x7fffffff

    .line 551
    iget v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->startY:I

    :goto_4
    iget-object v7, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->this$0:Lcom/android/launcher3/model/GridSizeMigrationTask;

    invoke-static {v7}, Lcom/android/launcher3/model/GridSizeMigrationTask;->-get1(Lcom/android/launcher3/model/GridSizeMigrationTask;)I

    move-result v7

    if-ge v3, v7, :cond_10

    .line 552
    const/4 v7, 0x0

    :goto_5
    iget-object v8, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->this$0:Lcom/android/launcher3/model/GridSizeMigrationTask;

    invoke-static {v8}, Lcom/android/launcher3/model/GridSizeMigrationTask;->-get0(Lcom/android/launcher3/model/GridSizeMigrationTask;)I

    move-result v8

    if-ge v7, v8, :cond_f

    .line 553
    iget-object v8, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v8, v8, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v8, v8, v7

    aget-boolean v8, v8, v3

    if-nez v8, :cond_16

    .line 554
    iget-boolean v8, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->ignoreMove:Z

    if-eqz v8, :cond_e

    const/4 v8, 0x0

    .line 556
    :goto_6
    if-ge v8, v6, :cond_16

    move v5, v3

    move v6, v7

    .line 552
    :goto_7
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move v4, v5

    move v5, v6

    move v6, v8

    goto :goto_5

    .line 555
    :cond_e
    iget v8, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    sub-int/2addr v8, v7

    iget v12, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    sub-int/2addr v12, v7

    mul-int/2addr v8, v12

    iget v12, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    sub-int/2addr v12, v3

    iget v13, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    sub-int/2addr v13, v3

    mul-int/2addr v12, v13

    add-int/2addr v8, v12

    goto :goto_6

    .line 551
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 565
    :cond_10
    iget-object v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->this$0:Lcom/android/launcher3/model/GridSizeMigrationTask;

    invoke-static {v3}, Lcom/android/launcher3/model/GridSizeMigrationTask;->-get0(Lcom/android/launcher3/model/GridSizeMigrationTask;)I

    move-result v3

    if-ge v5, v3, :cond_13

    iget-object v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->this$0:Lcom/android/launcher3/model/GridSizeMigrationTask;

    invoke-static {v3}, Lcom/android/launcher3/model/GridSizeMigrationTask;->-get1(Lcom/android/launcher3/model/GridSizeMigrationTask;)I

    move-result v3

    if-ge v4, v3, :cond_13

    .line 567
    if-eq v5, v9, :cond_15

    .line 568
    iput v5, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    .line 569
    const/high16 v3, 0x3f800000    # 1.0f

    add-float v3, v3, p3

    .line 571
    :goto_8
    if-eq v4, v10, :cond_11

    .line 572
    iput v4, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    .line 573
    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    .line 575
    :cond_11
    iget-boolean v4, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->ignoreMove:Z

    if-eqz v4, :cond_12

    move/from16 v3, p3

    .line 578
    :cond_12
    iget-object v4, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/ItemInfo;Z)V

    .line 579
    add-int/lit8 v4, p1, 0x1

    move/from16 v0, p2

    invoke-virtual {p0, v4, v0, v3, v11}, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->find(IFFLjava/util/ArrayList;)V

    .line 580
    iget-object v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->occupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/ItemInfo;Z)V

    .line 581
    iput v9, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellX:I

    .line 582
    iput v10, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->cellY:I

    .line 590
    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->itemsToPlace:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_c

    .line 591
    iget-object v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->itemsToPlace:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    iget v3, v3, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F

    iget v4, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_c

    iget-boolean v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->ignoreMove:Z

    xor-int/lit8 v3, v3, 0x1

    .line 590
    if-eqz v3, :cond_c

    .line 592
    add-int/lit8 v3, p1, 0x1

    iget v2, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F

    add-float v2, v2, p2

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->find(IFFLjava/util/ArrayList;)V

    goto/16 :goto_3

    .line 596
    :cond_13
    add-int/lit8 v3, p1, 0x1

    move v4, v3

    :goto_9
    iget-object v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->itemsToPlace:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_14

    .line 597
    iget-object v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->itemsToPlace:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;

    iget v3, v3, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F

    add-float p2, p2, v3

    .line 596
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_9

    .line 599
    :cond_14
    iget-object v3, p0, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->itemsToPlace:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v2, v2, Lcom/android/launcher3/model/GridSizeMigrationTask$DbEntry;->weight:F

    add-float v2, v2, p2

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/android/launcher3/model/GridSizeMigrationTask$OptimalPlacementSolution;->find(IFFLjava/util/ArrayList;)V

    goto/16 :goto_3

    :cond_15
    move/from16 v3, p3

    goto/16 :goto_8

    :cond_16
    move v8, v6

    move v6, v5

    move v5, v4

    goto/16 :goto_7

    :cond_17
    move/from16 v5, p3

    goto/16 :goto_2
.end method
