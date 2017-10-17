.class public Lcom/android/launcher3/CellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# instance fields
.field public canReorder:Z

.field public cellHSpan:I

.field public cellVSpan:I

.field public cellX:I

.field public cellY:I

.field dropped:Z

.field public isFullscreen:Z

.field public isLockedToGrid:Z

.field public tmpCellX:I

.field public tmpCellY:I

.field public useTmpCoords:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 2697
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2654
    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2659
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isFullscreen:Z

    .line 2665
    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 2698
    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 2699
    iput p2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 2700
    iput p3, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 2701
    iput p4, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 2702
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2677
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2654
    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2659
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isFullscreen:Z

    .line 2665
    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 2678
    iput v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 2679
    iput v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 2680
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2683
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2654
    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2659
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isFullscreen:Z

    .line 2665
    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 2684
    iput v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 2685
    iput v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 2686
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 2751
    iget v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 2743
    iget v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 2759
    iget v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 2767
    iget v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 2747
    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    .line 2748
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 2739
    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    .line 2740
    return-void
.end method

.method public setX(I)V
    .locals 0

    .prologue
    .line 2755
    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    .line 2756
    return-void
.end method

.method public setY(I)V
    .locals 0

    .prologue
    .line 2763
    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    .line 2764
    return-void
.end method

.method public setup(IIZI)V
    .locals 7

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    .line 2705
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/CellLayout$LayoutParams;->setup(IIZIFF)V

    .line 2706
    return-void
.end method

.method public setup(IIZIFF)V
    .locals 5

    .prologue
    .line 2717
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v0, :cond_1

    .line 2718
    iget v2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 2719
    iget v3, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 2720
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    .line 2721
    :goto_0
    iget-boolean v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    .line 2723
    :goto_1
    if-eqz p3, :cond_0

    .line 2724
    sub-int v0, p4, v0

    iget v4, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    sub-int/2addr v0, v4

    .line 2727
    :cond_0
    mul-int/2addr v2, p1

    int-to-float v2, v2

    div-float/2addr v2, p5

    iget v4, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->leftMargin:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->rightMargin:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    .line 2728
    mul-int v2, v3, p2

    int-to-float v2, v2

    div-float/2addr v2, p6

    iget v3, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->topMargin:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->bottomMargin:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    .line 2729
    mul-int/2addr v0, p1

    iget v2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    .line 2730
    mul-int v0, v1, p2

    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    .line 2732
    :cond_1
    return-void

    .line 2720
    :cond_2
    iget v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    goto :goto_0

    .line 2721
    :cond_3
    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
