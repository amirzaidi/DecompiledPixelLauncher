.class public abstract Landroid/support/v7/widget/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private QC:Z

.field private QD:I

.field private QE:Landroid/support/v7/widget/p;

.field private QF:Z

.field private final QG:Landroid/support/v7/widget/H;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11093
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/g;->QD:I

    .line 11108
    new-instance v0, Landroid/support/v7/widget/H;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/H;-><init>(II)V

    iput-object v0, p0, Landroid/support/v7/widget/g;->QG:Landroid/support/v7/widget/H;

    .line 11109
    return-void
.end method

.method private XR(II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 11203
    iget-object v0, p0, Landroid/support/v7/widget/g;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 11204
    iget-boolean v1, p0, Landroid/support/v7/widget/g;->QC:Z

    if-nez v1, :cond_2

    .line 11205
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/g;->stop()V

    .line 11207
    :goto_0
    iput-boolean v3, p0, Landroid/support/v7/widget/g;->QF:Z

    .line 11208
    iget-object v1, p0, Landroid/support/v7/widget/g;->mTargetView:Landroid/view/View;

    if-nez v1, :cond_3

    .line 11219
    :goto_1
    iget-boolean v1, p0, Landroid/support/v7/widget/g;->QC:Z

    if-nez v1, :cond_5

    .line 11233
    :cond_1
    :goto_2
    return-void

    .line 11204
    :cond_2
    iget v1, p0, Landroid/support/v7/widget/g;->QD:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11210
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/g;->mTargetView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/g;->getChildPosition(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/g;->QD:I

    if-eq v1, v2, :cond_4

    .line 11215
    const-string/jumbo v1, "RecyclerView"

    const-string/jumbo v2, "Passed over target position while smooth scrolling."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11216
    iput-object v4, p0, Landroid/support/v7/widget/g;->mTargetView:Landroid/view/View;

    goto :goto_1

    .line 11211
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/g;->mTargetView:Landroid/view/View;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-object v3, p0, Landroid/support/v7/widget/g;->QG:Landroid/support/v7/widget/H;

    invoke-virtual {p0, v1, v2, v3}, Landroid/support/v7/widget/g;->XT(Landroid/view/View;Landroid/support/v7/widget/e;Landroid/support/v7/widget/H;)V

    .line 11212
    iget-object v1, p0, Landroid/support/v7/widget/g;->QG:Landroid/support/v7/widget/H;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/H;->aaH(Landroid/support/v7/widget/RecyclerView;)V

    .line 11213
    invoke-virtual {p0}, Landroid/support/v7/widget/g;->stop()V

    goto :goto_1

    .line 11220
    :cond_5
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-object v2, p0, Landroid/support/v7/widget/g;->QG:Landroid/support/v7/widget/H;

    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/support/v7/widget/g;->XU(IILandroid/support/v7/widget/e;Landroid/support/v7/widget/H;)V

    .line 11221
    iget-object v1, p0, Landroid/support/v7/widget/g;->QG:Landroid/support/v7/widget/H;

    invoke-virtual {v1}, Landroid/support/v7/widget/H;->aaJ()Z

    move-result v1

    .line 11222
    iget-object v2, p0, Landroid/support/v7/widget/g;->QG:Landroid/support/v7/widget/H;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/H;->aaH(Landroid/support/v7/widget/RecyclerView;)V

    .line 11223
    if-eqz v1, :cond_1

    .line 11225
    iget-boolean v1, p0, Landroid/support/v7/widget/g;->QC:Z

    if-nez v1, :cond_6

    .line 11229
    invoke-virtual {p0}, Landroid/support/v7/widget/g;->stop()V

    goto :goto_2

    .line 11226
    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/g;->QF:Z

    .line 11227
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/v;

    invoke-virtual {v0}, Landroid/support/v7/widget/v;->Ze()V

    goto :goto_2
.end method

.method static synthetic Ya(Landroid/support/v7/widget/g;II)V
    .locals 0

    .prologue
    .line 11091
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/g;->XR(II)V

    return-void
.end method


# virtual methods
.method protected XS(Landroid/graphics/PointF;)V
    .locals 3

    .prologue
    .line 11279
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 11281
    iget v1, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 11282
    iget v1, p1, Landroid/graphics/PointF;->y:F

    div-float v0, v1, v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 11283
    return-void
.end method

.method protected abstract XT(Landroid/view/View;Landroid/support/v7/widget/e;Landroid/support/v7/widget/H;)V
.end method

.method protected abstract XU(IILandroid/support/v7/widget/e;Landroid/support/v7/widget/H;)V
.end method

.method public XV(I)V
    .locals 0

    .prologue
    .line 11138
    iput p1, p0, Landroid/support/v7/widget/g;->QD:I

    .line 11139
    return-void
.end method

.method public XW()I
    .locals 1

    .prologue
    .line 11199
    iget v0, p0, Landroid/support/v7/widget/g;->QD:I

    return v0
.end method

.method XX(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/p;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 11124
    iput-object p1, p0, Landroid/support/v7/widget/g;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 11125
    iput-object p2, p0, Landroid/support/v7/widget/g;->QE:Landroid/support/v7/widget/p;

    .line 11126
    iget v0, p0, Landroid/support/v7/widget/g;->QD:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 11129
    iget-object v0, p0, Landroid/support/v7/widget/g;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget v1, p0, Landroid/support/v7/widget/g;->QD:I

    invoke-static {v0, v1}, Landroid/support/v7/widget/e;->XK(Landroid/support/v7/widget/e;I)I

    .line 11130
    iput-boolean v2, p0, Landroid/support/v7/widget/g;->QC:Z

    .line 11131
    iput-boolean v2, p0, Landroid/support/v7/widget/g;->QF:Z

    .line 11132
    invoke-virtual {p0}, Landroid/support/v7/widget/g;->XW()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/g;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/g;->mTargetView:Landroid/view/View;

    .line 11133
    invoke-virtual {p0}, Landroid/support/v7/widget/g;->onStart()V

    .line 11134
    iget-object v0, p0, Landroid/support/v7/widget/g;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/v;

    invoke-virtual {v0}, Landroid/support/v7/widget/v;->Ze()V

    .line 11135
    return-void

    .line 11127
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid target position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public XY()Z
    .locals 1

    .prologue
    .line 11189
    iget-boolean v0, p0, Landroid/support/v7/widget/g;->QC:Z

    return v0
.end method

.method public XZ()Z
    .locals 1

    .prologue
    .line 11181
    iget-boolean v0, p0, Landroid/support/v7/widget/g;->QF:Z

    return v0
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 11253
    iget-object v0, p0, Landroid/support/v7/widget/g;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/p;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 11246
    iget-object v0, p0, Landroid/support/v7/widget/g;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 11239
    iget-object v0, p0, Landroid/support/v7/widget/g;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Landroid/support/v7/widget/p;
    .locals 1

    .prologue
    .line 11147
    iget-object v0, p0, Landroid/support/v7/widget/g;->QE:Landroid/support/v7/widget/p;

    return-object v0
.end method

.method protected onChildAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 11266
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/g;->getChildPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/g;->XW()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 11272
    :goto_0
    return-void

    .line 11267
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/g;->mTargetView:Landroid/view/View;

    goto :goto_0
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method protected final stop()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 11157
    iget-boolean v0, p0, Landroid/support/v7/widget/g;->QC:Z

    if-eqz v0, :cond_0

    .line 11160
    invoke-virtual {p0}, Landroid/support/v7/widget/g;->onStop()V

    .line 11161
    iget-object v0, p0, Landroid/support/v7/widget/g;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-static {v0, v3}, Landroid/support/v7/widget/e;->XK(Landroid/support/v7/widget/e;I)I

    .line 11162
    iput-object v2, p0, Landroid/support/v7/widget/g;->mTargetView:Landroid/view/View;

    .line 11163
    iput v3, p0, Landroid/support/v7/widget/g;->QD:I

    .line 11164
    iput-boolean v1, p0, Landroid/support/v7/widget/g;->QF:Z

    .line 11165
    iput-boolean v1, p0, Landroid/support/v7/widget/g;->QC:Z

    .line 11167
    iget-object v0, p0, Landroid/support/v7/widget/g;->QE:Landroid/support/v7/widget/p;

    invoke-static {v0, p0}, Landroid/support/v7/widget/p;->access$1400(Landroid/support/v7/widget/p;Landroid/support/v7/widget/g;)V

    .line 11169
    iput-object v2, p0, Landroid/support/v7/widget/g;->QE:Landroid/support/v7/widget/p;

    .line 11170
    iput-object v2, p0, Landroid/support/v7/widget/g;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 11171
    return-void

    .line 11158
    :cond_0
    return-void
.end method
