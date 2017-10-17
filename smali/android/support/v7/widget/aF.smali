.class Landroid/support/v7/widget/aF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acn(Landroid/support/v7/widget/aE;Landroid/support/v7/widget/aE;)I
    .locals 5

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 191
    iget-object v0, p1, Landroid/support/v7/widget/aE;->SJ:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v4, p2, Landroid/support/v7/widget/aE;->SJ:Landroid/support/v7/widget/RecyclerView;

    if-eqz v4, :cond_1

    move v4, v1

    :goto_1
    if-ne v0, v4, :cond_2

    .line 196
    iget-boolean v0, p1, Landroid/support/v7/widget/aE;->SH:Z

    iget-boolean v4, p2, Landroid/support/v7/widget/aE;->SH:Z

    if-ne v0, v4, :cond_4

    .line 201
    iget v0, p2, Landroid/support/v7/widget/aE;->SI:I

    iget v2, p1, Landroid/support/v7/widget/aE;->SI:I

    sub-int/2addr v0, v2

    .line 202
    if-nez v0, :cond_6

    .line 205
    iget v0, p1, Landroid/support/v7/widget/aE;->SG:I

    iget v2, p2, Landroid/support/v7/widget/aE;->SG:I

    sub-int/2addr v0, v2

    .line 206
    if-nez v0, :cond_7

    .line 208
    return v1

    :cond_0
    move v0, v2

    .line 191
    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_1

    .line 192
    :cond_2
    iget-object v0, p1, Landroid/support/v7/widget/aE;->SJ:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    return v2

    .line 197
    :cond_4
    iget-boolean v0, p1, Landroid/support/v7/widget/aE;->SH:Z

    if-nez v0, :cond_5

    :goto_2
    return v2

    :cond_5
    move v2, v3

    goto :goto_2

    .line 202
    :cond_6
    return v0

    .line 206
    :cond_7
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 187
    check-cast p1, Landroid/support/v7/widget/aE;

    check-cast p2, Landroid/support/v7/widget/aE;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/aF;->acn(Landroid/support/v7/widget/aE;Landroid/support/v7/widget/aE;)I

    move-result v0

    return v0
.end method
