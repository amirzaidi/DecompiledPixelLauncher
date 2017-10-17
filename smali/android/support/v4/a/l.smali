.class abstract Landroid/support/v4/a/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field VD:Landroid/support/v4/a/o;

.field VE:Landroid/support/v4/a/q;

.field VF:Landroid/support/v4/a/f;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    return-void
.end method

.method public static ahA(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 476
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    .line 477
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 478
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 483
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    :goto_1
    return v0

    .line 479
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 480
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 483
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static ahE(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 467
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    .line 468
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 469
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 472
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    :goto_1
    return v0

    .line 470
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 472
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static ahF(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 513
    if-eq p0, p1, :cond_0

    .line 516
    instance-of v2, p1, Ljava/util/Set;

    if-nez v2, :cond_1

    .line 527
    return v1

    .line 514
    :cond_0
    return v0

    .line 517
    :cond_1
    check-cast p1, Ljava/util/Set;

    .line 520
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    :goto_0
    move v0, v1

    :cond_2
    return v0

    :cond_3
    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    return v1

    .line 523
    :catch_1
    move-exception v0

    .line 524
    return v1
.end method

.method public static ahz(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 457
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 458
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 463
    const/4 v0, 0x1

    return v0

    .line 459
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 460
    return v2
.end method


# virtual methods
.method protected abstract ahB()I
.end method

.method protected abstract ahC(I)V
.end method

.method protected abstract ahD(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public aho(I)[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 488
    invoke-virtual {p0}, Landroid/support/v4/a/l;->ahB()I

    move-result v1

    .line 489
    new-array v2, v1, [Ljava/lang/Object;

    .line 490
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 493
    return-object v2

    .line 491
    :cond_0
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/a/l;->ahq(II)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public ahp()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Landroid/support/v4/a/l;->VE:Landroid/support/v4/a/q;

    if-eqz v0, :cond_0

    .line 548
    :goto_0
    iget-object v0, p0, Landroid/support/v4/a/l;->VE:Landroid/support/v4/a/q;

    return-object v0

    .line 546
    :cond_0
    new-instance v0, Landroid/support/v4/a/q;

    invoke-direct {v0, p0}, Landroid/support/v4/a/q;-><init>(Landroid/support/v4/a/l;)V

    iput-object v0, p0, Landroid/support/v4/a/l;->VE:Landroid/support/v4/a/q;

    goto :goto_0
.end method

.method protected abstract ahq(II)Ljava/lang/Object;
.end method

.method protected abstract ahr(Ljava/lang/Object;)I
.end method

.method protected abstract ahs(Ljava/lang/Object;)I
.end method

.method public aht([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 497
    invoke-virtual {p0}, Landroid/support/v4/a/l;->ahB()I

    move-result v1

    .line 498
    array-length v0, p1

    if-lt v0, v1, :cond_0

    .line 503
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v1, :cond_1

    .line 506
    array-length v0, p1

    if-gt v0, v1, :cond_2

    .line 509
    :goto_2
    return-object p1

    .line 500
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    .line 501
    goto :goto_0

    .line 504
    :cond_1
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/a/l;->ahq(II)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v0

    .line 503
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 507
    :cond_2
    const/4 v0, 0x0

    aput-object v0, p1, v1

    goto :goto_2
.end method

.method public ahu()Ljava/util/Set;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Landroid/support/v4/a/l;->VD:Landroid/support/v4/a/o;

    if-eqz v0, :cond_0

    .line 541
    :goto_0
    iget-object v0, p0, Landroid/support/v4/a/l;->VD:Landroid/support/v4/a/o;

    return-object v0

    .line 539
    :cond_0
    new-instance v0, Landroid/support/v4/a/o;

    invoke-direct {v0, p0}, Landroid/support/v4/a/o;-><init>(Landroid/support/v4/a/l;)V

    iput-object v0, p0, Landroid/support/v4/a/l;->VD:Landroid/support/v4/a/o;

    goto :goto_0
.end method

.method public ahv()Ljava/util/Set;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Landroid/support/v4/a/l;->VF:Landroid/support/v4/a/f;

    if-eqz v0, :cond_0

    .line 534
    :goto_0
    iget-object v0, p0, Landroid/support/v4/a/l;->VF:Landroid/support/v4/a/f;

    return-object v0

    .line 532
    :cond_0
    new-instance v0, Landroid/support/v4/a/f;

    invoke-direct {v0, p0}, Landroid/support/v4/a/f;-><init>(Landroid/support/v4/a/l;)V

    iput-object v0, p0, Landroid/support/v4/a/l;->VF:Landroid/support/v4/a/f;

    goto :goto_0
.end method

.method protected abstract ahw()Ljava/util/Map;
.end method

.method protected abstract ahx(ILjava/lang/Object;)Ljava/lang/Object;
.end method

.method protected abstract ahy()V
.end method
