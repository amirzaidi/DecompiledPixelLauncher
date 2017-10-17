.class public final Landroid/support/v4/view/D;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final Wp:Landroid/support/v4/view/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 194
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    .line 197
    new-instance v0, Landroid/support/v4/view/w;

    invoke-direct {v0}, Landroid/support/v4/view/w;-><init>()V

    sput-object v0, Landroid/support/v4/view/D;->Wp:Landroid/support/v4/view/w;

    .line 199
    :goto_0
    return-void

    .line 193
    :cond_0
    new-instance v0, Landroid/support/v4/view/r;

    invoke-direct {v0}, Landroid/support/v4/view/r;-><init>()V

    sput-object v0, Landroid/support/v4/view/D;->Wp:Landroid/support/v4/view/w;

    goto :goto_0

    .line 195
    :cond_1
    new-instance v0, Landroid/support/v4/view/s;

    invoke-direct {v0}, Landroid/support/v4/view/s;-><init>()V

    sput-object v0, Landroid/support/v4/view/D;->Wp:Landroid/support/v4/view/w;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ahB(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .locals 1

    .prologue
    .line 515
    sget-object v0, Landroid/support/v4/view/D;->Wp:Landroid/support/v4/view/w;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/view/w;->ahl(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public static ahC(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V
    .locals 1

    .prologue
    .line 371
    instance-of v0, p0, Landroid/support/v4/view/u;

    if-nez v0, :cond_0

    .line 375
    if-eqz p4, :cond_1

    .line 379
    :goto_0
    return-void

    .line 373
    :cond_0
    check-cast p0, Landroid/support/v4/view/u;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/support/v4/view/u;->ahu(Landroid/view/View;Landroid/view/View;II)V

    goto :goto_0

    .line 377
    :cond_1
    sget-object v0, Landroid/support/v4/view/D;->Wp:Landroid/support/v4/view/w;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/view/w;->ahi(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_0
.end method

.method public static ahD(Landroid/view/ViewParent;Landroid/view/View;II[II)V
    .locals 6

    .prologue
    .line 460
    instance-of v0, p0, Landroid/support/v4/view/u;

    if-nez v0, :cond_0

    .line 463
    if-eqz p5, :cond_1

    .line 467
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    .line 462
    check-cast v0, Landroid/support/v4/view/u;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/u;->aht(Landroid/view/View;II[II)V

    goto :goto_0

    .line 465
    :cond_1
    sget-object v0, Landroid/support/v4/view/D;->Wp:Landroid/support/v4/view/w;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/w;->ahm(Landroid/view/ViewParent;Landroid/view/View;II[I)V

    goto :goto_0
.end method

.method public static ahE(Landroid/view/ViewParent;Landroid/view/View;IIIII)V
    .locals 7

    .prologue
    .line 427
    instance-of v0, p0, Landroid/support/v4/view/u;

    if-nez v0, :cond_0

    .line 431
    if-eqz p6, :cond_1

    .line 435
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    .line 429
    check-cast v0, Landroid/support/v4/view/u;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/support/v4/view/u;->ahs(Landroid/view/View;IIIII)V

    goto :goto_0

    .line 433
    :cond_1
    sget-object v0, Landroid/support/v4/view/D;->Wp:Landroid/support/v4/view/w;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/view/w;->ahj(Landroid/view/ViewParent;Landroid/view/View;IIII)V

    goto :goto_0
.end method

.method public static ahF(Landroid/view/ViewParent;Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 394
    instance-of v0, p0, Landroid/support/v4/view/u;

    if-nez v0, :cond_0

    .line 397
    if-eqz p2, :cond_1

    .line 401
    :goto_0
    return-void

    .line 396
    :cond_0
    check-cast p0, Landroid/support/v4/view/u;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/view/u;->ahq(Landroid/view/View;I)V

    goto :goto_0

    .line 399
    :cond_1
    sget-object v0, Landroid/support/v4/view/D;->Wp:Landroid/support/v4/view/w;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/w;->aho(Landroid/view/ViewParent;Landroid/view/View;)V

    goto :goto_0
.end method

.method public static ahG(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .locals 6

    .prologue
    .line 490
    sget-object v0, Landroid/support/v4/view/D;->Wp:Landroid/support/v4/view/w;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/w;->ahk(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public static ahH(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 229
    invoke-interface {p0, p1, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public static ahI(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 341
    instance-of v0, p0, Landroid/support/v4/view/u;

    if-nez v0, :cond_0

    .line 345
    if-eqz p4, :cond_1

    .line 349
    return v1

    .line 343
    :cond_0
    check-cast p0, Landroid/support/v4/view/u;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/support/v4/view/u;->ahr(Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    return v0

    .line 347
    :cond_1
    sget-object v0, Landroid/support/v4/view/D;->Wp:Landroid/support/v4/view/w;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/view/w;->ahn(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method
