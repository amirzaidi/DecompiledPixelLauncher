.class public Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher$GraphView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field headPaint:Landroid/graphics/Paint;

.field pssPaint:Landroid/graphics/Paint;

.field final synthetic this$1:Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;

.field ussPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher$GraphView;-><init>(Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 241
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher$GraphView;->this$1:Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;

    .line 229
    invoke-direct {p0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 231
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher$GraphView;->pssPaint:Landroid/graphics/Paint;

    .line 232
    iget-object v0, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher$GraphView;->pssPaint:Landroid/graphics/Paint;

    const v1, -0x663400

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 233
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher$GraphView;->ussPaint:Landroid/graphics/Paint;

    .line 234
    iget-object v0, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher$GraphView;->ussPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x670000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher$GraphView;->headPaint:Landroid/graphics/Paint;

    .line 236
    iget-object v0, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher$GraphView;->headPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    .line 245
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 246
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    .line 248
    iget-object v1, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher$GraphView;->this$1:Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;

    iget-object v1, v1, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->mMemInfo:Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;

    if-nez v1, :cond_0

    return-void

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher$GraphView;->this$1:Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;

    iget-object v1, v1, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->mMemInfo:Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;

    iget-object v1, v1, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->pss:[J

    array-length v8, v1

    .line 251
    int-to-float v0, v0

    int-to-float v1, v8

    div-float v9, v0, v1

    .line 252
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v9}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 253
    int-to-float v0, v7

    iget-object v1, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher$GraphView;->this$1:Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;

    iget-object v1, v1, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->mMemInfo:Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;

    iget-wide v2, v1, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->max:J

    long-to-float v1, v2

    div-float v11, v0, v1

    .line 257
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_1

    .line 258
    int-to-float v0, v6

    mul-float v1, v0, v9

    .line 259
    int-to-float v0, v7

    iget-object v2, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher$GraphView;->this$1:Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;

    iget-object v2, v2, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->mMemInfo:Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;

    iget-object v2, v2, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->pss:[J

    aget-wide v2, v2, v6

    long-to-float v2, v2

    mul-float/2addr v2, v11

    sub-float v2, v0, v2

    add-float v3, v1, v10

    int-to-float v4, v7

    iget-object v5, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher$GraphView;->pssPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 260
    int-to-float v0, v7

    iget-object v2, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher$GraphView;->this$1:Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;

    iget-object v2, v2, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->mMemInfo:Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;

    iget-object v2, v2, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->uss:[J

    aget-wide v2, v2, v6

    long-to-float v2, v2

    mul-float/2addr v2, v11

    sub-float v2, v0, v2

    add-float v3, v1, v10

    int-to-float v4, v7

    iget-object v5, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher$GraphView;->ussPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 257
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher$GraphView;->this$1:Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;

    iget-object v0, v0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->mMemInfo:Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;

    iget v0, v0, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->head:I

    int-to-float v0, v0

    mul-float v1, v0, v9

    .line 263
    const/4 v2, 0x0

    add-float v3, v1, v10

    int-to-float v4, v7

    iget-object v5, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher$GraphView;->headPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 264
    return-void
.end method
