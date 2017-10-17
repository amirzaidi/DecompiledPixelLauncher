.class public Lcom/google/android/apps/nexuslauncher/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field fb:Landroid/graphics/drawable/Drawable;

.field fc:I

.field fd:I

.field fe:I

.field ff:Landroid/graphics/drawable/LayerDrawable;

.field fg:I

.field private final fh:Ljava/util/Calendar;

.field fi:I

.field fj:I

.field scale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/b;->fh:Ljava/util/Calendar;

    .line 18
    return-void
.end method


# virtual methods
.method public clone()Lcom/google/android/apps/nexuslauncher/b/b;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 39
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/b/b;->fb:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 40
    return-object v0

    .line 43
    :cond_0
    new-instance v1, Lcom/google/android/apps/nexuslauncher/b/b;

    invoke-direct {v1}, Lcom/google/android/apps/nexuslauncher/b/b;-><init>()V

    .line 44
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/b/b;->scale:F

    iput v2, v1, Lcom/google/android/apps/nexuslauncher/b/b;->scale:F

    .line 45
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/b/b;->fg:I

    iput v2, v1, Lcom/google/android/apps/nexuslauncher/b/b;->fg:I

    .line 46
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/b/b;->fi:I

    iput v2, v1, Lcom/google/android/apps/nexuslauncher/b/b;->fi:I

    .line 47
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/b/b;->fj:I

    iput v2, v1, Lcom/google/android/apps/nexuslauncher/b/b;->fj:I

    .line 48
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/b/b;->fc:I

    iput v2, v1, Lcom/google/android/apps/nexuslauncher/b/b;->fc:I

    .line 49
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/b/b;->fd:I

    iput v2, v1, Lcom/google/android/apps/nexuslauncher/b/b;->fd:I

    .line 50
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/b/b;->fe:I

    iput v2, v1, Lcom/google/android/apps/nexuslauncher/b/b;->fe:I

    .line 52
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/b/b;->fb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/apps/nexuslauncher/b/b;->fb:Landroid/graphics/drawable/Drawable;

    .line 54
    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/b/b;->dI()Landroid/graphics/drawable/LayerDrawable;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/apps/nexuslauncher/b/b;->ff:Landroid/graphics/drawable/LayerDrawable;

    .line 55
    iget-object v2, v1, Lcom/google/android/apps/nexuslauncher/b/b;->ff:Landroid/graphics/drawable/LayerDrawable;

    if-nez v2, :cond_1

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/b/b;->clone()Lcom/google/android/apps/nexuslauncher/b/b;

    move-result-object v0

    return-object v0
.end method

.method public dG()Z
    .locals 10

    .prologue
    const/16 v9, 0xc

    const/16 v8, 0xa

    const/4 v1, 0x1

    const/4 v7, -0x1

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/b;->fh:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/b;->fh:Ljava/util/Calendar;

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/b/b;->fc:I

    rsub-int/lit8 v2, v2, 0xc

    add-int/2addr v0, v2

    rem-int/lit8 v2, v0, 0xc

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/b;->fh:Ljava/util/Calendar;

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v3, p0, Lcom/google/android/apps/nexuslauncher/b/b;->fd:I

    rsub-int/lit8 v3, v3, 0x3c

    add-int/2addr v0, v3

    rem-int/lit8 v3, v0, 0x3c

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/b;->fh:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v4, p0, Lcom/google/android/apps/nexuslauncher/b/b;->fe:I

    rsub-int/lit8 v4, v4, 0x3c

    add-int/2addr v0, v4

    rem-int/lit8 v4, v0, 0x3c

    .line 78
    const/4 v0, 0x0

    .line 79
    iget v5, p0, Lcom/google/android/apps/nexuslauncher/b/b;->fg:I

    if-eq v5, v7, :cond_0

    .line 80
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/b/b;->ff:Landroid/graphics/drawable/LayerDrawable;

    iget v6, p0, Lcom/google/android/apps/nexuslauncher/b/b;->fg:I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 81
    mul-int/lit8 v2, v2, 0x3c

    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/b/b;->fh:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 86
    :cond_0
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/b/b;->fi:I

    if-eq v2, v7, :cond_1

    .line 87
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/b/b;->ff:Landroid/graphics/drawable/LayerDrawable;

    iget v5, p0, Lcom/google/android/apps/nexuslauncher/b/b;->fi:I

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 88
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/b/b;->fh:Ljava/util/Calendar;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    add-int/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 93
    :cond_1
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/b/b;->fj:I

    if-eq v2, v7, :cond_2

    .line 94
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/b/b;->ff:Landroid/graphics/drawable/LayerDrawable;

    iget v3, p0, Lcom/google/android/apps/nexuslauncher/b/b;->fj:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 95
    mul-int/lit8 v3, v4, 0xa

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 100
    :cond_2
    return v0
.end method

.method public dH(Ljava/util/TimeZone;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/b;->fh:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 105
    return-void
.end method

.method public dI()Landroid/graphics/drawable/LayerDrawable;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/b;->fb:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/b;->fb:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    return-object v0

    .line 61
    :cond_0
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/b;->fb:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/b;->fb:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 63
    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_1

    .line 64
    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    return-object v0

    .line 67
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
