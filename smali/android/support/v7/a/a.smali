.class public final Landroid/support/v7/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final SU:Landroid/support/v7/a/b;


# instance fields
.field private final SS:Ljava/util/List;

.field private final ST:Ljava/util/Map;

.field private final SV:Landroid/support/v7/a/d;

.field private final SW:Ljava/util/List;

.field private final SX:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 952
    new-instance v0, Landroid/support/v7/a/g;

    invoke-direct {v0}, Landroid/support/v7/a/g;-><init>()V

    sput-object v0, Landroid/support/v7/a/a;->SU:Landroid/support/v7/a/b;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Landroid/support/v7/a/a;->SS:Ljava/util/List;

    .line 155
    iput-object p2, p0, Landroid/support/v7/a/a;->SW:Ljava/util/List;

    .line 157
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/a/a;->SX:Landroid/util/SparseBooleanArray;

    .line 158
    new-instance v0, Landroid/support/v4/a/t;

    invoke-direct {v0}, Landroid/support/v4/a/t;-><init>()V

    iput-object v0, p0, Landroid/support/v7/a/a;->ST:Ljava/util/Map;

    .line 160
    invoke-direct {p0}, Landroid/support/v7/a/a;->acw()Landroid/support/v7/a/d;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/a/a;->SV:Landroid/support/v7/a/d;

    .line 161
    return-void
.end method

.method private acr(Landroid/support/v7/a/e;)Landroid/support/v7/a/d;
    .locals 4

    .prologue
    .line 360
    invoke-direct {p0, p1}, Landroid/support/v7/a/a;->act(Landroid/support/v7/a/e;)Landroid/support/v7/a/d;

    move-result-object v0

    .line 361
    if-nez v0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-object v0

    .line 361
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/a/e;->ada()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Landroid/support/v7/a/a;->SX:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/support/v7/a/d;->acI()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->append(IZ)V

    goto :goto_0
.end method

.method public static acs(Landroid/graphics/Bitmap;)Landroid/support/v7/a/c;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Landroid/support/v7/a/c;

    invoke-direct {v0, p0}, Landroid/support/v7/a/c;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private act(Landroid/support/v7/a/e;)Landroid/support/v7/a/d;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 369
    const/4 v2, 0x0

    .line 371
    iget-object v3, p0, Landroid/support/v7/a/a;->SS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    move v4, v0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 381
    return-object v1

    .line 372
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/a;->SS:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/a/d;

    .line 373
    invoke-direct {p0, v0, p1}, Landroid/support/v7/a/a;->acu(Landroid/support/v7/a/d;Landroid/support/v7/a/e;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v1

    move v1, v2

    .line 371
    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 374
    :cond_1
    invoke-direct {p0, v0, p1}, Landroid/support/v7/a/a;->acx(Landroid/support/v7/a/d;Landroid/support/v7/a/e;)F

    move-result v3

    .line 375
    if-nez v1, :cond_3

    :cond_2
    move v1, v3

    .line 377
    goto :goto_1

    .line 375
    :cond_3
    cmpl-float v6, v3, v2

    if-gtz v6, :cond_2

    move-object v0, v1

    move v1, v2

    goto :goto_1
.end method

.method private acu(Landroid/support/v7/a/d;Landroid/support/v7/a/e;)Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 387
    invoke-virtual {p1}, Landroid/support/v7/a/d;->acE()[F

    move-result-object v2

    .line 388
    aget v3, v2, v0

    invoke-virtual {p2}, Landroid/support/v7/a/e;->acL()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    aget v3, v2, v0

    invoke-virtual {p2}, Landroid/support/v7/a/e;->acV()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    aget v3, v2, v5

    .line 389
    invoke-virtual {p2}, Landroid/support/v7/a/e;->acM()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    aget v2, v2, v5

    invoke-virtual {p2}, Landroid/support/v7/a/e;->acN()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/a/a;->SX:Landroid/util/SparseBooleanArray;

    .line 390
    invoke-virtual {p1}, Landroid/support/v7/a/d;->acI()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private acw()Landroid/support/v7/a/d;
    .locals 6

    .prologue
    .line 419
    const/high16 v2, -0x80000000

    .line 420
    const/4 v1, 0x0

    .line 421
    const/4 v0, 0x0

    iget-object v3, p0, Landroid/support/v7/a/a;->SS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v3, v0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 428
    return-object v1

    .line 422
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/a;->SS:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/a/d;

    .line 423
    invoke-virtual {v0}, Landroid/support/v7/a/d;->acG()I

    move-result v5

    if-gt v5, v2, :cond_1

    move-object v0, v1

    move v1, v2

    .line 421
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 425
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/a/d;->acG()I

    move-result v1

    goto :goto_1
.end method

.method private acx(Landroid/support/v7/a/d;Landroid/support/v7/a/e;)F
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 394
    invoke-virtual {p1}, Landroid/support/v7/a/d;->acE()[F

    move-result-object v3

    .line 400
    iget-object v0, p0, Landroid/support/v7/a/a;->SV:Landroid/support/v7/a/d;

    if-nez v0, :cond_1

    move v0, v1

    .line 402
    :goto_0
    invoke-virtual {p2}, Landroid/support/v7/a/e;->acT()F

    move-result v4

    cmpl-float v4, v4, v2

    if-lez v4, :cond_2

    .line 403
    invoke-virtual {p2}, Landroid/support/v7/a/e;->acT()F

    move-result v4

    aget v1, v3, v1

    .line 404
    invoke-virtual {p2}, Landroid/support/v7/a/e;->acQ()F

    move-result v5

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v6, v1

    mul-float/2addr v1, v4

    .line 406
    :goto_1
    invoke-virtual {p2}, Landroid/support/v7/a/e;->acR()F

    move-result v4

    cmpl-float v4, v4, v2

    if-lez v4, :cond_3

    .line 407
    invoke-virtual {p2}, Landroid/support/v7/a/e;->acR()F

    move-result v4

    const/4 v5, 0x2

    aget v3, v3, v5

    .line 408
    invoke-virtual {p2}, Landroid/support/v7/a/e;->acX()F

    move-result v5

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v3, v6, v3

    mul-float/2addr v3, v4

    .line 410
    :goto_2
    invoke-virtual {p2}, Landroid/support/v7/a/e;->acY()F

    move-result v4

    cmpl-float v4, v4, v2

    if-lez v4, :cond_0

    .line 411
    invoke-virtual {p2}, Landroid/support/v7/a/e;->acY()F

    move-result v2

    .line 412
    invoke-virtual {p1}, Landroid/support/v7/a/d;->acG()I

    move-result v4

    int-to-float v4, v4

    int-to-float v0, v0

    div-float v0, v4, v0

    mul-float/2addr v2, v0

    .line 415
    :cond_0
    add-float v0, v1, v3

    add-float/2addr v0, v2

    return v0

    .line 400
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/a;->SV:Landroid/support/v7/a/d;

    invoke-virtual {v0}, Landroid/support/v7/a/d;->acG()I

    move-result v0

    goto :goto_0

    :cond_2
    move v1, v2

    .line 402
    goto :goto_1

    :cond_3
    move v3, v2

    .line 406
    goto :goto_2
.end method


# virtual methods
.method public acq()Ljava/util/List;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Landroid/support/v7/a/a;->SS:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method acv()V
    .locals 5

    .prologue
    .line 350
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/a/a;->SW:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 356
    iget-object v0, p0, Landroid/support/v7/a/a;->SX:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 357
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/a;->SW:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/a/e;

    .line 352
    invoke-virtual {v0}, Landroid/support/v7/a/e;->acP()V

    .line 353
    iget-object v3, p0, Landroid/support/v7/a/a;->ST:Ljava/util/Map;

    invoke-direct {p0, v0}, Landroid/support/v7/a/a;->acr(Landroid/support/v7/a/e;)Landroid/support/v7/a/d;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
