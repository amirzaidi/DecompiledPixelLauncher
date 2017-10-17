.class Lcom/android/launcher3/CellLayout$ItemConfiguration;
.super Lcom/android/launcher3/util/CellAndSpan;
.source "SourceFile"


# instance fields
.field intersectingViews:Ljava/util/ArrayList;

.field isSolution:Z

.field map:Ljava/util/HashMap;

.field private savedMap:Ljava/util/HashMap;

.field sortedViews:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2419
    invoke-direct {p0}, Lcom/android/launcher3/util/CellAndSpan;-><init>()V

    .line 2420
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    .line 2421
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    .line 2422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    .line 2424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    .line 2419
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/CellLayout$ItemConfiguration;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>()V

    return-void
.end method


# virtual methods
.method add(Landroid/view/View;Lcom/android/launcher3/util/CellAndSpan;)V
    .locals 2

    .prologue
    .line 2441
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2442
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/launcher3/util/CellAndSpan;

    invoke-direct {v1}, Lcom/android/launcher3/util/CellAndSpan;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2443
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2444
    return-void
.end method

.method area()I
    .locals 2

    .prologue
    .line 2447
    iget v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanX:I

    iget v1, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanY:I

    mul-int/2addr v0, v1

    return v0
.end method

.method getBoundingRectForViews(Ljava/util/ArrayList;Landroid/graphics/Rect;)V
    .locals 7

    .prologue
    .line 2451
    const/4 v0, 0x1

    .line 2452
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2453
    iget-object v3, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/CellAndSpan;

    .line 2454
    if-eqz v1, :cond_0

    .line 2455
    iget v1, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v3, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v4, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v5, v0, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v0, v0, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v0, v5

    invoke-virtual {p2, v1, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 2456
    const/4 v0, 0x0

    :goto_1
    move v1, v0

    goto :goto_0

    .line 2458
    :cond_0
    iget v3, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v4, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v5, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v6, v0, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    iget v6, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v0, v0, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v0, v6

    invoke-virtual {p2, v3, v4, v5, v0}, Landroid/graphics/Rect;->union(IIII)V

    move v0, v1

    goto :goto_1

    .line 2461
    :cond_1
    return-void
.end method

.method restore()V
    .locals 4

    .prologue
    .line 2435
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2436
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/CellAndSpan;

    iget-object v3, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/CellAndSpan;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/CellAndSpan;->copyFrom(Lcom/android/launcher3/util/CellAndSpan;)V

    goto :goto_0

    .line 2438
    :cond_0
    return-void
.end method

.method save()V
    .locals 4

    .prologue
    .line 2428
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2429
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/CellAndSpan;

    iget-object v3, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/CellAndSpan;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/CellAndSpan;->copyFrom(Lcom/android/launcher3/util/CellAndSpan;)V

    goto :goto_0

    .line 2431
    :cond_0
    return-void
.end method
