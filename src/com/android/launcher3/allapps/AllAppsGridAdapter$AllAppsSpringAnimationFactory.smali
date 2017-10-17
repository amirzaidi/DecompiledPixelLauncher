.class Lcom/android/launcher3/allapps/AllAppsGridAdapter$AllAppsSpringAnimationFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/anim/SpringAnimationHandler$AnimationFactory;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AllAppsSpringAnimationFactory;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;Lcom/android/launcher3/allapps/AllAppsGridAdapter$AllAppsSpringAnimationFactory;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AllAppsSpringAnimationFactory;-><init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V

    return-void
.end method

.method private getAppPosition(III)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 484
    if-ge p1, p2, :cond_0

    .line 486
    return p1

    .line 490
    :cond_0
    if-nez p2, :cond_1

    .line 493
    :goto_0
    sub-int v1, p3, p2

    .line 494
    add-int/2addr v1, p1

    sub-int v0, v1, v0

    return v0

    .line 490
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getColumnFactor(II)F
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 502
    div-int/lit8 v0, p2, 0x2

    int-to-float v3, v0

    .line 503
    int-to-float v0, p1

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 505
    rem-int/lit8 v4, p2, 0x2

    if-nez v4, :cond_0

    move v1, v2

    .line 506
    :cond_0
    if-eqz v1, :cond_1

    int-to-float v1, p1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 507
    add-int/lit8 v0, v0, -0x1

    .line 510
    :cond_1
    const/4 v1, 0x0

    move v5, v1

    move v1, v0

    move v0, v5

    .line 511
    :goto_0
    if-lez v1, :cond_3

    .line 512
    if-ne v1, v2, :cond_2

    .line 513
    const v3, 0x3e4ccccd    # 0.2f

    add-float/2addr v0, v3

    .line 517
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 515
    :cond_2
    const v3, 0x3dcccccd    # 0.1f

    add-float/2addr v0, v3

    goto :goto_1

    .line 520
    :cond_3
    return v0
.end method


# virtual methods
.method public initialize(Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;)Landroid/support/a/a;
    .locals 3

    .prologue
    .line 429
    iget-object v0, p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    sget-object v1, Landroid/support/a/b;->agJ:Landroid/support/a/i;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/anim/SpringAnimationHandler;->forView(Landroid/view/View;Landroid/support/a/d;F)Landroid/support/a/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic initialize(Ljava/lang/Object;)Landroid/support/a/a;
    .locals 1

    .prologue
    .line 427
    check-cast p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AllAppsSpringAnimationFactory;->initialize(Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;)Landroid/support/a/a;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/support/a/a;Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;)V
    .locals 6

    .prologue
    const/high16 v5, 0x44610000    # 900.0f

    .line 438
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AllAppsSpringAnimationFactory;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->-get1(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AllAppsSpringAnimationFactory;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-static {v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->-get0(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getPredictedApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 439
    invoke-virtual {p2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 440
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AllAppsSpringAnimationFactory;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-static {v2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->-get1(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)I

    move-result v2

    .line 439
    invoke-direct {p0, v1, v0, v2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AllAppsSpringAnimationFactory;->getAppPosition(III)I

    move-result v0

    .line 442
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AllAppsSpringAnimationFactory;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-static {v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->-get1(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)I

    move-result v1

    rem-int v1, v0, v1

    .line 443
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AllAppsSpringAnimationFactory;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-static {v2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->-get1(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)I

    move-result v2

    div-int/2addr v0, v2

    .line 445
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AllAppsSpringAnimationFactory;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-static {v2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->-get0(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getNumAppRows()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 446
    div-int/lit8 v3, v2, 0x2

    if-le v0, v3, :cond_0

    .line 448
    sub-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 454
    :cond_0
    add-int/lit8 v2, v0, 0x1

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    .line 455
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AllAppsSpringAnimationFactory;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-static {v3}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->-get1(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AllAppsSpringAnimationFactory;->getColumnFactor(II)F

    move-result v1

    .line 457
    add-float v3, v2, v1

    const/high16 v4, -0x3d380000    # -100.0f

    mul-float/2addr v3, v4

    .line 458
    add-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    .line 461
    int-to-float v0, v0

    const/high16 v2, 0x42480000    # 50.0f

    mul-float/2addr v0, v2

    sub-float v0, v5, v0

    .line 462
    const/high16 v2, 0x44110000    # 580.0f

    .line 460
    invoke-static {v0, v2, v5}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v2

    .line 465
    invoke-virtual {p1, v3}, Landroid/support/a/a;->aub(F)Landroid/support/a/b;

    move-result-object v0

    check-cast v0, Landroid/support/a/a;

    invoke-virtual {v0, v1}, Landroid/support/a/a;->aue(F)Landroid/support/a/b;

    move-result-object v0

    check-cast v0, Landroid/support/a/a;

    invoke-virtual {v0}, Landroid/support/a/a;->atV()Landroid/support/a/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/a/c;->aus(F)Landroid/support/a/c;

    move-result-object v0

    .line 469
    const v1, 0x3f0ccccd    # 0.55f

    .line 465
    invoke-virtual {v0, v1}, Landroid/support/a/c;->auo(F)Landroid/support/a/c;

    .line 470
    return-void
.end method

.method public bridge synthetic update(Landroid/support/a/a;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 432
    check-cast p2, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AllAppsSpringAnimationFactory;->update(Landroid/support/a/a;Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;)V

    return-void
.end method
