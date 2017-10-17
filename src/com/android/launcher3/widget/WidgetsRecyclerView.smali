.class public Lcom/android/launcher3/widget/WidgetsRecyclerView;
.super Lcom/android/launcher3/BaseRecyclerView;
.source "SourceFile"


# instance fields
.field private mAdapter:Lcom/android/launcher3/widget/WidgetsListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/WidgetsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method private isModelNotReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 145
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mAdapter:Lcom/android/launcher3/widget/WidgetsListAdapter;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/WidgetsListAdapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method protected getAvailableScrollHeight()I
    .locals 2

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mAdapter:Lcom/android/launcher3/widget/WidgetsListAdapter;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/WidgetsListAdapter;->getItemCount()I

    move-result v1

    mul-int/2addr v0, v1

    .line 139
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 140
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getScrollbarTrackHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 141
    return v0
.end method

.method public getCurrentScrollY()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->isModelNotReady()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 120
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 123
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v1

    .line 125
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    mul-int/2addr v1, v2

    .line 126
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getLayoutManager()Landroid/support/v7/widget/p;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/p;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    .line 128
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    sub-int v0, v1, v0

    return v0
.end method

.method public getFastScrollerTrackColor(I)I
    .locals 1

    .prologue
    .line 64
    const/4 v0, -0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Lcom/android/launcher3/BaseRecyclerView;->onFinishInflate()V

    .line 57
    invoke-virtual {p0, p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/n;)V

    .line 60
    new-instance v0, Landroid/support/v7/widget/N;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/N;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->setLayoutManager(Landroid/support/v7/widget/p;)V

    .line 61
    return-void
.end method

.method public onUpdateScrollbar(I)V
    .locals 2

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->isModelNotReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getCurrentScrollY()I

    move-result v0

    .line 108
    if-gez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->setThumbOffsetY(I)V

    .line 110
    return-void

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getAvailableScrollHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->synchronizeScrollBarThumbOffsetToViewScroll(II)V

    .line 114
    return-void
.end method

.method public scrollToPositionAtProgress(F)Ljava/lang/String;
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 79
    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->isModelNotReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const-string/jumbo v0, ""

    return-object v0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->stopScroll()V

    .line 86
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mAdapter:Lcom/android/launcher3/widget/WidgetsListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetsListAdapter;->getItemCount()I

    move-result v0

    .line 87
    int-to-float v0, v0

    mul-float v1, v0, p1

    .line 88
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getAvailableScrollHeight()I

    move-result v2

    .line 89
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getLayoutManager()Landroid/support/v7/widget/p;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/N;

    .line 90
    int-to-float v2, v2

    mul-float/2addr v2, p1

    neg-float v2, v2

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/support/v7/widget/N;->scrollToPositionWithOffset(II)V

    .line 92
    cmpl-float v0, p1, v4

    if-nez v0, :cond_1

    sub-float v0, v1, v4

    :goto_0
    float-to-int v0, v0

    .line 93
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mAdapter:Lcom/android/launcher3/widget/WidgetsListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/widget/WidgetsListAdapter;->getSectionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v1

    .line 92
    goto :goto_0
.end method

.method public setAdapter(Landroid/support/v7/widget/q;)V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseRecyclerView;->setAdapter(Landroid/support/v7/widget/q;)V

    .line 70
    check-cast p1, Lcom/android/launcher3/widget/WidgetsListAdapter;

    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mAdapter:Lcom/android/launcher3/widget/WidgetsListAdapter;

    .line 71
    return-void
.end method
