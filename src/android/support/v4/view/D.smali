.class public final Landroid/support/v4/view/D;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final UP:Landroid/support/v4/view/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 193
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 195
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    .line 198
    new-instance v0, Landroid/support/v4/view/w;

    invoke-direct {v0}, Landroid/support/v4/view/w;-><init>()V

    sput-object v0, Landroid/support/v4/view/D;->UP:Landroid/support/v4/view/w;

    .line 200
    :goto_0
    return-void

    .line 194
    :cond_0
    new-instance v0, Landroid/support/v4/view/r;

    invoke-direct {v0}, Landroid/support/v4/view/r;-><init>()V

    sput-object v0, Landroid/support/v4/view/D;->UP:Landroid/support/v4/view/w;

    goto :goto_0

    .line 196
    :cond_1
    new-instance v0, Landroid/support/v4/view/s;

    invoke-direct {v0}, Landroid/support/v4/view/s;-><init>()V

    sput-object v0, Landroid/support/v4/view/D;->UP:Landroid/support/v4/view/w;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ags(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .locals 1

    .prologue
    .line 516
    sget-object v0, Landroid/support/v4/view/D;->UP:Landroid/support/v4/view/w;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/view/w;->agc(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public static agt(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V
    .locals 1

    .prologue
    .line 372
    instance-of v0, p0, Landroid/support/v4/view/u;

    if-nez v0, :cond_0

    .line 376
    if-eqz p4, :cond_1

    .line 380
    :goto_0
    return-void

    .line 374
    :cond_0
    check-cast p0, Landroid/support/v4/view/u;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/support/v4/view/u;->agl(Landroid/view/View;Landroid/view/View;II)V

    goto :goto_0

    .line 378
    :cond_1
    sget-object v0, Landroid/support/v4/view/D;->UP:Landroid/support/v4/view/w;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/view/w;->afZ(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_0
.end method

.method public static agu(Landroid/view/ViewParent;Landroid/view/View;II[II)V
    .locals 6

    .prologue
    .line 461
    instance-of v0, p0, Landroid/support/v4/view/u;

    if-nez v0, :cond_0

    .line 464
    if-eqz p5, :cond_1

    .line 468
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    .line 463
    check-cast v0, Landroid/support/v4/view/u;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/u;->agk(Landroid/view/View;II[II)V

    goto :goto_0

    .line 466
    :cond_1
    sget-object v0, Landroid/support/v4/view/D;->UP:Landroid/support/v4/view/w;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/w;->agd(Landroid/view/ViewParent;Landroid/view/View;II[I)V

    goto :goto_0
.end method

.method public static agv(Landroid/view/ViewParent;Landroid/view/View;IIIII)V
    .locals 7

    .prologue
    .line 428
    instance-of v0, p0, Landroid/support/v4/view/u;

    if-nez v0, :cond_0

    .line 432
    if-eqz p6, :cond_1

    .line 436
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    .line 430
    check-cast v0, Landroid/support/v4/view/u;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/support/v4/view/u;->agj(Landroid/view/View;IIIII)V

    goto :goto_0

    .line 434
    :cond_1
    sget-object v0, Landroid/support/v4/view/D;->UP:Landroid/support/v4/view/w;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/view/w;->aga(Landroid/view/ViewParent;Landroid/view/View;IIII)V

    goto :goto_0
.end method

.method public static agw(Landroid/view/ViewParent;Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 395
    instance-of v0, p0, Landroid/support/v4/view/u;

    if-nez v0, :cond_0

    .line 398
    if-eqz p2, :cond_1

    .line 402
    :goto_0
    return-void

    .line 397
    :cond_0
    check-cast p0, Landroid/support/v4/view/u;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/view/u;->agh(Landroid/view/View;I)V

    goto :goto_0

    .line 400
    :cond_1
    sget-object v0, Landroid/support/v4/view/D;->UP:Landroid/support/v4/view/w;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/w;->agf(Landroid/view/ViewParent;Landroid/view/View;)V

    goto :goto_0
.end method

.method public static agx(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .locals 6

    .prologue
    .line 491
    sget-object v0, Landroid/support/v4/view/D;->UP:Landroid/support/v4/view/w;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/w;->agb(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public static agy(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 230
    invoke-interface {p0, p1, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public static agz(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 342
    instance-of v0, p0, Landroid/support/v4/view/u;

    if-nez v0, :cond_0

    .line 346
    if-eqz p4, :cond_1

    .line 350
    return v1

    .line 344
    :cond_0
    check-cast p0, Landroid/support/v4/view/u;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/support/v4/view/u;->agi(Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    return v0

    .line 348
    :cond_1
    sget-object v0, Landroid/support/v4/view/D;->UP:Landroid/support/v4/view/w;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/view/w;->age(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method
