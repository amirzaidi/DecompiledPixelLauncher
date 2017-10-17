.class Landroid/support/v7/widget/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static acg(Landroid/support/v7/widget/e;Landroid/support/v7/widget/U;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/p;Z)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-virtual {p4}, Landroid/support/v7/widget/p;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 84
    :cond_0
    return v1

    .line 82
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 86
    if-eqz p5, :cond_2

    .line 90
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/U;->abl(Landroid/view/View;)I

    move-result v0

    .line 91
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/U;->abk(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 92
    invoke-virtual {p4, p2}, Landroid/support/v7/widget/p;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 93
    invoke-virtual {p4, p3}, Landroid/support/v7/widget/p;->getPosition(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 92
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 96
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 87
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v0

    return v0
.end method

.method static ach(Landroid/support/v7/widget/e;Landroid/support/v7/widget/U;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/p;ZZ)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 32
    invoke-virtual {p4}, Landroid/support/v7/widget/p;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 34
    :cond_0
    return v3

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 36
    invoke-virtual {p4, p2}, Landroid/support/v7/widget/p;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 37
    invoke-virtual {p4, p3}, Landroid/support/v7/widget/p;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 36
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 38
    invoke-virtual {p4, p2}, Landroid/support/v7/widget/p;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 39
    invoke-virtual {p4, p3}, Landroid/support/v7/widget/p;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 38
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 40
    if-nez p6, :cond_2

    .line 42
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 43
    :goto_0
    if-eqz p5, :cond_3

    .line 46
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/U;->abl(Landroid/view/View;)I

    move-result v1

    .line 47
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/U;->abk(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 46
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 48
    invoke-virtual {p4, p2}, Landroid/support/v7/widget/p;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 49
    invoke-virtual {p4, p3}, Landroid/support/v7/widget/p;->getPosition(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 48
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 50
    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 52
    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/support/v7/widget/U;->abm()I

    move-result v1

    .line 53
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/U;->abk(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 52
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    .line 41
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 44
    :cond_3
    return v0
.end method

.method static aci(Landroid/support/v7/widget/e;Landroid/support/v7/widget/U;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/p;Z)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-virtual {p4}, Landroid/support/v7/widget/p;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 65
    :cond_0
    return v1

    .line 63
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 67
    if-eqz p5, :cond_2

    .line 70
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/U;->abl(Landroid/view/View;)I

    move-result v0

    .line 71
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/U;->abk(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 72
    invoke-virtual {p1}, Landroid/support/v7/widget/U;->abj()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 68
    :cond_2
    invoke-virtual {p4, p2}, Landroid/support/v7/widget/p;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p4, p3}, Landroid/support/v7/widget/p;->getPosition(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
