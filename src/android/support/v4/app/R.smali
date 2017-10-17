.class Landroid/support/v4/app/R;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static amD(Ljava/lang/Object;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 133
    :goto_0
    return-void

    .line 122
    :cond_0
    check-cast p0, Landroid/transition/Transition;

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 124
    invoke-static {p1, v0}, Landroid/support/v4/app/R;->anb(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 126
    new-instance v1, Landroid/support/v4/app/al;

    invoke-direct {v1, v0}, Landroid/support/v4/app/al;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    goto :goto_0
.end method

.method public static amE(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 560
    new-instance v0, Landroid/support/v4/app/av;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/app/av;-><init>(Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {p0, v0}, Landroid/support/v4/app/ak;->anV(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/ak;

    .line 572
    return-void
.end method

.method public static amF(Ljava/util/Map;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 385
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    :cond_0
    return-void

    .line 386
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v1

    .line 387
    if-nez v1, :cond_2

    .line 390
    :goto_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 391
    check-cast p1, Landroid/view/ViewGroup;

    .line 392
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 393
    :goto_1
    if-ge v0, v1, :cond_0

    .line 394
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 395
    invoke-static {p0, v2}, Landroid/support/v4/app/R;->amF(Ljava/util/Map;Landroid/view/View;)V

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 388
    :cond_2
    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static amG(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 66
    check-cast p0, Landroid/transition/TransitionSet;

    .line 67
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v2

    .line 68
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 69
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 70
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 74
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-static {p0, p2}, Landroid/support/v4/app/R;->amY(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 77
    return-void

    .line 71
    :cond_0
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 72
    invoke-static {v2, v0}, Landroid/support/v4/app/R;->amP(Ljava/util/List;Landroid/view/View;)V

    .line 70
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static amH(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 263
    check-cast p0, Landroid/transition/Transition;

    .line 264
    check-cast p1, Landroid/transition/Transition;

    .line 265
    check-cast p2, Landroid/transition/Transition;

    .line 266
    if-nez p0, :cond_2

    .line 271
    :cond_0
    if-nez p0, :cond_3

    .line 273
    if-nez p1, :cond_1

    move-object p1, v0

    .line 276
    :cond_1
    :goto_0
    if-nez p2, :cond_4

    .line 284
    return-object p1

    .line 266
    :cond_2
    if-eqz p1, :cond_0

    .line 267
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 268
    invoke-virtual {v0, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v0

    .line 269
    invoke-virtual {v0, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v0

    const/4 v1, 0x1

    .line 270
    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, p0

    .line 272
    goto :goto_0

    .line 277
    :cond_4
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 278
    if-nez p1, :cond_5

    .line 281
    :goto_1
    invoke-virtual {v0, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 282
    return-object v0

    .line 279
    :cond_5
    invoke-virtual {v0, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    goto :goto_1
.end method

.method public static amI(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5

    .prologue
    .line 304
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 305
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 306
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 311
    return-object v2

    .line 307
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 308
    invoke-virtual {v0}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 306
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private static amJ(Landroid/transition/Transition;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetIds()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/app/R;->amS(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 183
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 182
    :cond_1
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetNames()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/app/R;->amS(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetTypes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/app/R;->amS(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public static amK(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 323
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 324
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v4, v3

    .line 326
    :goto_0
    if-lt v4, v1, :cond_0

    .line 343
    new-instance v0, Landroid/support/v4/app/X;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/X;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {p0, v0}, Landroid/support/v4/app/ak;->anV(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/ak;

    .line 352
    return-void

    .line 327
    :cond_0
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 328
    invoke-virtual {v0}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v6

    .line 329
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    if-eqz v6, :cond_1

    .line 333
    invoke-virtual {v0, v8}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 334
    invoke-interface {p4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move v2, v3

    .line 335
    :goto_1
    if-lt v2, v1, :cond_2

    .line 326
    :cond_1
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 336
    :cond_2
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 335
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 337
    :cond_3
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static amL(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 362
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    .line 375
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 364
    :cond_2
    check-cast p1, Landroid/view/ViewGroup;

    .line 365
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v1

    if-nez v1, :cond_3

    .line 368
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 369
    :goto_1
    if-ge v0, v1, :cond_0

    .line 370
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 371
    invoke-static {p0, v2}, Landroid/support/v4/app/R;->amL(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 366
    :cond_3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static amM(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 533
    if-nez p0, :cond_0

    .line 537
    :goto_0
    return-void

    .line 534
    :cond_0
    check-cast p0, Landroid/transition/Transition;

    .line 535
    invoke-virtual {p0, p1}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    goto :goto_0
.end method

.method public static amN(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 403
    new-instance v0, Landroid/support/v4/app/M;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/app/M;-><init>(Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {p0, v0}, Landroid/support/v4/app/ak;->anV(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/ak;

    .line 417
    return-void
.end method

.method public static amO(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    if-eqz p0, :cond_0

    .line 53
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 54
    check-cast p0, Landroid/transition/Transition;

    invoke-virtual {v0, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 55
    return-object v0

    .line 51
    :cond_0
    return-object v0
.end method

.method private static amP(Ljava/util/List;Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 84
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 85
    invoke-static {p0, p1, v2}, Landroid/support/v4/app/R;->amV(Ljava/util/List;Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 89
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 102
    return-void

    .line 86
    :cond_0
    return-void

    .line 90
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 91
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-nez v3, :cond_3

    .line 89
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 92
    :cond_3
    check-cast v0, Landroid/view/ViewGroup;

    .line 93
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v3, v4

    .line 94
    :goto_1
    if-ge v3, v5, :cond_2

    .line 95
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 96
    invoke-static {p0, v6, v2}, Landroid/support/v4/app/R;->amV(Ljava/util/List;Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 94
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 97
    :cond_4
    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static amQ(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 219
    check-cast p0, Landroid/transition/Transition;

    .line 220
    new-instance v0, Landroid/support/v4/app/ah;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/app/ah;-><init>(Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 247
    return-void
.end method

.method public static amR(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    if-nez p0, :cond_0

    .line 42
    :goto_0
    return-object v0

    .line 40
    :cond_0
    check-cast p0, Landroid/transition/Transition;

    invoke-virtual {p0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0
.end method

.method private static amS(Ljava/util/List;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 190
    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static amT(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 495
    check-cast p0, Landroid/transition/Transition;

    .line 496
    instance-of v0, p0, Landroid/transition/TransitionSet;

    if-nez v0, :cond_1

    .line 503
    invoke-static {p0}, Landroid/support/v4/app/R;->amJ(Landroid/transition/Transition;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 517
    :cond_0
    return-void

    .line 497
    :cond_1
    check-cast p0, Landroid/transition/TransitionSet;

    .line 498
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v0

    .line 499
    :goto_0
    if-ge v2, v0, :cond_0

    .line 500
    invoke-virtual {p0, v2}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v1

    .line 501
    invoke-static {v1, p1, p2}, Landroid/support/v4/app/R;->amT(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 499
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 504
    :cond_2
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v0

    .line 505
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 506
    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v0

    .line 509
    :goto_1
    if-lt v2, v1, :cond_4

    .line 512
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_0

    .line 513
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 512
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_3
    move v1, v2

    .line 508
    goto :goto_1

    .line 510
    :cond_4
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 509
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static amU(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 478
    check-cast p0, Landroid/transition/TransitionSet;

    .line 479
    if-nez p0, :cond_0

    .line 484
    :goto_0
    return-void

    .line 480
    :cond_0
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 481
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 482
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/R;->amT(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private static amV(Ljava/util/List;Landroid/view/View;I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 109
    :goto_0
    if-lt v0, p2, :cond_0

    .line 114
    return v1

    .line 110
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_1

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static amW(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 200
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 201
    if-nez p0, :cond_0

    .line 204
    :goto_0
    if-nez p1, :cond_1

    .line 207
    :goto_1
    if-nez p2, :cond_2

    .line 210
    :goto_2
    return-object v0

    .line 202
    :cond_0
    check-cast p0, Landroid/transition/Transition;

    invoke-virtual {v0, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    goto :goto_0

    .line 205
    :cond_1
    check-cast p1, Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    goto :goto_1

    .line 208
    :cond_2
    check-cast p2, Landroid/transition/Transition;

    invoke-virtual {v0, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    goto :goto_2
.end method

.method public static amX(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 292
    check-cast p1, Landroid/transition/Transition;

    invoke-static {p0, p1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 293
    return-void
.end method

.method public static amY(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 154
    check-cast p0, Landroid/transition/Transition;

    .line 155
    if-eqz p0, :cond_1

    .line 158
    instance-of v1, p0, Landroid/transition/TransitionSet;

    if-nez v1, :cond_2

    .line 165
    invoke-static {p0}, Landroid/support/v4/app/R;->amJ(Landroid/transition/Transition;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 175
    :cond_0
    return-void

    .line 156
    :cond_1
    return-void

    .line 159
    :cond_2
    check-cast p0, Landroid/transition/TransitionSet;

    .line 160
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v1

    .line 161
    :goto_0
    if-ge v0, v1, :cond_0

    .line 162
    invoke-virtual {p0, v0}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v2

    .line 163
    invoke-static {v2, p1}, Landroid/support/v4/app/R;->amY(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_3
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v1

    .line 167
    invoke-static {v1}, Landroid/support/v4/app/R;->amS(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    .line 170
    :goto_1
    if-ge v1, v2, :cond_0

    .line 171
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 170
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public static amZ(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 523
    if-nez p0, :cond_0

    .line 527
    :goto_0
    return-void

    .line 524
    :cond_0
    check-cast p0, Landroid/transition/Transition;

    .line 525
    invoke-virtual {p0, p1}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    goto :goto_0
.end method

.method public static ana(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 544
    if-nez p0, :cond_0

    .line 556
    :goto_0
    return-void

    .line 545
    :cond_0
    check-cast p0, Landroid/transition/Transition;

    .line 546
    new-instance v0, Landroid/support/v4/app/y;

    invoke-direct {v0, p1}, Landroid/support/v4/app/y;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    goto :goto_0
.end method

.method public static anb(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 140
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 141
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 142
    aget v1, v0, v3

    aget v2, v0, v5

    aget v3, v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    aget v0, v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 143
    return-void
.end method

.method private static anc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 423
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 428
    const/4 v0, 0x0

    return-object v0

    .line 423
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 424
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 425
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static and(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 7

    .prologue
    .line 439
    check-cast p0, Landroid/transition/Transition;

    .line 440
    new-instance v0, Landroid/support/v4/app/i;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/i;-><init>(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 470
    return-void
.end method

.method static synthetic ane(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-static {p0, p1}, Landroid/support/v4/app/R;->anc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
