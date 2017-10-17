.class Landroid/support/v7/widget/f;
.super Landroid/database/Observable;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11479
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public WQ()V
    .locals 2

    .prologue
    .line 11489
    iget-object v0, p0, Landroid/support/v7/widget/f;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 11492
    return-void

    .line 11490
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/f;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/h;

    invoke-virtual {v0}, Landroid/support/v7/widget/h;->onChanged()V

    .line 11489
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method
