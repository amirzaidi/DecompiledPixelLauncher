.class public abstract Landroid/support/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/a/f;


# static fields
.field public static final agD:Landroid/support/a/i;

.field public static final agE:Landroid/support/a/i;

.field public static final agF:Landroid/support/a/i;

.field public static final agH:Landroid/support/a/i;

.field public static final agJ:Landroid/support/a/i;

.field public static final agK:Landroid/support/a/i;

.field public static final agN:Landroid/support/a/i;

.field public static final agO:Landroid/support/a/i;

.field public static final agP:Landroid/support/a/i;

.field public static final agR:Landroid/support/a/i;

.field public static final agV:Landroid/support/a/i;

.field public static final agW:Landroid/support/a/i;

.field public static final agX:Landroid/support/a/i;

.field public static final ahb:Landroid/support/a/i;


# instance fields
.field agG:F

.field agI:F

.field agL:F

.field final agM:Ljava/lang/Object;

.field private agQ:J

.field private final agS:Ljava/util/ArrayList;

.field agT:Z

.field agU:Z

.field private final agY:Ljava/util/ArrayList;

.field final agZ:Landroid/support/a/d;

.field private aha:F

.field mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Landroid/support/a/j;

    const-string/jumbo v1, "translationX"

    invoke-direct {v0, v1}, Landroid/support/a/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/b;->agN:Landroid/support/a/i;

    .line 70
    new-instance v0, Landroid/support/a/p;

    const-string/jumbo v1, "translationY"

    invoke-direct {v0, v1}, Landroid/support/a/p;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/b;->agJ:Landroid/support/a/i;

    .line 85
    new-instance v0, Landroid/support/a/y;

    const-string/jumbo v1, "translationZ"

    invoke-direct {v0, v1}, Landroid/support/a/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/b;->agV:Landroid/support/a/i;

    .line 100
    new-instance v0, Landroid/support/a/v;

    const-string/jumbo v1, "scaleX"

    invoke-direct {v0, v1}, Landroid/support/a/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/b;->agP:Landroid/support/a/i;

    .line 115
    new-instance v0, Landroid/support/a/t;

    const-string/jumbo v1, "scaleY"

    invoke-direct {v0, v1}, Landroid/support/a/t;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/b;->agK:Landroid/support/a/i;

    .line 130
    new-instance v0, Landroid/support/a/w;

    const-string/jumbo v1, "rotation"

    invoke-direct {v0, v1}, Landroid/support/a/w;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/b;->ahb:Landroid/support/a/i;

    .line 145
    new-instance v0, Landroid/support/a/o;

    const-string/jumbo v1, "rotationX"

    invoke-direct {v0, v1}, Landroid/support/a/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/b;->agH:Landroid/support/a/i;

    .line 160
    new-instance v0, Landroid/support/a/A;

    const-string/jumbo v1, "rotationY"

    invoke-direct {v0, v1}, Landroid/support/a/A;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/b;->agD:Landroid/support/a/i;

    .line 175
    new-instance v0, Landroid/support/a/r;

    const-string/jumbo v1, "x"

    invoke-direct {v0, v1}, Landroid/support/a/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/b;->agR:Landroid/support/a/i;

    .line 190
    new-instance v0, Landroid/support/a/s;

    const-string/jumbo v1, "y"

    invoke-direct {v0, v1}, Landroid/support/a/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/b;->agO:Landroid/support/a/i;

    .line 205
    new-instance v0, Landroid/support/a/u;

    const-string/jumbo v1, "z"

    invoke-direct {v0, v1}, Landroid/support/a/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/b;->agE:Landroid/support/a/i;

    .line 220
    new-instance v0, Landroid/support/a/z;

    const-string/jumbo v1, "alpha"

    invoke-direct {v0, v1}, Landroid/support/a/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/b;->agW:Landroid/support/a/i;

    .line 236
    new-instance v0, Landroid/support/a/q;

    const-string/jumbo v1, "scrollX"

    invoke-direct {v0, v1}, Landroid/support/a/q;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/b;->agX:Landroid/support/a/i;

    .line 251
    new-instance v0, Landroid/support/a/x;

    const-string/jumbo v1, "scrollY"

    invoke-direct {v0, v1}, Landroid/support/a/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/b;->agF:Landroid/support/a/i;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Landroid/support/a/d;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/high16 v2, 0x3b800000    # 0.00390625f

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/a/b;->mVelocity:F

    .line 290
    iput v1, p0, Landroid/support/a/b;->agL:F

    .line 294
    iput-boolean v3, p0, Landroid/support/a/b;->agU:Z

    .line 303
    iput-boolean v3, p0, Landroid/support/a/b;->agT:Z

    .line 306
    iput v1, p0, Landroid/support/a/b;->agG:F

    .line 307
    iget v0, p0, Landroid/support/a/b;->agG:F

    neg-float v0, v0

    iput v0, p0, Landroid/support/a/b;->agI:F

    .line 310
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/a/b;->agQ:J

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/a/b;->agY:Ljava/util/ArrayList;

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/a/b;->agS:Ljava/util/ArrayList;

    .line 355
    iput-object p1, p0, Landroid/support/a/b;->agM:Ljava/lang/Object;

    .line 356
    iput-object p2, p0, Landroid/support/a/b;->agZ:Landroid/support/a/d;

    .line 357
    iget-object v0, p0, Landroid/support/a/b;->agZ:Landroid/support/a/d;

    sget-object v1, Landroid/support/a/b;->ahb:Landroid/support/a/i;

    if-ne v0, v1, :cond_1

    .line 359
    :cond_0
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Landroid/support/a/b;->aha:F

    .line 367
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-object v0, p0, Landroid/support/a/b;->agZ:Landroid/support/a/d;

    sget-object v1, Landroid/support/a/b;->agH:Landroid/support/a/i;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/a/b;->agZ:Landroid/support/a/d;

    sget-object v1, Landroid/support/a/b;->agD:Landroid/support/a/i;

    if-eq v0, v1, :cond_0

    .line 360
    iget-object v0, p0, Landroid/support/a/b;->agZ:Landroid/support/a/d;

    sget-object v1, Landroid/support/a/b;->agW:Landroid/support/a/i;

    if-eq v0, v1, :cond_3

    .line 362
    iget-object v0, p0, Landroid/support/a/b;->agZ:Landroid/support/a/d;

    sget-object v1, Landroid/support/a/b;->agP:Landroid/support/a/i;

    if-ne v0, v1, :cond_4

    .line 363
    :cond_2
    iput v2, p0, Landroid/support/a/b;->aha:F

    goto :goto_0

    .line 361
    :cond_3
    iput v2, p0, Landroid/support/a/b;->aha:F

    goto :goto_0

    .line 362
    :cond_4
    iget-object v0, p0, Landroid/support/a/b;->agZ:Landroid/support/a/d;

    sget-object v1, Landroid/support/a/b;->agK:Landroid/support/a/i;

    if-eq v0, v1, :cond_2

    .line 365
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/a/b;->aha:F

    goto :goto_0
.end method

.method private auc()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 611
    iget-boolean v2, p0, Landroid/support/a/b;->agT:Z

    if-eqz v2, :cond_0

    .line 623
    :goto_0
    return-void

    .line 612
    :cond_0
    iput-boolean v0, p0, Landroid/support/a/b;->agT:Z

    .line 613
    iget-boolean v2, p0, Landroid/support/a/b;->agU:Z

    if-eqz v2, :cond_2

    .line 617
    :goto_1
    iget v2, p0, Landroid/support/a/b;->agL:F

    iget v3, p0, Landroid/support/a/b;->agG:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    :goto_2
    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/a/b;->agL:F

    iget v1, p0, Landroid/support/a/b;->agI:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 618
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Starting value need to be in between min value and max value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :cond_2
    invoke-direct {p0}, Landroid/support/a/b;->aud()F

    move-result v2

    iput v2, p0, Landroid/support/a/b;->agL:F

    goto :goto_1

    :cond_3
    move v0, v1

    .line 617
    goto :goto_2

    .line 621
    :cond_4
    invoke-static {}, Landroid/support/a/k;->getInstance()Landroid/support/a/k;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p0, v2, v3}, Landroid/support/a/k;->auE(Landroid/support/a/f;J)V

    goto :goto_0
.end method

.method private aud()F
    .locals 2

    .prologue
    .line 707
    iget-object v0, p0, Landroid/support/a/b;->agZ:Landroid/support/a/d;

    iget-object v1, p0, Landroid/support/a/b;->agM:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/a/d;->auv(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method private auf(Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 671
    iput-boolean v0, p0, Landroid/support/a/b;->agT:Z

    .line 672
    invoke-static {}, Landroid/support/a/k;->getInstance()Landroid/support/a/k;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/a/k;->auD(Landroid/support/a/f;)V

    .line 673
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/support/a/b;->agQ:J

    .line 674
    iput-boolean v0, p0, Landroid/support/a/b;->agU:Z

    move v1, v0

    .line 675
    :goto_0
    iget-object v0, p0, Landroid/support/a/b;->agY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 680
    iget-object v0, p0, Landroid/support/a/b;->agY:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/support/a/b;->aui(Ljava/util/ArrayList;)V

    .line 681
    return-void

    .line 676
    :cond_0
    iget-object v0, p0, Landroid/support/a/b;->agY:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 675
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 677
    :cond_1
    iget-object v0, p0, Landroid/support/a/b;->agY:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/a/h;

    iget v2, p0, Landroid/support/a/b;->agL:F

    iget v3, p0, Landroid/support/a/b;->mVelocity:F

    invoke-interface {v0, p0, p1, v2, v3}, Landroid/support/a/h;->aux(Landroid/support/a/b;ZFF)V

    goto :goto_1
.end method

.method private static aui(Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 545
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    .line 550
    return-void

    .line 546
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 547
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method abstract atZ(J)Z
.end method

.method public aub(F)Landroid/support/a/b;
    .locals 0

    .prologue
    .line 431
    iput p1, p0, Landroid/support/a/b;->agI:F

    .line 432
    return-object p0
.end method

.method public aue(F)Landroid/support/a/b;
    .locals 0

    .prologue
    .line 418
    iput p1, p0, Landroid/support/a/b;->agG:F

    .line 419
    return-object p0
.end method

.method public aug(F)Landroid/support/a/b;
    .locals 0

    .prologue
    .line 401
    iput p1, p0, Landroid/support/a/b;->mVelocity:F

    .line 402
    return-object p0
.end method

.method public auh(F)Landroid/support/a/b;
    .locals 1

    .prologue
    .line 377
    iput p1, p0, Landroid/support/a/b;->agL:F

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/a/b;->agU:Z

    .line 379
    return-object p0
.end method

.method auj()F
    .locals 2

    .prologue
    .line 700
    iget v0, p0, Landroid/support/a/b;->aha:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    return v0
.end method

.method public auk()Z
    .locals 1

    .prologue
    .line 603
    iget-boolean v0, p0, Landroid/support/a/b;->agT:Z

    return v0
.end method

.method public aul(J)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 636
    iget-wide v0, p0, Landroid/support/a/b;->agQ:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 638
    iput-wide p1, p0, Landroid/support/a/b;->agQ:J

    .line 639
    iget v0, p0, Landroid/support/a/b;->agL:F

    invoke-virtual {p0, v0}, Landroid/support/a/b;->aum(F)V

    .line 640
    return v4

    .line 642
    :cond_0
    iget-wide v0, p0, Landroid/support/a/b;->agQ:J

    sub-long v0, p1, v0

    .line 643
    iput-wide p1, p0, Landroid/support/a/b;->agQ:J

    .line 644
    invoke-virtual {p0, v0, v1}, Landroid/support/a/b;->atZ(J)Z

    move-result v0

    .line 646
    iget v1, p0, Landroid/support/a/b;->agL:F

    iget v2, p0, Landroid/support/a/b;->agG:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Landroid/support/a/b;->agL:F

    .line 647
    iget v1, p0, Landroid/support/a/b;->agL:F

    iget v2, p0, Landroid/support/a/b;->agI:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Landroid/support/a/b;->agL:F

    .line 649
    iget v1, p0, Landroid/support/a/b;->agL:F

    invoke-virtual {p0, v1}, Landroid/support/a/b;->aum(F)V

    .line 651
    if-nez v0, :cond_1

    .line 654
    :goto_0
    return v0

    .line 652
    :cond_1
    invoke-direct {p0, v4}, Landroid/support/a/b;->auf(Z)V

    goto :goto_0
.end method

.method aum(F)V
    .locals 4

    .prologue
    .line 687
    iget-object v0, p0, Landroid/support/a/b;->agZ:Landroid/support/a/d;

    iget-object v1, p0, Landroid/support/a/b;->agM:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/a/d;->auu(Ljava/lang/Object;F)V

    .line 688
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/a/b;->agS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 693
    iget-object v0, p0, Landroid/support/a/b;->agS:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/support/a/b;->aui(Ljava/util/ArrayList;)V

    .line 694
    return-void

    .line 689
    :cond_0
    iget-object v0, p0, Landroid/support/a/b;->agS:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 688
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 690
    :cond_1
    iget-object v0, p0, Landroid/support/a/b;->agS:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/a/g;

    iget v2, p0, Landroid/support/a/b;->agL:F

    iget v3, p0, Landroid/support/a/b;->mVelocity:F

    invoke-interface {v0, p0, v2, v3}, Landroid/support/a/g;->auw(Landroid/support/a/b;FF)V

    goto :goto_1
.end method

.method public start()V
    .locals 2

    .prologue
    .line 574
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 577
    iget-boolean v0, p0, Landroid/support/a/b;->agT:Z

    if-eqz v0, :cond_1

    .line 580
    :goto_0
    return-void

    .line 575
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "Animations may only be started on the main thread"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_1
    invoke-direct {p0}, Landroid/support/a/b;->auc()V

    goto :goto_0
.end method
