.class Landroid/support/v7/widget/f;
.super Landroid/database/Observable;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11524
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public XO(IILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 11548
    iget-object v0, p0, Landroid/support/v7/widget/f;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 11551
    return-void

    .line 11549
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/f;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/h;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/h;->onItemRangeChanged(IILjava/lang/Object;)V

    .line 11548
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public XP(II)V
    .locals 1

    .prologue
    .line 11540
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/f;->XO(IILjava/lang/Object;)V

    .line 11541
    return-void
.end method

.method public XQ()V
    .locals 2

    .prologue
    .line 11534
    iget-object v0, p0, Landroid/support/v7/widget/f;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 11537
    return-void

    .line 11535
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/f;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->onChanged()V

    .line 11534
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method
