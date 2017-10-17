.class public abstract Landroid/support/v7/widget/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FULLUPDATE_PAYLOADS:Ljava/util/List;


# instance fields
.field public final itemView:Landroid/view/View;

.field private mFlags:I

.field private mInChangeScrap:Z

.field private mIsRecyclableCount:I

.field mItemId:J

.field mItemViewType:I

.field mNestedRecyclerView:Ljava/lang/ref/WeakReference;

.field mOldPosition:I

.field mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field mPayloads:Ljava/util/List;

.field mPendingAccessibilityState:I

.field mPosition:I

.field mPreLayoutPosition:I

.field private mScrapContainer:Landroid/support/v7/widget/s;

.field mShadowedHolder:Landroid/support/v7/widget/j;

.field mShadowingHolder:Landroid/support/v7/widget/j;

.field mUnmodifiedPayloads:Ljava/util/List;

.field private mWasImportantForAccessibilityBeforeHidden:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10368
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Landroid/support/v7/widget/j;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 10395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10256
    iput v3, p0, Landroid/support/v7/widget/j;->mPosition:I

    .line 10257
    iput v3, p0, Landroid/support/v7/widget/j;->mOldPosition:I

    .line 10258
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/widget/j;->mItemId:J

    .line 10259
    iput v3, p0, Landroid/support/v7/widget/j;->mItemViewType:I

    .line 10260
    iput v3, p0, Landroid/support/v7/widget/j;->mPreLayoutPosition:I

    .line 10263
    iput-object v2, p0, Landroid/support/v7/widget/j;->mShadowedHolder:Landroid/support/v7/widget/j;

    .line 10265
    iput-object v2, p0, Landroid/support/v7/widget/j;->mShadowingHolder:Landroid/support/v7/widget/j;

    .line 10370
    iput-object v2, p0, Landroid/support/v7/widget/j;->mPayloads:Ljava/util/List;

    .line 10371
    iput-object v2, p0, Landroid/support/v7/widget/j;->mUnmodifiedPayloads:Ljava/util/List;

    .line 10373
    iput v4, p0, Landroid/support/v7/widget/j;->mIsRecyclableCount:I

    .line 10377
    iput-object v2, p0, Landroid/support/v7/widget/j;->mScrapContainer:Landroid/support/v7/widget/s;

    .line 10379
    iput-boolean v4, p0, Landroid/support/v7/widget/j;->mInChangeScrap:Z

    .line 10383
    iput v4, p0, Landroid/support/v7/widget/j;->mWasImportantForAccessibilityBeforeHidden:I

    .line 10386
    iput v3, p0, Landroid/support/v7/widget/j;->mPendingAccessibilityState:I

    .line 10396
    if-eqz p1, :cond_0

    .line 10399
    iput-object p1, p0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    .line 10400
    return-void

    .line 10397
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "itemView may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$1000(Landroid/support/v7/widget/j;)Z
    .locals 1

    .prologue
    .line 10253
    iget-boolean v0, p0, Landroid/support/v7/widget/j;->mInChangeScrap:Z

    return v0
.end method

.method static synthetic access$1002(Landroid/support/v7/widget/j;Z)Z
    .locals 0

    .prologue
    .line 10253
    iput-boolean p1, p0, Landroid/support/v7/widget/j;->mInChangeScrap:Z

    return p1
.end method

.method static synthetic access$1400(Landroid/support/v7/widget/j;)Z
    .locals 1

    .prologue
    .line 10253
    invoke-direct {p0}, Landroid/support/v7/widget/j;->shouldBeKeptAsChild()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/support/v7/widget/j;)I
    .locals 1

    .prologue
    .line 10253
    iget v0, p0, Landroid/support/v7/widget/j;->mFlags:I

    return v0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/j;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 10253
    invoke-direct {p0, p1}, Landroid/support/v7/widget/j;->onEnteredHiddenState(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/v7/widget/j;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 10253
    invoke-direct {p0, p1}, Landroid/support/v7/widget/j;->onLeftHiddenState(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method static synthetic access$800(Landroid/support/v7/widget/j;)Z
    .locals 1

    .prologue
    .line 10253
    invoke-direct {p0}, Landroid/support/v7/widget/j;->doesTransientStatePreventRecycling()Z

    move-result v0

    return v0
.end method

.method static synthetic access$902(Landroid/support/v7/widget/j;Landroid/support/v7/widget/s;)Landroid/support/v7/widget/s;
    .locals 0

    .prologue
    .line 10253
    iput-object p1, p0, Landroid/support/v7/widget/j;->mScrapContainer:Landroid/support/v7/widget/s;

    return-object p1
.end method

.method private createPayloadsIfNeeded()V
    .locals 1

    .prologue
    .line 10614
    iget-object v0, p0, Landroid/support/v7/widget/j;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 10618
    :goto_0
    return-void

    .line 10615
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/j;->mPayloads:Ljava/util/List;

    .line 10616
    iget-object v0, p0, Landroid/support/v7/widget/j;->mPayloads:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/j;->mUnmodifiedPayloads:Ljava/util/List;

    goto :goto_0
.end method

.method private doesTransientStatePreventRecycling()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10755
    iget v1, p0, Landroid/support/v7/widget/j;->mFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/f;->afF(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onEnteredHiddenState(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 10661
    iget-object v0, p0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    .line 10662
    invoke-static {v0}, Landroid/support/v4/view/f;->afy(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/j;->mWasImportantForAccessibilityBeforeHidden:I

    .line 10663
    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/widget/RecyclerView;->setChildImportantForAccessibilityInternal(Landroid/support/v7/widget/j;I)Z

    .line 10665
    return-void
.end method

.method private onLeftHiddenState(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 10671
    iget v0, p0, Landroid/support/v7/widget/j;->mWasImportantForAccessibilityBeforeHidden:I

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/widget/RecyclerView;->setChildImportantForAccessibilityInternal(Landroid/support/v7/widget/j;I)Z

    .line 10673
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/j;->mWasImportantForAccessibilityBeforeHidden:I

    .line 10674
    return-void
.end method

.method private shouldBeKeptAsChild()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10747
    iget v1, p0, Landroid/support/v7/widget/j;->mFlags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method addChangePayload(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 10605
    if-eqz p1, :cond_0

    .line 10607
    iget v0, p0, Landroid/support/v7/widget/j;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    .line 10611
    :goto_0
    return-void

    .line 10606
    :cond_0
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/j;->addFlags(I)V

    goto :goto_0

    .line 10608
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/j;->createPayloadsIfNeeded()V

    .line 10609
    iget-object v0, p0, Landroid/support/v7/widget/j;->mPayloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method addFlags(I)V
    .locals 1

    .prologue
    .line 10601
    iget v0, p0, Landroid/support/v7/widget/j;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/j;->mFlags:I

    .line 10602
    return-void
.end method

.method clearOldPosition()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 10425
    iput v0, p0, Landroid/support/v7/widget/j;->mOldPosition:I

    .line 10426
    iput v0, p0, Landroid/support/v7/widget/j;->mPreLayoutPosition:I

    .line 10427
    return-void
.end method

.method clearPayload()V
    .locals 1

    .prologue
    .line 10621
    iget-object v0, p0, Landroid/support/v7/widget/j;->mPayloads:Ljava/util/List;

    if-nez v0, :cond_0

    .line 10624
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/j;->mFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/support/v7/widget/j;->mFlags:I

    .line 10625
    return-void

    .line 10622
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/j;->mPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method clearReturnedFromScrapFlag()V
    .locals 1

    .prologue
    .line 10552
    iget v0, p0, Landroid/support/v7/widget/j;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v7/widget/j;->mFlags:I

    .line 10553
    return-void
.end method

.method clearTmpDetachFlag()V
    .locals 1

    .prologue
    .line 10556
    iget v0, p0, Landroid/support/v7/widget/j;->mFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/support/v7/widget/j;->mFlags:I

    .line 10557
    return-void
.end method

.method flagRemovedAndOffsetPosition(IIZ)V
    .locals 1

    .prologue
    .line 10403
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/j;->addFlags(I)V

    .line 10404
    invoke-virtual {p0, p2, p3}, Landroid/support/v7/widget/j;->offsetPosition(IZ)V

    .line 10405
    iput p1, p0, Landroid/support/v7/widget/j;->mPosition:I

    .line 10406
    return-void
.end method

.method public final getAdapterPosition()I
    .locals 1

    .prologue
    .line 10501
    iget-object v0, p0, Landroid/support/v7/widget/j;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 10504
    iget-object v0, p0, Landroid/support/v7/widget/j;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->getAdapterPositionFor(Landroid/support/v7/widget/j;)I

    move-result v0

    return v0

    .line 10502
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final getItemId()J
    .locals 2

    .prologue
    .line 10529
    iget-wide v0, p0, Landroid/support/v7/widget/j;->mItemId:J

    return-wide v0
.end method

.method public final getItemViewType()I
    .locals 1

    .prologue
    .line 10536
    iget v0, p0, Landroid/support/v7/widget/j;->mItemViewType:I

    return v0
.end method

.method public final getLayoutPosition()I
    .locals 2

    .prologue
    .line 10475
    iget v0, p0, Landroid/support/v7/widget/j;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/j;->mPreLayoutPosition:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/j;->mPosition:I

    goto :goto_0
.end method

.method public final getOldPosition()I
    .locals 1

    .prologue
    .line 10519
    iget v0, p0, Landroid/support/v7/widget/j;->mOldPosition:I

    return v0
.end method

.method getUnmodifiedPayloads()Ljava/util/List;
    .locals 1

    .prologue
    .line 10628
    iget v0, p0, Landroid/support/v7/widget/j;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    .line 10637
    sget-object v0, Landroid/support/v7/widget/j;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object v0

    .line 10629
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/j;->mPayloads:Ljava/util/List;

    if-nez v0, :cond_2

    .line 10631
    :cond_1
    sget-object v0, Landroid/support/v7/widget/j;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object v0

    .line 10629
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/j;->mPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 10634
    iget-object v0, p0, Landroid/support/v7/widget/j;->mUnmodifiedPayloads:Ljava/util/List;

    return-object v0
.end method

.method hasAnyOfTheFlags(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10585
    iget v1, p0, Landroid/support/v7/widget/j;->mFlags:I

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isAdapterPositionUnknown()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10593
    iget v1, p0, Landroid/support/v7/widget/j;->mFlags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/j;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method isBound()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10577
    iget v1, p0, Landroid/support/v7/widget/j;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isInvalid()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10569
    iget v1, p0, Landroid/support/v7/widget/j;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isRecyclable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10738
    iget v1, p0, Landroid/support/v7/widget/j;->mFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    .line 10739
    :cond_0
    :goto_0
    return v0

    .line 10738
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    .line 10739
    invoke-static {v1}, Landroid/support/v4/view/f;->afF(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method isRemoved()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10581
    iget v1, p0, Landroid/support/v7/widget/j;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isScrap()Z
    .locals 1

    .prologue
    .line 10540
    iget-object v0, p0, Landroid/support/v7/widget/j;->mScrapContainer:Landroid/support/v7/widget/s;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isTmpDetached()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10589
    iget v1, p0, Landroid/support/v7/widget/j;->mFlags:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isUpdated()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10759
    iget v1, p0, Landroid/support/v7/widget/j;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method needsUpdate()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10573
    iget v1, p0, Landroid/support/v7/widget/j;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method offsetPosition(IZ)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 10409
    iget v0, p0, Landroid/support/v7/widget/j;->mOldPosition:I

    if-eq v0, v1, :cond_0

    .line 10412
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/j;->mPreLayoutPosition:I

    if-eq v0, v1, :cond_1

    .line 10415
    :goto_1
    if-nez p2, :cond_2

    .line 10418
    :goto_2
    iget v0, p0, Landroid/support/v7/widget/j;->mPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/j;->mPosition:I

    .line 10419
    iget-object v0, p0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_3

    .line 10422
    :goto_3
    return-void

    .line 10410
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/j;->mPosition:I

    iput v0, p0, Landroid/support/v7/widget/j;->mOldPosition:I

    goto :goto_0

    .line 10413
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/j;->mPosition:I

    iput v0, p0, Landroid/support/v7/widget/j;->mPreLayoutPosition:I

    goto :goto_1

    .line 10416
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/j;->mPreLayoutPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/j;->mPreLayoutPosition:I

    goto :goto_2

    .line 10420
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/i;->Pb:Z

    goto :goto_3
.end method

.method resetInternal()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 10642
    iput v3, p0, Landroid/support/v7/widget/j;->mFlags:I

    .line 10643
    iput v2, p0, Landroid/support/v7/widget/j;->mPosition:I

    .line 10644
    iput v2, p0, Landroid/support/v7/widget/j;->mOldPosition:I

    .line 10645
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/widget/j;->mItemId:J

    .line 10646
    iput v2, p0, Landroid/support/v7/widget/j;->mPreLayoutPosition:I

    .line 10647
    iput v3, p0, Landroid/support/v7/widget/j;->mIsRecyclableCount:I

    .line 10648
    iput-object v4, p0, Landroid/support/v7/widget/j;->mShadowedHolder:Landroid/support/v7/widget/j;

    .line 10649
    iput-object v4, p0, Landroid/support/v7/widget/j;->mShadowingHolder:Landroid/support/v7/widget/j;

    .line 10650
    invoke-virtual {p0}, Landroid/support/v7/widget/j;->clearPayload()V

    .line 10651
    iput v3, p0, Landroid/support/v7/widget/j;->mWasImportantForAccessibilityBeforeHidden:I

    .line 10652
    iput v2, p0, Landroid/support/v7/widget/j;->mPendingAccessibilityState:I

    .line 10653
    invoke-static {p0}, Landroid/support/v7/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Landroid/support/v7/widget/j;)V

    .line 10654
    return-void
.end method

.method saveOldPosition()V
    .locals 2

    .prologue
    .line 10430
    iget v0, p0, Landroid/support/v7/widget/j;->mOldPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 10433
    :goto_0
    return-void

    .line 10431
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/j;->mPosition:I

    iput v0, p0, Landroid/support/v7/widget/j;->mOldPosition:I

    goto :goto_0
.end method

.method setFlags(II)V
    .locals 2

    .prologue
    .line 10597
    iget v0, p0, Landroid/support/v7/widget/j;->mFlags:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/j;->mFlags:I

    .line 10598
    return-void
.end method

.method public final setIsRecyclable(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10713
    if-nez p1, :cond_2

    iget v0, p0, Landroid/support/v7/widget/j;->mIsRecyclableCount:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/j;->mIsRecyclableCount:I

    .line 10714
    iget v0, p0, Landroid/support/v7/widget/j;->mIsRecyclableCount:I

    if-ltz v0, :cond_3

    .line 10722
    if-eqz p1, :cond_4

    .line 10724
    :cond_0
    if-nez p1, :cond_5

    .line 10730
    :cond_1
    :goto_1
    return-void

    .line 10713
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/j;->mIsRecyclableCount:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 10715
    :cond_3
    iput v1, p0, Landroid/support/v7/widget/j;->mIsRecyclableCount:I

    .line 10720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 10722
    :cond_4
    iget v0, p0, Landroid/support/v7/widget/j;->mIsRecyclableCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 10723
    iget v0, p0, Landroid/support/v7/widget/j;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v7/widget/j;->mFlags:I

    goto :goto_1

    .line 10724
    :cond_5
    iget v0, p0, Landroid/support/v7/widget/j;->mIsRecyclableCount:I

    if-nez v0, :cond_1

    .line 10725
    iget v0, p0, Landroid/support/v7/widget/j;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/support/v7/widget/j;->mFlags:I

    goto :goto_1
.end method

.method setScrapContainer(Landroid/support/v7/widget/s;Z)V
    .locals 0

    .prologue
    .line 10564
    iput-object p1, p0, Landroid/support/v7/widget/j;->mScrapContainer:Landroid/support/v7/widget/s;

    .line 10565
    iput-boolean p2, p0, Landroid/support/v7/widget/j;->mInChangeScrap:Z

    .line 10566
    return-void
.end method

.method shouldIgnore()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10436
    iget v1, p0, Landroid/support/v7/widget/j;->mFlags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 10678
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ViewHolder{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 10679
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " position="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/support/v7/widget/j;->mPosition:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/v7/widget/j;->mItemId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", oldPos="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/support/v7/widget/j;->mOldPosition:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", pLpos:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/support/v7/widget/j;->mPreLayoutPosition:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10681
    invoke-virtual {p0}, Landroid/support/v7/widget/j;->isScrap()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10685
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/j;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10686
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/j;->isBound()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10687
    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/j;->needsUpdate()Z

    move-result v0

    if-nez v0, :cond_4

    .line 10688
    :goto_3
    invoke-virtual {p0}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_5

    .line 10689
    :goto_4
    invoke-virtual {p0}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_6

    .line 10690
    :goto_5
    invoke-virtual {p0}, Landroid/support/v7/widget/j;->isTmpDetached()Z

    move-result v0

    if-nez v0, :cond_7

    .line 10691
    :goto_6
    invoke-virtual {p0}, Landroid/support/v7/widget/j;->isRecyclable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 10692
    :goto_7
    invoke-virtual {p0}, Landroid/support/v7/widget/j;->isAdapterPositionUnknown()Z

    move-result v0

    if-nez v0, :cond_9

    .line 10694
    :goto_8
    iget-object v0, p0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 10695
    :goto_9
    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10696
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10682
    :cond_0
    const-string/jumbo v0, " scrap "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/j;->mInChangeScrap:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "[attachedScrap]"

    .line 10683
    :goto_a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 10682
    :cond_1
    const-string/jumbo v0, "[changeScrap]"

    goto :goto_a

    .line 10685
    :cond_2
    const-string/jumbo v0, " invalid"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 10686
    :cond_3
    const-string/jumbo v0, " unbound"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 10687
    :cond_4
    const-string/jumbo v0, " update"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 10688
    :cond_5
    const-string/jumbo v0, " removed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 10689
    :cond_6
    const-string/jumbo v0, " ignored"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 10690
    :cond_7
    const-string/jumbo v0, " tmpDetached"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 10691
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " not recyclable("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/support/v7/widget/j;->mIsRecyclableCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 10692
    :cond_9
    const-string/jumbo v0, " undefined adapter position"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 10694
    :cond_a
    const-string/jumbo v0, " no parent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9
.end method

.method unScrap()V
    .locals 1

    .prologue
    .line 10544
    iget-object v0, p0, Landroid/support/v7/widget/j;->mScrapContainer:Landroid/support/v7/widget/s;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/s;->Xy(Landroid/support/v7/widget/j;)V

    .line 10545
    return-void
.end method

.method wasReturnedFromScrap()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10548
    iget v1, p0, Landroid/support/v7/widget/j;->mFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
