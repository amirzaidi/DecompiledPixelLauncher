.class public Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/allapps/AllAppsGridAdapter$BindViewCallback;


# instance fields
.field private mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

.field mCurrentFastScrollSection:Ljava/lang/String;

.field mFastScrollFrameIndex:I

.field final mFastScrollFrames:[I

.field mFastScrollToTargetSectionRunnable:Ljava/lang/Runnable;

.field private mHasFastScrollTouchSettled:Z

.field private mHasFastScrollTouchSettledAtLeastOnce:Z

.field private mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

.field mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

.field mTargetFastScrollPosition:I

.field mTargetFastScrollSection:Ljava/lang/String;

.field private mTrackedFastScrollViews:Ljava/util/HashSet;


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mHasFastScrollTouchSettled:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mHasFastScrollTouchSettledAtLeastOnce:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->updateTrackedViewsFastScrollFocusState()V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTrackedFastScrollViews:Ljava/util/HashSet;

    .line 53
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mFastScrollFrames:[I

    .line 59
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$1;-><init>(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    .line 73
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$2;-><init>(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mFastScrollToTargetSectionRunnable:Ljava/lang/Runnable;

    .line 85
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 86
    iput-object p2, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .line 87
    return-void
.end method

.method private smoothSnapToPosition(IILcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mFastScrollToTargetSectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 117
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->trackAllChildViews()V

    .line 118
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mHasFastScrollTouchSettled:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    .line 123
    iput-object v3, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollSection:Ljava/lang/String;

    .line 124
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->updateTrackedViewsFastScrollFocusState()V

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object v0

    .line 149
    iget-object v2, p3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget v2, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 150
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p3, :cond_2

    move v0, v1

    .line 153
    :goto_1
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mFastScrollFrames:[I

    array-length v3, v2

    .line 154
    sub-int/2addr v0, p1

    .line 155
    int-to-float v2, v0

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v4

    .line 156
    float-to-double v6, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v5, v3

    div-float/2addr v2, v5

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-int v5, v6

    move v2, v0

    move v0, v1

    .line 157
    :goto_2
    if-ge v0, v3, :cond_3

    .line 159
    iget-object v6, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mFastScrollFrames:[I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v7, v7

    aput v7, v6, v0

    .line 160
    sub-int/2addr v2, v5

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 130
    :cond_0
    iput-object v3, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    .line 131
    iget-object v0, p3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollSection:Ljava/lang/String;

    .line 132
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mHasFastScrollTouchSettled:Z

    .line 133
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->updateTrackedViewsFastScrollFocusState()V

    .line 138
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mFastScrollToTargetSectionRunnable:Ljava/lang/Runnable;

    .line 139
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mHasFastScrollTouchSettledAtLeastOnce:Z

    if-eqz v0, :cond_1

    .line 140
    const/16 v0, 0xc8

    .line 139
    :goto_3
    int-to-long v4, v0

    .line 138
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 141
    :cond_1
    const/16 v0, 0x64

    goto :goto_3

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getCurrentScrollY(II)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 162
    :cond_3
    iput v1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mFastScrollFrameIndex:I

    .line 163
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method

.method private trackAllChildViews()V
    .locals 4

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildCount()I

    move-result v1

    .line 198
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 199
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v2

    .line 200
    if-eqz v2, :cond_0

    .line 201
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTrackedFastScrollViews:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_1
    return-void
.end method

.method private updateTrackedViewsFastScrollFocusState()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 210
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTrackedFastScrollViews:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 211
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->getAdapterPosition()I

    move-result v1

    .line 213
    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    if-eqz v4, :cond_0

    const/4 v4, -0x1

    if-le v1, v4, :cond_0

    .line 214
    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 215
    if-eqz v1, :cond_2

    .line 216
    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 215
    if-eqz v4, :cond_2

    .line 217
    iget v1, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    iget v4, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    if-ne v1, v4, :cond_1

    const/4 v1, 0x1

    .line 219
    :goto_1
    iget-object v0, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    :cond_0
    move v1, v2

    .line 213
    goto :goto_1

    :cond_1
    move v1, v2

    .line 217
    goto :goto_1

    :cond_2
    move v1, v2

    .line 215
    goto :goto_1

    .line 221
    :cond_3
    return-void
.end method


# virtual methods
.method public onBindView(Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;)V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollSection:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTrackedFastScrollViews:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_1
    return-void
.end method

.method public onFastScrollCompleted()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 172
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mFastScrollToTargetSectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 175
    iput-boolean v2, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mHasFastScrollTouchSettled:Z

    .line 176
    iput-boolean v2, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mHasFastScrollTouchSettledAtLeastOnce:Z

    .line 177
    iput-object v3, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    .line 178
    iput-object v3, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollSection:Ljava/lang/String;

    .line 179
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    .line 181
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->updateTrackedViewsFastScrollFocusState()V

    .line 182
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTrackedFastScrollViews:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 183
    return-void
.end method

.method public onSetAdapter(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V
    .locals 0

    .prologue
    .line 90
    invoke-virtual {p1, p0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->setBindViewCallback(Lcom/android/launcher3/allapps/AllAppsGridAdapter$BindViewCallback;)V

    .line 91
    return-void
.end method

.method public smoothScrollToSection(IILcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;)Z
    .locals 2

    .prologue
    .line 100
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    iget-object v1, p3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget v1, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    if-eq v0, v1, :cond_0

    .line 101
    iget-object v0, p3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->smoothSnapToPosition(IILcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;)V

    .line 103
    const/4 v0, 0x1

    return v0

    .line 105
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
