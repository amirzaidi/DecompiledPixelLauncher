.class final Landroid/support/v4/a/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Collection;


# instance fields
.field final synthetic VO:Landroid/support/v4/a/l;


# direct methods
.method constructor <init>(Landroid/support/v4/a/l;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Landroid/support/v4/a/q;->VO:Landroid/support/v4/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 359
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 364
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Landroid/support/v4/a/q;->VO:Landroid/support/v4/a/l;

    invoke-virtual {v0}, Landroid/support/v4/a/l;->ahy()V

    .line 370
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 374
    iget-object v1, p0, Landroid/support/v4/a/q;->VO:Landroid/support/v4/a/l;

    invoke-virtual {v1, p1}, Landroid/support/v4/a/l;->ahs(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 379
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 380
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 385
    const/4 v0, 0x1

    return v0

    .line 381
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v4/a/q;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 382
    return v2
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 390
    iget-object v1, p0, Landroid/support/v4/a/q;->VO:Landroid/support/v4/a/l;

    invoke-virtual {v1}, Landroid/support/v4/a/l;->ahB()I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 395
    new-instance v0, Landroid/support/v4/a/g;

    iget-object v1, p0, Landroid/support/v4/a/q;->VO:Landroid/support/v4/a/l;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v4/a/g;-><init>(Landroid/support/v4/a/l;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 400
    iget-object v0, p0, Landroid/support/v4/a/q;->VO:Landroid/support/v4/a/l;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/l;->ahs(Ljava/lang/Object;)I

    move-result v0

    .line 401
    if-gez v0, :cond_0

    .line 405
    return v1

    .line 402
    :cond_0
    iget-object v1, p0, Landroid/support/v4/a/q;->VO:Landroid/support/v4/a/l;

    invoke-virtual {v1, v0}, Landroid/support/v4/a/l;->ahC(I)V

    .line 403
    const/4 v0, 0x1

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 410
    iget-object v1, p0, Landroid/support/v4/a/q;->VO:Landroid/support/v4/a/l;

    invoke-virtual {v1}, Landroid/support/v4/a/l;->ahB()I

    move-result v3

    move v1, v0

    .line 412
    :goto_0
    if-lt v0, v3, :cond_0

    .line 421
    return v1

    .line 413
    :cond_0
    iget-object v4, p0, Landroid/support/v4/a/q;->VO:Landroid/support/v4/a/l;

    invoke-virtual {v4, v0, v2}, Landroid/support/v4/a/l;->ahq(II)Ljava/lang/Object;

    move-result-object v4

    .line 414
    invoke-interface {p1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 412
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    :cond_1
    iget-object v1, p0, Landroid/support/v4/a/q;->VO:Landroid/support/v4/a/l;

    invoke-virtual {v1, v0}, Landroid/support/v4/a/l;->ahC(I)V

    .line 416
    add-int/lit8 v0, v0, -0x1

    .line 417
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move v1, v2

    .line 418
    goto :goto_1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 426
    iget-object v1, p0, Landroid/support/v4/a/q;->VO:Landroid/support/v4/a/l;

    invoke-virtual {v1}, Landroid/support/v4/a/l;->ahB()I

    move-result v3

    move v1, v0

    .line 428
    :goto_0
    if-lt v0, v3, :cond_0

    .line 437
    return v1

    .line 429
    :cond_0
    iget-object v4, p0, Landroid/support/v4/a/q;->VO:Landroid/support/v4/a/l;

    invoke-virtual {v4, v0, v2}, Landroid/support/v4/a/l;->ahq(II)Ljava/lang/Object;

    move-result-object v4

    .line 430
    invoke-interface {p1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 428
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 431
    :cond_1
    iget-object v1, p0, Landroid/support/v4/a/q;->VO:Landroid/support/v4/a/l;

    invoke-virtual {v1, v0}, Landroid/support/v4/a/l;->ahC(I)V

    .line 432
    add-int/lit8 v0, v0, -0x1

    .line 433
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move v1, v2

    .line 434
    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Landroid/support/v4/a/q;->VO:Landroid/support/v4/a/l;

    invoke-virtual {v0}, Landroid/support/v4/a/l;->ahB()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Landroid/support/v4/a/q;->VO:Landroid/support/v4/a/l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/a/l;->aho(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Landroid/support/v4/a/q;->VO:Landroid/support/v4/a/l;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/a/l;->aht([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
