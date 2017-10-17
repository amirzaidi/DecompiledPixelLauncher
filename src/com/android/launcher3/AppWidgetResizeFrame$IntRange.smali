.class Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public end:I

.field public start:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>()V

    return-void
.end method


# virtual methods
.method public applyDelta(ZZILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)V
    .locals 1

    .prologue
    .line 538
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    add-int/2addr v0, p3

    :goto_0
    iput v0, p4, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    .line 539
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    add-int/2addr v0, p3

    :goto_1
    iput v0, p4, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    .line 540
    return-void

    .line 538
    :cond_0
    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    goto :goto_0

    .line 539
    :cond_1
    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    goto :goto_1
.end method

.method public applyDeltaAndBound(ZZIIILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 554
    invoke-virtual {p0, p1, p2, p3, p6}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->applyDelta(ZZILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)V

    .line 555
    iget v0, p6, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    if-gez v0, :cond_0

    .line 556
    iput v1, p6, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    .line 558
    :cond_0
    iget v0, p6, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    if-le v0, p5, :cond_1

    .line 559
    iput p5, p6, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    .line 561
    :cond_1
    invoke-virtual {p6}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result v0

    if-ge v0, p4, :cond_2

    .line 562
    if-eqz p1, :cond_3

    .line 563
    iget v0, p6, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    sub-int/2addr v0, p4

    iput v0, p6, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    .line 568
    :cond_2
    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual {p6}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result v1

    :goto_1
    sub-int/2addr v0, v1

    return v0

    .line 564
    :cond_3
    if-eqz p2, :cond_2

    .line 565
    iget v0, p6, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    add-int/2addr v0, p4

    iput v0, p6, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    goto :goto_0

    .line 568
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result v0

    invoke-virtual {p6}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result v1

    goto :goto_1
.end method

.method public clamp(I)I
    .locals 2

    .prologue
    .line 521
    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    iget v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v0

    return v0
.end method

.method public set(II)V
    .locals 0

    .prologue
    .line 525
    iput p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    .line 526
    iput p2, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    .line 527
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 530
    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    iget v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    sub-int/2addr v0, v1

    return v0
.end method
