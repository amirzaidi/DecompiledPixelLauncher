.class public Lcom/android/launcher3/util/GridOccupancy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final cells:[[Z

.field private final mCountX:I

.field private final mCountY:I


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountX:I

    .line 19
    iput p2, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountY:I

    .line 20
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    .line 21
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 99
    iget v3, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountX:I

    iget v4, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountY:I

    move-object v0, p0

    move v2, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 100
    return-void
.end method

.method public copyTo(Lcom/android/launcher3/util/GridOccupancy;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 54
    :goto_0
    iget v2, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountX:I

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 55
    :goto_1
    iget v3, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountY:I

    if-ge v2, v3, :cond_0

    .line 56
    iget-object v3, p1, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v4, v4, v0

    aget-boolean v4, v4, v2

    aput-boolean v4, v3, v2

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 54
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    return-void
.end method

.method public findVacantCell([III)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    move v0, v1

    .line 33
    :goto_0
    add-int v2, v0, p3

    iget v3, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountY:I

    if-gt v2, v3, :cond_6

    move v2, v1

    .line 34
    :goto_1
    add-int v3, v2, p2

    iget v4, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountX:I

    if-gt v3, v4, :cond_5

    .line 35
    iget-object v3, p0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v3, v3, v2

    aget-boolean v3, v3, v0

    xor-int/lit8 v3, v3, 0x1

    move v5, v2

    .line 37
    :goto_2
    add-int v4, v2, p2

    if-ge v5, v4, :cond_0

    move v4, v0

    .line 38
    :goto_3
    add-int v6, v0, p3

    if-ge v4, v6, :cond_3

    .line 39
    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v3, v3, v5

    aget-boolean v3, v3, v4

    xor-int/lit8 v3, v3, 0x1

    .line 40
    :goto_4
    if-nez v3, :cond_2

    .line 43
    :cond_0
    if-eqz v3, :cond_4

    .line 44
    aput v2, p1, v1

    .line 45
    aput v0, p1, v7

    .line 46
    return v7

    :cond_1
    move v3, v1

    .line 39
    goto :goto_4

    .line 38
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 37
    :cond_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_2

    .line 34
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 33
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_6
    return v1
.end method

.method public isRegionVacant(IIII)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 62
    add-int v0, p1, p3

    add-int/lit8 v1, v0, -0x1

    .line 63
    add-int v0, p2, p4

    add-int/lit8 v2, v0, -0x1

    .line 64
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 65
    :cond_0
    return v4

    .line 64
    :cond_1
    iget v0, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountX:I

    if-ge v1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountY:I

    if-ge v2, v0, :cond_0

    .line 67
    :goto_0
    if-gt p1, v1, :cond_4

    move v0, p2

    .line 68
    :goto_1
    if-gt v0, v2, :cond_3

    .line 69
    iget-object v3, p0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v3, v3, p1

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_2

    .line 70
    return v4

    .line 68
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 67
    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 74
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public markCells(IIIIZ)V
    .locals 3

    .prologue
    .line 78
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    move v1, p1

    .line 79
    :goto_0
    add-int v0, p1, p3

    if-ge v1, v0, :cond_3

    iget v0, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountX:I

    if-ge v1, v0, :cond_3

    move v0, p2

    .line 80
    :goto_1
    add-int v2, p2, p4

    if-ge v0, v2, :cond_2

    iget v2, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountY:I

    if-ge v0, v2, :cond_2

    .line 81
    iget-object v2, p0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v2, v2, v1

    aput-boolean p5, v2, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 84
    :cond_3
    return-void
.end method

.method public markCells(Landroid/graphics/Rect;Z)V
    .locals 6

    .prologue
    .line 87
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 88
    return-void
.end method

.method public markCells(Lcom/android/launcher3/ItemInfo;Z)V
    .locals 6

    .prologue
    .line 95
    iget v1, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v2, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v3, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v4, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 96
    return-void
.end method

.method public markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V
    .locals 6

    .prologue
    .line 91
    iget v1, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v2, p1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v3, p1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v4, p1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 92
    return-void
.end method
