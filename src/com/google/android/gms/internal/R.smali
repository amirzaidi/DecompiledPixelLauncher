.class public final Lcom/google/android/gms/internal/R;
.super Lcom/google/android/gms/internal/aU;


# static fields
.field public static final qR:Lcom/google/android/gms/internal/aI;

.field private static final qU:[Lcom/google/android/gms/internal/R;


# instance fields
.field public qS:Lcom/google/android/gms/internal/W;

.field public qT:Lcom/google/android/gms/internal/K;

.field public qV:Ljava/lang/String;

.field public qW:I

.field public qX:I

.field public qY:I

.field public qZ:Lcom/google/android/gms/internal/E;

.field public ra:[Ljava/lang/String;

.field public rb:Lcom/google/android/gms/internal/X;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/google/android/gms/internal/R;

    const/16 v1, 0xb

    const-wide/32 v2, 0x32f6c5ca

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/internal/aI;->vp(ILjava/lang/Class;J)Lcom/google/android/gms/internal/aI;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/R;->qR:Lcom/google/android/gms/internal/aI;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/R;

    sput-object v0, Lcom/google/android/gms/internal/R;->qU:[Lcom/google/android/gms/internal/R;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aU;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/R;->ty()Lcom/google/android/gms/internal/R;

    return-void
.end method

.method public static tA([B)Lcom/google/android/gms/internal/R;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/R;

    invoke-direct {v0}, Lcom/google/android/gms/internal/R;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/aC;->uU(Lcom/google/android/gms/internal/aC;[B)Lcom/google/android/gms/internal/aC;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/R;

    return-object v0
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/aU;->computeSerializedSize()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/R;->qV:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/R;->qS:Lcom/google/android/gms/internal/W;

    if-nez v2, :cond_2

    :goto_1
    iget v2, p0, Lcom/google/android/gms/internal/R;->qW:I

    if-nez v2, :cond_3

    :goto_2
    iget v2, p0, Lcom/google/android/gms/internal/R;->qX:I

    if-nez v2, :cond_4

    :goto_3
    iget v2, p0, Lcom/google/android/gms/internal/R;->qY:I

    if-nez v2, :cond_5

    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/R;->rb:Lcom/google/android/gms/internal/X;

    if-nez v2, :cond_6

    :goto_5
    iget-object v2, p0, Lcom/google/android/gms/internal/R;->qZ:Lcom/google/android/gms/internal/E;

    if-nez v2, :cond_7

    :goto_6
    iget-object v2, p0, Lcom/google/android/gms/internal/R;->ra:[Ljava/lang/String;

    if-nez v2, :cond_8

    :cond_0
    :goto_7
    iget-object v1, p0, Lcom/google/android/gms/internal/R;->qT:Lcom/google/android/gms/internal/K;

    if-nez v1, :cond_b

    :goto_8
    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/R;->qV:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/aP;->wk(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/R;->qS:Lcom/google/android/gms/internal/W;

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/aP;->wK(ILcom/google/android/gms/internal/aC;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/google/android/gms/internal/R;->qW:I

    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/aP;->wm(II)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_2

    :cond_4
    iget v2, p0, Lcom/google/android/gms/internal/R;->qX:I

    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/aP;->wm(II)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_3

    :cond_5
    iget v2, p0, Lcom/google/android/gms/internal/R;->qY:I

    const/4 v3, 0x6

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/aP;->wm(II)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/R;->rb:Lcom/google/android/gms/internal/X;

    const/4 v3, 0x7

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/aP;->wK(ILcom/google/android/gms/internal/aC;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_5

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/R;->qZ:Lcom/google/android/gms/internal/E;

    const/16 v3, 0x8

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/aP;->wK(ILcom/google/android/gms/internal/aC;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_6

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/R;->ra:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_0

    move v2, v1

    move v3, v1

    :goto_9
    iget-object v4, p0, Lcom/google/android/gms/internal/R;->ra:[Ljava/lang/String;

    array-length v4, v4

    if-lt v1, v4, :cond_9

    add-int/2addr v0, v2

    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    goto :goto_7

    :cond_9
    iget-object v4, p0, Lcom/google/android/gms/internal/R;->ra:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-nez v4, :cond_a

    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_a
    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/aP;->wh(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_a

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/R;->qT:Lcom/google/android/gms/internal/K;

    const/16 v2, 0xa

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aP;->wK(ILcom/google/android/gms/internal/aC;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_8
.end method

.method public sc(Lcom/google/android/gms/internal/aP;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/R;->qV:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/R;->qS:Lcom/google/android/gms/internal/W;

    if-nez v1, :cond_2

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/R;->qW:I

    if-nez v1, :cond_3

    :goto_2
    iget v1, p0, Lcom/google/android/gms/internal/R;->qX:I

    if-nez v1, :cond_4

    :goto_3
    iget v1, p0, Lcom/google/android/gms/internal/R;->qY:I

    if-nez v1, :cond_5

    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/internal/R;->rb:Lcom/google/android/gms/internal/X;

    if-nez v1, :cond_6

    :goto_5
    iget-object v1, p0, Lcom/google/android/gms/internal/R;->qZ:Lcom/google/android/gms/internal/E;

    if-nez v1, :cond_7

    :goto_6
    iget-object v1, p0, Lcom/google/android/gms/internal/R;->ra:[Ljava/lang/String;

    if-nez v1, :cond_8

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/R;->qT:Lcom/google/android/gms/internal/K;

    if-nez v0, :cond_a

    :goto_7
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/aU;->sc(Lcom/google/android/gms/internal/aP;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/R;->qV:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/aP;->vT(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/R;->qS:Lcom/google/android/gms/internal/W;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/aP;->wP(ILcom/google/android/gms/internal/aC;)V

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/R;->qW:I

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/aP;->vW(II)V

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/R;->qX:I

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/aP;->vW(II)V

    goto :goto_3

    :cond_5
    iget v1, p0, Lcom/google/android/gms/internal/R;->qY:I

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/aP;->vW(II)V

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/R;->rb:Lcom/google/android/gms/internal/X;

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/aP;->wP(ILcom/google/android/gms/internal/aC;)V

    goto :goto_5

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/R;->qZ:Lcom/google/android/gms/internal/E;

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/aP;->wP(ILcom/google/android/gms/internal/aC;)V

    goto :goto_6

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/R;->ra:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    :goto_8
    iget-object v1, p0, Lcom/google/android/gms/internal/R;->ra:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/R;->ra:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_9

    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_9
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/aP;->vT(ILjava/lang/String;)V

    goto :goto_9

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/R;->qT:Lcom/google/android/gms/internal/K;

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aP;->wP(ILcom/google/android/gms/internal/aC;)V

    goto :goto_7
.end method

.method public synthetic se(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/aC;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/R;->tz(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/R;

    move-result-object v0

    return-object v0
.end method

.method public ty()Lcom/google/android/gms/internal/R;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/R;->qV:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/R;->qS:Lcom/google/android/gms/internal/W;

    iput v2, p0, Lcom/google/android/gms/internal/R;->qW:I

    iput v2, p0, Lcom/google/android/gms/internal/R;->qX:I

    iput v2, p0, Lcom/google/android/gms/internal/R;->qY:I

    iput-object v1, p0, Lcom/google/android/gms/internal/R;->rb:Lcom/google/android/gms/internal/X;

    iput-object v1, p0, Lcom/google/android/gms/internal/R;->qZ:Lcom/google/android/gms/internal/E;

    sget-object v0, Lcom/google/android/gms/internal/aH;->sP:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/R;->ra:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/R;->qT:Lcom/google/android/gms/internal/K;

    iput-object v1, p0, Lcom/google/android/gms/internal/R;->tz:Lcom/google/android/gms/internal/aL;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/R;->sH:I

    return-object p0
.end method

.method public tz(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/R;
    .locals 4

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xF()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/aU;->xs(Lcom/google/android/gms/internal/aY;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xZ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/R;->qV:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/R;->qS:Lcom/google/android/gms/internal/W;

    if-eqz v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/R;->qS:Lcom/google/android/gms/internal/W;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/aY;->xP(Lcom/google/android/gms/internal/aC;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/W;

    invoke-direct {v0}, Lcom/google/android/gms/internal/W;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/R;->qS:Lcom/google/android/gms/internal/W;

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/internal/R;->qW:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    :sswitch_5
    iput v0, p0, Lcom/google/android/gms/internal/R;->qX:I

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iput v0, p0, Lcom/google/android/gms/internal/R;->qY:I

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/R;->rb:Lcom/google/android/gms/internal/X;

    if-eqz v0, :cond_2

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/R;->rb:Lcom/google/android/gms/internal/X;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/aY;->xP(Lcom/google/android/gms/internal/aC;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/X;

    invoke-direct {v0}, Lcom/google/android/gms/internal/X;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/R;->rb:Lcom/google/android/gms/internal/X;

    goto :goto_2

    :sswitch_8
    iget-object v0, p0, Lcom/google/android/gms/internal/R;->qZ:Lcom/google/android/gms/internal/E;

    if-eqz v0, :cond_3

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/R;->qZ:Lcom/google/android/gms/internal/E;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/aY;->xP(Lcom/google/android/gms/internal/aC;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/E;

    invoke-direct {v0}, Lcom/google/android/gms/internal/E;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/R;->qZ:Lcom/google/android/gms/internal/E;

    goto :goto_3

    :sswitch_9
    const/16 v0, 0x4a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aH;->vj(Lcom/google/android/gms/internal/aY;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/R;->ra:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/R;->ra:[Ljava/lang/String;

    array-length v0, v0

    :goto_4
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-nez v0, :cond_5

    :goto_5
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xZ()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/R;->ra:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_4

    :cond_5
    iget-object v3, p0, Lcom/google/android/gms/internal/R;->ra:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xZ()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xF()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :sswitch_a
    iget-object v0, p0, Lcom/google/android/gms/internal/R;->qT:Lcom/google/android/gms/internal/K;

    if-eqz v0, :cond_7

    :goto_6
    iget-object v0, p0, Lcom/google/android/gms/internal/R;->qT:Lcom/google/android/gms/internal/K;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/aY;->xP(Lcom/google/android/gms/internal/aC;)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/K;

    invoke-direct {v0}, Lcom/google/android/gms/internal/K;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/R;->qT:Lcom/google/android/gms/internal/K;

    goto :goto_6

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x20 -> :sswitch_3
        0x28 -> :sswitch_4
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x4 -> :sswitch_5
        0x5 -> :sswitch_5
        0x6 -> :sswitch_5
        0x7 -> :sswitch_5
        0x8 -> :sswitch_5
        0x9 -> :sswitch_5
        0xa -> :sswitch_5
        0xb -> :sswitch_5
        0xc -> :sswitch_5
        0xd -> :sswitch_5
        0xe -> :sswitch_5
        0xf -> :sswitch_5
        0x10 -> :sswitch_5
        0x11 -> :sswitch_5
        0x12 -> :sswitch_5
        0x13 -> :sswitch_5
        0x14 -> :sswitch_5
        0x15 -> :sswitch_5
        0x16 -> :sswitch_5
        0x17 -> :sswitch_5
        0x18 -> :sswitch_5
        0x19 -> :sswitch_5
        0x1a -> :sswitch_5
        0x1b -> :sswitch_5
        0x1c -> :sswitch_5
        0x1d -> :sswitch_5
        0x1e -> :sswitch_5
        0x1f -> :sswitch_5
        0x20 -> :sswitch_5
        0x21 -> :sswitch_5
        0x22 -> :sswitch_5
        0x23 -> :sswitch_5
        0x24 -> :sswitch_5
        0x2710 -> :sswitch_5
        0x2711 -> :sswitch_5
        0x2712 -> :sswitch_5
        0x2713 -> :sswitch_5
        0x2714 -> :sswitch_5
        0x2715 -> :sswitch_5
        0x2716 -> :sswitch_5
        0x2717 -> :sswitch_5
        0x1869f -> :sswitch_5
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
