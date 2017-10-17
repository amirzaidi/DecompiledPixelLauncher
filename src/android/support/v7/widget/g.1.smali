.class public abstract Landroid/support/v7/widget/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private OW:Z

.field private OX:I

.field private OY:Z

.field private final OZ:Landroid/support/v7/widget/H;

.field private mLayoutManager:Landroid/support/v7/widget/p;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11048
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/g;->OX:I

    .line 11063
    new-instance v0, Landroid/support/v7/widget/H;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/H;-><init>(II)V

    iput-object v0, p0, Landroid/support/v7/widget/g;->OZ:Landroid/support/v7/widget/H;

    .line 11064
    return-void
.end method

.method private WR(II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 11158
    iget-object v0, p0, Landroid/support/v7/widget/g;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 11159
    iget-boolean v1, p0, Landroid/support/v7/widget/g;->OW:Z

    if-nez v1, :cond_2

    .line 11160
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/g;->stop()V

    .line 11162
    :goto_0
    iput-boolean v3, p0, Landroid/support/v7/widget/g;->OY:Z

    .line 11163
    iget-object v1, p0, Landroid/support/v7/widget/g;->mTargetView:Landroid/view/View;

    if-nez v1, :cond_3

    .line 11174
    :goto_1
    iget-boolean v1, p0, Landroid/support/v7/widget/g;->OW:Z

    if-nez v1, :cond_5

    .line 11188
    :cond_1
    :goto_2
    return-void

    .line 11159
    :cond_2
    iget v1, p0, Landroid/support/v7/widget/g;->OX:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11165
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/g;->mTargetView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/g;->getChildPosition(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/g;->OX:I

    if-eq v1, v2, :cond_4

    .line 11170
    const-string/jumbo v1, "RecyclerView"

    const-string/jumbo v2, "Passed over target position while smooth scrolling."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11171
    iput-object v4, p0, Landroid/support/v7/widget/g;->mTargetView:Landroid/view/View;

    goto :goto_1

    .line 11166
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/g;->mTargetView:Landroid/view/View;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-object v3, p0, Landroid/support/v7/widget/g;->OZ:Landroid/support/v7/widget/H;

    invoke-virtual {p0, v1, v2, v3}, Landroid/support/v7/widget/g;->WT(Landroid/view/View;Landroid/support/v7/widget/e;Landroid/support/v7/widget/H;)V

    .line 11167
    iget-object v1, p0, Landroid/support/v7/widget/g;->OZ:Landroid/support/v7/widget/H;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/H;->ZF(Landroid/support/v7/widget/RecyclerView;)V

    .line 11168
    invoke-virtual {p0}, Landroid/support/v7/widget/g;->stop()V

    goto :goto_1

    .line 11175
    :cond_5
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-object v2, p0, Landroid/support/v7/widget/g;->OZ:Landroid/support/v7/widget/H;

    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/support/v7/widget/g;->WV(IILandroid/support/v7/widget/e;Landroid/support/v7/widget/H;)V

    .line 11176
    iget-object v1, p0, Landroid/support/v7/widget/g;->OZ:Landroid/support/v7/widget/H;

    invoke-virtual {v1}, Landroid/support/v7/widget/H;->ZH()Z

    move-result v1

    .line 11177
    iget-object v2, p0, Landroid/support/v7/widget/g;->OZ:Landroid/support/v7/widget/H;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/H;->ZF(Landroid/support/v7/widget/RecyclerView;)V

    .line 11178
    if-eqz v1, :cond_1

    .line 11180
    iget-boolean v1, p0, Landroid/support/v7/widget/g;->OW:Z

    if-nez v1, :cond_6

    .line 11184
    invoke-virtual {p0}, Landroid/support/v7/widget/g;->stop()V

    goto :goto_2

    .line 11181
    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/g;->OY:Z

    .line 11182
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/v;

    invoke-virtual {v0}, Landroid/support/v7/widget/v;->Yc()V

    goto :goto_2
.end method

.method static synthetic WU(Landroid/support/v7/widget/g;II)V
    .locals 0

    .prologue
    .line 11046
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/g;->WR(II)V

    return-void
.end method


# virtual methods
.method protected WS(Landroid/graphics/PointF;)V
    .locals 3

    .prologue
    .line 11234
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

    .line 11236
    iget v1, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 11237
    iget v1, p1, Landroid/graphics/PointF;->y:F

    div-float v0, v1, v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 11238
    return-void
.end method

.method protected abstract WT(Landroid/view/View;Landroid/support/v7/widget/e;Landroid/support/v7/widget/H;)V
.end method

.method protected abstract WV(IILandroid/support/v7/widget/e;Landroid/support/v7/widget/H;)V
.end method

.method public WW(I)V
    .locals 0

    .prologue
    .line 11093
    iput p1, p0, Landroid/support/v7/widget/g;->OX:I

    .line 11094
    return-void
.end method

.method public WX()I
    .locals 1

    .prologue
    .line 11154
    iget v0, p0, Landroid/support/v7/widget/g;->OX:I

    return v0
.end method

.method WY(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/p;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 11079
    iput-object p1, p0, Landroid/support/v7/widget/g;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 11080
    iput-object p2, p0, Landroid/support/v7/widget/g;->mLayoutManager:Landroid/support/v7/widget/p;

    .line 11081
    iget v0, p0, Landroid/support/v7/widget/g;->OX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 11084
    iget-object v0, p0, Landroid/support/v7/widget/g;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget v1, p0, Landroid/support/v7/widget/g;->OX:I

    invoke-static {v0, v1}, Landroid/support/v7/widget/e;->WO(Landroid/support/v7/widget/e;I)I

    .line 11085
    iput-boolean v2, p0, Landroid/support/v7/widget/g;->OW:Z

    .line 11086
    iput-boolean v2, p0, Landroid/support/v7/widget/g;->OY:Z

    .line 11087
    invoke-virtual {p0}, Landroid/support/v7/widget/g;->WX()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/g;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/g;->mTargetView:Landroid/view/View;

    .line 11088
    invoke-virtual {p0}, Landroid/support/v7/widget/g;->onStart()V

    .line 11089
    iget-object v0, p0, Landroid/support/v7/widget/g;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/v;

    invoke-virtual {v0}, Landroid/support/v7/widget/v;->Yc()V

    .line 11090
    return-void

    .line 11082
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid target position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public WZ()Z
    .locals 1

    .prologue
    .line 11144
    iget-boolean v0, p0, Landroid/support/v7/widget/g;->OW:Z

    return v0
.end method

.method public Xa()Z
    .locals 1

    .prologue
    .line 11136
    iget-boolean v0, p0, Landroid/support/v7/widget/g;->OY:Z

    return v0
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 11208
    iget-object v0, p0, Landroid/support/v7/widget/g;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/p;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 11201
    iget-object v0, p0, Landroid/support/v7/widget/g;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 11194
    iget-object v0, p0, Landroid/support/v7/widget/g;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Landroid/support/v7/widget/p;
    .locals 1

    .prologue
    .line 11102
    iget-object v0, p0, Landroid/support/v7/widget/g;->mLayoutManager:Landroid/support/v7/widget/p;

    return-object v0
.end method

.method protected onChildAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 11221
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/g;->getChildPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/g;->WX()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 11227
    :goto_0
    return-void

    .line 11222
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

    .line 11112
    iget-boolean v0, p0, Landroid/support/v7/widget/g;->OW:Z

    if-eqz v0, :cond_0

    .line 11115
    invoke-virtual {p0}, Landroid/support/v7/widget/g;->onStop()V

    .line 11116
    iget-object v0, p0, Landroid/support/v7/widget/g;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-static {v0, v3}, Landroid/support/v7/widget/e;->WO(Landroid/support/v7/widget/e;I)I

    .line 11117
    iput-object v2, p0, Landroid/support/v7/widget/g;->mTargetView:Landroid/view/View;

    .line 11118
    iput v3, p0, Landroid/support/v7/widget/g;->OX:I

    .line 11119
    iput-boolean v1, p0, Landroid/support/v7/widget/g;->OY:Z

    .line 11120
    iput-boolean v1, p0, Landroid/support/v7/widget/g;->OW:Z

    .line 11122
    iget-object v0, p0, Landroid/support/v7/widget/g;->mLayoutManager:Landroid/support/v7/widget/p;

    invoke-static {v0, p0}, Landroid/support/v7/widget/p;->access$1300(Landroid/support/v7/widget/p;Landroid/support/v7/widget/g;)V

    .line 11124
    iput-object v2, p0, Landroid/support/v7/widget/g;->mLayoutManager:Landroid/support/v7/widget/p;

    .line 11125
    iput-object v2, p0, Landroid/support/v7/widget/g;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 11126
    return-void

    .line 11113
    :cond_0
    return-void
.end method
