.class Lcom/android/launcher3/CellLayout$ViewCluster;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bottomEdge:[I

.field boundingRect:Landroid/graphics/Rect;

.field boundingRectDirty:Z

.field comparator:Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;

.field config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

.field dirtyEdges:I

.field leftEdge:[I

.field rightEdge:[I

.field final synthetic this$0:Lcom/android/launcher3/CellLayout;

.field topEdge:[I

.field views:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;)V
    .locals 1

    .prologue
    .line 1363
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->this$0:Lcom/android/launcher3/CellLayout;

    .line 1364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1354
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    .line 1356
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-static {v0}, Lcom/android/launcher3/CellLayout;->-get2(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->leftEdge:[I

    .line 1357
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-static {v0}, Lcom/android/launcher3/CellLayout;->-get2(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->rightEdge:[I

    .line 1358
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-static {v0}, Lcom/android/launcher3/CellLayout;->-get1(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->topEdge:[I

    .line 1359
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-static {v0}, Lcom/android/launcher3/CellLayout;->-get1(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->bottomEdge:[I

    .line 1499
    new-instance v0, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;

    invoke-direct {v0, p0}, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;-><init>(Lcom/android/launcher3/CellLayout$ViewCluster;)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->comparator:Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;

    .line 1365
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    .line 1366
    iput-object p3, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    .line 1367
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout$ViewCluster;->resetEdges()V

    .line 1368
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1489
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout$ViewCluster;->resetEdges()V

    .line 1490
    return-void
.end method

.method computeEdge(I)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1384
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v0

    .line 1385
    :goto_0
    if-ge v2, v3, :cond_7

    .line 1386
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/CellAndSpan;

    .line 1387
    packed-switch p1, :pswitch_data_0

    .line 1385
    :cond_0
    :pswitch_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1389
    :pswitch_1
    iget v4, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    .line 1390
    iget v1, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    :goto_1
    iget v5, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v6, v0, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v5, v6

    if-ge v1, v5, :cond_0

    .line 1391
    iget-object v5, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->leftEdge:[I

    aget v5, v5, v1

    if-lt v4, v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->leftEdge:[I

    aget v5, v5, v1

    if-gez v5, :cond_2

    .line 1392
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->leftEdge:[I

    aput v4, v5, v1

    .line 1390
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1397
    :pswitch_2
    iget v1, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v4, v0, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v4, v1

    .line 1398
    iget v1, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    :goto_2
    iget v5, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v6, v0, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v5, v6

    if-ge v1, v5, :cond_0

    .line 1399
    iget-object v5, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->rightEdge:[I

    aget v5, v5, v1

    if-le v4, v5, :cond_3

    .line 1400
    iget-object v5, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->rightEdge:[I

    aput v4, v5, v1

    .line 1398
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1405
    :pswitch_3
    iget v4, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    .line 1406
    iget v1, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    :goto_3
    iget v5, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v6, v0, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    if-ge v1, v5, :cond_0

    .line 1407
    iget-object v5, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->topEdge:[I

    aget v5, v5, v1

    if-lt v4, v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->topEdge:[I

    aget v5, v5, v1

    if-gez v5, :cond_5

    .line 1408
    :cond_4
    iget-object v5, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->topEdge:[I

    aput v4, v5, v1

    .line 1406
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1413
    :pswitch_4
    iget v1, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v4, v0, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v4, v1

    .line 1414
    iget v1, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    :goto_4
    iget v5, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v6, v0, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    if-ge v1, v5, :cond_0

    .line 1415
    iget-object v5, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->bottomEdge:[I

    aget v5, v5, v1

    if-le v4, v5, :cond_6

    .line 1416
    iget-object v5, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->bottomEdge:[I

    aput v4, v5, v1

    .line 1414
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1422
    :cond_7
    return-void

    .line 1387
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getBoundingRect()Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 1493
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->boundingRectDirty:Z

    if-eqz v0, :cond_0

    .line 1494
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->getBoundingRectForViews(Ljava/util/ArrayList;Landroid/graphics/Rect;)V

    .line 1496
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method isViewTouchingEdge(Landroid/view/View;I)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1425
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/CellAndSpan;

    .line 1427
    iget v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->dirtyEdges:I

    and-int/2addr v1, p2

    if-ne v1, p2, :cond_0

    .line 1428
    invoke-virtual {p0, p2}, Lcom/android/launcher3/CellLayout$ViewCluster;->computeEdge(I)V

    .line 1429
    iget v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->dirtyEdges:I

    not-int v2, p2

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->dirtyEdges:I

    .line 1432
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1462
    :cond_1
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1434
    :pswitch_1
    iget v1, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    :goto_0
    iget v2, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v3, v0, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 1435
    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->leftEdge:[I

    aget v2, v2, v1

    iget v3, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v4, v0, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v3, v4

    if-ne v2, v3, :cond_2

    .line 1436
    return v5

    .line 1434
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1441
    :pswitch_2
    iget v1, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    :goto_1
    iget v2, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v3, v0, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 1442
    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->rightEdge:[I

    aget v2, v2, v1

    iget v3, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    if-ne v2, v3, :cond_3

    .line 1443
    return v5

    .line 1441
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1448
    :pswitch_3
    iget v1, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    :goto_2
    iget v2, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v3, v0, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 1449
    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->topEdge:[I

    aget v2, v2, v1

    iget v3, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v4, v0, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v3, v4

    if-ne v2, v3, :cond_4

    .line 1450
    return v5

    .line 1448
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1455
    :pswitch_4
    iget v1, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    :goto_3
    iget v2, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v3, v0, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 1456
    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->bottomEdge:[I

    aget v2, v2, v1

    iget v3, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    if-ne v2, v3, :cond_5

    .line 1457
    return v5

    .line 1455
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1432
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method resetEdges()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    move v0, v1

    .line 1371
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-static {v2}, Lcom/android/launcher3/CellLayout;->-get1(Lcom/android/launcher3/CellLayout;)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1372
    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->topEdge:[I

    aput v3, v2, v0

    .line 1373
    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->bottomEdge:[I

    aput v3, v2, v0

    .line 1371
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1375
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-static {v0}, Lcom/android/launcher3/CellLayout;->-get2(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1376
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->leftEdge:[I

    aput v3, v0, v1

    .line 1377
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->rightEdge:[I

    aput v3, v0, v1

    .line 1375
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1379
    :cond_1
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->dirtyEdges:I

    .line 1380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->boundingRectDirty:Z

    .line 1381
    return-void
.end method

.method shift(II)V
    .locals 3

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1467
    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v2, v2, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/CellAndSpan;

    .line 1468
    packed-switch p1, :pswitch_data_0

    .line 1480
    :pswitch_0
    iget v2, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    add-int/2addr v2, p2

    iput v2, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    goto :goto_0

    .line 1470
    :pswitch_1
    iget v2, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    sub-int/2addr v2, p2

    iput v2, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    goto :goto_0

    .line 1473
    :pswitch_2
    iget v2, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    add-int/2addr v2, p2

    iput v2, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    goto :goto_0

    .line 1476
    :pswitch_3
    iget v2, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    sub-int/2addr v2, p2

    iput v2, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    goto :goto_0

    .line 1484
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout$ViewCluster;->resetEdges()V

    .line 1485
    return-void

    .line 1468
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public sortConfigurationForEdgePush(I)V
    .locals 2

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->comparator:Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;

    iput p1, v0, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;->whichEdge:I

    .line 1521
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->comparator:Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1522
    return-void
.end method
