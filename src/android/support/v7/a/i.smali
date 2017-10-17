.class final Landroid/support/v7/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TJ:Ljava/util/Comparator;


# instance fields
.field final TI:Landroid/util/TimingLogger;

.field final TK:Ljava/util/List;

.field final TL:[I

.field final TM:[Landroid/support/v7/a/b;

.field private final TN:[F

.field final mColors:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 454
    new-instance v0, Landroid/support/v7/a/h;

    invoke-direct {v0}, Landroid/support/v7/a/h;-><init>()V

    sput-object v0, Landroid/support/v7/a/i;->TJ:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>([II[Landroid/support/v7/a/b;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v7/a/i;->TN:[F

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/a/i;->TI:Landroid/util/TimingLogger;

    .line 73
    iput-object p3, p0, Landroid/support/v7/a/i;->TM:[Landroid/support/v7/a/b;

    .line 75
    const v0, 0x8000

    new-array v5, v0, [I

    iput-object v5, p0, Landroid/support/v7/a/i;->TL:[I

    move v0, v1

    .line 76
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_1

    move v0, v1

    move v2, v1

    .line 90
    :goto_1
    array-length v3, v5

    if-lt v0, v3, :cond_2

    .line 106
    new-array v6, v2, [I

    iput-object v6, p0, Landroid/support/v7/a/i;->mColors:[I

    move v0, v1

    move v3, v1

    .line 108
    :goto_2
    array-length v4, v5

    if-lt v0, v4, :cond_6

    .line 118
    if-le v2, p2, :cond_8

    .line 131
    invoke-direct {p0, p2}, Landroid/support/v7/a/i;->adu(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/a/i;->TK:Ljava/util/List;

    .line 138
    :cond_0
    return-void

    .line 77
    :cond_1
    aget v2, p1, v0

    invoke-static {v2}, Landroid/support/v7/a/i;->adr(I)I

    move-result v2

    .line 79
    aput v2, p1, v0

    .line 81
    aget v3, v5, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v5, v2

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_2
    aget v3, v5, v0

    if-gtz v3, :cond_4

    .line 95
    :cond_3
    :goto_3
    aget v3, v5, v0

    if-gtz v3, :cond_5

    .line 90
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 91
    :cond_4
    invoke-direct {p0, v0}, Landroid/support/v7/a/i;->adA(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 93
    aput v1, v5, v0

    goto :goto_3

    .line 97
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 109
    :cond_6
    aget v4, v5, v0

    if-gtz v4, :cond_7

    .line 108
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 110
    :cond_7
    add-int/lit8 v4, v3, 0x1

    aput v0, v6, v3

    move v3, v4

    goto :goto_5

    .line 120
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/a/i;->TK:Ljava/util/List;

    .line 121
    array-length v0, v6

    :goto_6
    if-ge v1, v0, :cond_0

    aget v2, v6, v1

    .line 122
    iget-object v3, p0, Landroid/support/v7/a/i;->TK:Ljava/util/List;

    new-instance v4, Landroid/support/v7/a/d;

    invoke-static {v2}, Landroid/support/v7/a/i;->ads(I)I

    move-result v7

    aget v2, v5, v2

    invoke-direct {v4, v7, v2}, Landroid/support/v7/a/d;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method private adA(I)Z
    .locals 2

    .prologue
    .line 431
    invoke-static {p1}, Landroid/support/v7/a/i;->ads(I)I

    move-result v0

    .line 432
    iget-object v1, p0, Landroid/support/v7/a/i;->TN:[F

    invoke-static {v0, v1}, Landroid/support/v4/b/a;->aqW(I[F)V

    .line 433
    iget-object v1, p0, Landroid/support/v7/a/i;->TN:[F

    invoke-direct {p0, v0, v1}, Landroid/support/v7/a/i;->adw(I[F)Z

    move-result v0

    return v0
.end method

.method private adB(Landroid/support/v7/a/d;)Z
    .locals 2

    .prologue
    .line 437
    invoke-virtual {p1}, Landroid/support/v7/a/d;->acI()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/a/d;->acE()[F

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/a/i;->adw(I[F)Z

    move-result v0

    return v0
.end method

.method static ado(I)I
    .locals 1

    .prologue
    .line 495
    shr-int/lit8 v0, p0, 0x5

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method private adp(Ljava/util/PriorityQueue;I)V
    .locals 2

    .prologue
    .line 173
    :goto_0
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 193
    return-void

    .line 174
    :cond_0
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/a/f;

    .line 176
    if-nez v0, :cond_2

    .line 190
    :cond_1
    return-void

    .line 176
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/a/f;->adj()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    invoke-virtual {v0}, Landroid/support/v7/a/f;->ade()Landroid/support/v7/a/f;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 184
    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static adq([IIII)V
    .locals 3

    .prologue
    .line 405
    packed-switch p1, :pswitch_data_0

    .line 428
    :goto_0
    :pswitch_0
    return-void

    .line 412
    :cond_0
    aget v0, p0, p2

    .line 413
    invoke-static {v0}, Landroid/support/v7/a/i;->ado(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0xa

    .line 414
    invoke-static {v0}, Landroid/support/v7/a/i;->adt(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v1, v2

    .line 415
    invoke-static {v0}, Landroid/support/v7/a/i;->ady(I)I

    move-result v0

    or-int/2addr v0, v1

    aput v0, p0, p2

    .line 411
    add-int/lit8 p2, p2, 0x1

    :pswitch_1
    if-le p2, p3, :cond_0

    goto :goto_0

    .line 421
    :cond_1
    aget v0, p0, p2

    .line 422
    invoke-static {v0}, Landroid/support/v7/a/i;->ady(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0xa

    .line 423
    invoke-static {v0}, Landroid/support/v7/a/i;->ado(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v1, v2

    .line 424
    invoke-static {v0}, Landroid/support/v7/a/i;->adt(I)I

    move-result v0

    or-int/2addr v0, v1

    aput v0, p0, p2

    .line 420
    add-int/lit8 p2, p2, 0x1

    :pswitch_2
    if-le p2, p3, :cond_1

    goto :goto_0

    .line 405
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static adr(I)I
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x5

    .line 465
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v0, v4, v3}, Landroid/support/v7/a/i;->adz(III)I

    move-result v0

    .line 466
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1, v4, v3}, Landroid/support/v7/a/i;->adz(III)I

    move-result v1

    .line 467
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v2, v4, v3}, Landroid/support/v7/a/i;->adz(III)I

    move-result v2

    .line 468
    shl-int/lit8 v0, v0, 0xa

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    return v0
.end method

.method private static ads(I)I
    .locals 3

    .prologue
    .line 481
    invoke-static {p0}, Landroid/support/v7/a/i;->adt(I)I

    move-result v0

    invoke-static {p0}, Landroid/support/v7/a/i;->ado(I)I

    move-result v1

    invoke-static {p0}, Landroid/support/v7/a/i;->ady(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/support/v7/a/i;->adx(III)I

    move-result v0

    return v0
.end method

.method static adt(I)I
    .locals 1

    .prologue
    .line 488
    shr-int/lit8 v0, p0, 0xa

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method private adu(I)Ljava/util/List;
    .locals 4

    .prologue
    .line 150
    new-instance v0, Ljava/util/PriorityQueue;

    sget-object v1, Landroid/support/v7/a/i;->TJ:Ljava/util/Comparator;

    invoke-direct {v0, p1, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 153
    new-instance v1, Landroid/support/v7/a/f;

    iget-object v2, p0, Landroid/support/v7/a/i;->mColors:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Landroid/support/v7/a/f;-><init>(Landroid/support/v7/a/i;II)V

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 157
    invoke-direct {p0, v0, p1}, Landroid/support/v7/a/i;->adp(Ljava/util/PriorityQueue;I)V

    .line 160
    invoke-direct {p0, v0}, Landroid/support/v7/a/i;->adv(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private adv(Ljava/util/Collection;)Ljava/util/List;
    .locals 4

    .prologue
    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    return-object v1

    .line 197
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/a/f;

    .line 198
    invoke-virtual {v0}, Landroid/support/v7/a/f;->add()Landroid/support/v7/a/d;

    move-result-object v0

    .line 199
    invoke-direct {p0, v0}, Landroid/support/v7/a/i;->adB(Landroid/support/v7/a/d;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 202
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private adw(I[F)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 441
    iget-object v0, p0, Landroid/support/v7/a/i;->TM:[Landroid/support/v7/a/b;

    if-nez v0, :cond_1

    .line 448
    :cond_0
    return v1

    .line 441
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/i;->TM:[Landroid/support/v7/a/b;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 442
    iget-object v0, p0, Landroid/support/v7/a/i;->TM:[Landroid/support/v7/a/b;

    array-length v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    .line 443
    iget-object v3, p0, Landroid/support/v7/a/i;->TM:[Landroid/support/v7/a/b;

    aget-object v3, v3, v0

    invoke-interface {v3, p1, p2}, Landroid/support/v7/a/b;->acy(I[F)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 442
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 444
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method static adx(III)I
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x5

    .line 475
    invoke-static {p0, v2, v3}, Landroid/support/v7/a/i;->adz(III)I

    move-result v0

    .line 476
    invoke-static {p1, v2, v3}, Landroid/support/v7/a/i;->adz(III)I

    move-result v1

    .line 477
    invoke-static {p2, v2, v3}, Landroid/support/v7/a/i;->adz(III)I

    move-result v2

    .line 475
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method static ady(I)I
    .locals 1

    .prologue
    .line 502
    and-int/lit8 v0, p0, 0x1f

    return v0
.end method

.method private static adz(III)I
    .locals 2

    .prologue
    .line 507
    if-gt p2, p1, :cond_0

    .line 512
    sub-int v0, p1, p2

    shr-int v0, p0, v0

    .line 514
    :goto_0
    const/4 v1, 0x1

    shl-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0

    .line 509
    :cond_0
    sub-int v0, p2, p1

    shl-int v0, p0, v0

    goto :goto_0
.end method


# virtual methods
.method adC()Ljava/util/List;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Landroid/support/v7/a/i;->TK:Ljava/util/List;

    return-object v0
.end method
