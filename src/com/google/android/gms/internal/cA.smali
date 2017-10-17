.class public final Lcom/google/android/gms/internal/cA;
.super Lcom/google/android/gms/common/api/d;

# interfaces
.implements Lcom/google/android/gms/internal/cb;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private xA:J

.field private final xB:Lcom/google/android/gms/common/a;

.field private xf:Ljava/lang/Integer;

.field final xg:Ljava/util/Queue;

.field private final xh:Ljava/util/concurrent/locks/Lock;

.field private final xi:Landroid/os/Looper;

.field final xj:Lcom/google/android/gms/internal/bW;

.field final xk:Ljava/util/Map;

.field final xl:Lcom/google/android/gms/common/internal/a;

.field xm:Lcom/google/android/gms/internal/bw;

.field private final xn:Lcom/google/android/gms/common/internal/J;

.field private volatile xo:Z

.field private final xp:Lcom/google/android/gms/common/internal/S;

.field xq:Ljava/util/Set;

.field private final xr:Ljava/util/ArrayList;

.field private final xs:Lcom/google/android/gms/internal/bE;

.field private final xt:Lcom/google/android/gms/internal/cs;

.field xu:Ljava/util/Set;

.field private xv:Lcom/google/android/gms/internal/bx;

.field final xw:Ljava/util/Map;

.field private xx:J

.field private final xy:I

.field final xz:Lcom/google/android/gms/common/api/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/a;Lcom/google/android/gms/common/api/l;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;)V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/common/api/d;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/cA;->xv:Lcom/google/android/gms/internal/bx;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/cA;->xg:Ljava/util/Queue;

    const-wide/32 v2, 0x1d4c0

    iput-wide v2, p0, Lcom/google/android/gms/internal/cA;->xx:J

    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/google/android/gms/internal/cA;->xA:J

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/cA;->xq:Ljava/util/Set;

    new-instance v2, Lcom/google/android/gms/internal/bE;

    invoke-direct {v2}, Lcom/google/android/gms/internal/bE;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/cA;->xs:Lcom/google/android/gms/internal/bE;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/cA;->xf:Ljava/lang/Integer;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/cA;->xu:Ljava/util/Set;

    new-instance v2, Lcom/google/android/gms/internal/cq;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/cq;-><init>(Lcom/google/android/gms/internal/cA;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/cA;->xp:Lcom/google/android/gms/common/internal/S;

    iput-object p1, p0, Lcom/google/android/gms/internal/cA;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    new-instance v2, Lcom/google/android/gms/common/internal/J;

    iget-object v3, p0, Lcom/google/android/gms/internal/cA;->xp:Lcom/google/android/gms/common/internal/S;

    invoke-direct {v2, p3, v3}, Lcom/google/android/gms/common/internal/J;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/S;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/cA;->xn:Lcom/google/android/gms/common/internal/J;

    iput-object p3, p0, Lcom/google/android/gms/internal/cA;->xi:Landroid/os/Looper;

    new-instance v2, Lcom/google/android/gms/internal/cs;

    invoke-direct {v2, p0, p3}, Lcom/google/android/gms/internal/cs;-><init>(Lcom/google/android/gms/internal/cA;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/cA;->xt:Lcom/google/android/gms/internal/cs;

    iput-object p5, p0, Lcom/google/android/gms/internal/cA;->xB:Lcom/google/android/gms/common/a;

    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/gms/internal/cA;->xy:I

    iget v2, p0, Lcom/google/android/gms/internal/cA;->xy:I

    if-gez v2, :cond_0

    :goto_0
    iput-object p7, p0, Lcom/google/android/gms/internal/cA;->xw:Ljava/util/Map;

    iput-object p10, p0, Lcom/google/android/gms/internal/cA;->xk:Ljava/util/Map;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/internal/cA;->xr:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/gms/internal/bW;

    iget-object v3, p0, Lcom/google/android/gms/internal/cA;->xk:Ljava/util/Map;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/bW;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/cA;->xj:Lcom/google/android/gms/internal/bW;

    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    iput-object p4, p0, Lcom/google/android/gms/internal/cA;->xl:Lcom/google/android/gms/common/internal/a;

    iput-object p6, p0, Lcom/google/android/gms/internal/cA;->xz:Lcom/google/android/gms/common/api/l;

    return-void

    :cond_0
    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/cA;->xf:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/g;

    iget-object v4, p0, Lcom/google/android/gms/internal/cA;->xn:Lcom/google/android/gms/common/internal/J;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/J;->iR(Lcom/google/android/gms/common/api/g;)V

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/f;

    iget-object v4, p0, Lcom/google/android/gms/internal/cA;->xn:Lcom/google/android/gms/common/internal/J;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/J;->iQ(Lcom/google/android/gms/common/api/f;)V

    goto :goto_2
.end method

.method static Ck(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "SIGN_IN_MODE_NONE"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "SIGN_IN_MODE_REQUIRED"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "SIGN_IN_MODE_OPTIONAL"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private Cl(I)V
    .locals 12

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->xf:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->xf:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->xv:Lcom/google/android/gms/internal/bx;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->xk:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xf:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/cf;

    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    iget-object v4, p0, Lcom/google/android/gms/internal/cA;->xi:Landroid/os/Looper;

    iget-object v5, p0, Lcom/google/android/gms/internal/cA;->xB:Lcom/google/android/gms/common/a;

    iget-object v6, p0, Lcom/google/android/gms/internal/cA;->xk:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/android/gms/internal/cA;->xl:Lcom/google/android/gms/common/internal/a;

    iget-object v8, p0, Lcom/google/android/gms/internal/cA;->xw:Ljava/util/Map;

    iget-object v9, p0, Lcom/google/android/gms/internal/cA;->xz:Lcom/google/android/gms/common/api/l;

    iget-object v10, p0, Lcom/google/android/gms/internal/cA;->xr:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v11, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/cf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cA;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/f;Ljava/util/Map;Lcom/google/android/gms/common/internal/a;Ljava/util/Map;Lcom/google/android/gms/common/api/l;Ljava/util/ArrayList;Lcom/google/android/gms/internal/cb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cA;->xv:Lcom/google/android/gms/internal/bx;

    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/cA;->xf:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Lcom/google/android/gms/internal/cA;->Ck(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cA;->xf:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/cA;->Ck(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x33

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Cannot use sign-in mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ". Mode was already set to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->dZ()Z

    move-result v5

    if-nez v5, :cond_5

    :goto_2
    invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->eh()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_3
    move v1, v0

    goto/16 :goto_1

    :cond_5
    move v2, v3

    goto :goto_2

    :cond_6
    move v0, v3

    goto :goto_3

    :pswitch_1
    if-eqz v2, :cond_7

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    iget-object v3, p0, Lcom/google/android/gms/internal/cA;->xi:Landroid/os/Looper;

    iget-object v4, p0, Lcom/google/android/gms/internal/cA;->xB:Lcom/google/android/gms/common/a;

    iget-object v5, p0, Lcom/google/android/gms/internal/cA;->xk:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/android/gms/internal/cA;->xl:Lcom/google/android/gms/common/internal/a;

    iget-object v7, p0, Lcom/google/android/gms/internal/cA;->xw:Ljava/util/Map;

    iget-object v8, p0, Lcom/google/android/gms/internal/cA;->xz:Lcom/google/android/gms/common/api/l;

    iget-object v9, p0, Lcom/google/android/gms/internal/cA;->xr:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-static/range {v0 .. v9}, Lcom/google/android/gms/internal/bv;->yM(Landroid/content/Context;Lcom/google/android/gms/internal/cA;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/f;Ljava/util/Map;Lcom/google/android/gms/common/internal/a;Ljava/util/Map;Lcom/google/android/gms/common/api/l;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/bv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cA;->xv:Lcom/google/android/gms/internal/bx;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static Cm(Ljava/lang/Iterable;Z)I
    .locals 6

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v2, :cond_3

    const/4 v0, 0x3

    return v0

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->dZ()Z

    move-result v5

    if-nez v5, :cond_1

    :goto_1
    invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->eh()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    if-nez v1, :cond_5

    :cond_4
    return v3

    :cond_5
    if-eqz p1, :cond_4

    const/4 v0, 0x2

    return v0
.end method

.method static synthetic Cn(Lcom/google/android/gms/internal/cA;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/cA;->Cp()V

    return-void
.end method

.method static synthetic Co(Lcom/google/android/gms/internal/cA;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/cA;->Cz()V

    return-void
.end method

.method private Cp()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cA;->Ct()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cA;->Cy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private Cy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xn:Lcom/google/android/gms/common/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/J;->iM()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xv:Lcom/google/android/gms/internal/bx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bx;->yN()V

    return-void
.end method

.method private Cz()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cA;->Cr()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cA;->Cy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public Bs(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xB:Lcom/google/android/gms/common/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->nu()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/a;->nP(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cA;->Cr()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cA;->Ct()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xn:Lcom/google/android/gms/common/internal/J;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/J;->iT(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xn:Lcom/google/android/gms/common/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/J;->iO()V

    goto :goto_1
.end method

.method public Bt(Landroid/os/Bundle;)V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xg:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xn:Lcom/google/android/gms/common/internal/J;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/J;->iP(Landroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xg:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/b;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cA;->Cs(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;

    goto :goto_0
.end method

.method public Bu(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xj:Lcom/google/android/gms/internal/bW;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bW;->By()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xn:Lcom/google/android/gms/common/internal/J;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/J;->iN(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xn:Lcom/google/android/gms/common/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/J;->iO()V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    :goto_1
    return-void

    :cond_1
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cA;->CA()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/cA;->Cy()V

    goto :goto_1
.end method

.method CA()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cA;->Cr()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/google/android/gms/internal/cA;->xo:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xm:Lcom/google/android/gms/internal/bw;

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xt:Lcom/google/android/gms/internal/cs;

    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->xt:Lcom/google/android/gms/internal/cs;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/cs;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/cA;->xx:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/cs;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xt:Lcom/google/android/gms/internal/cs;

    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->xt:Lcom/google/android/gms/internal/cs;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cs;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/cA;->xA:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/cs;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xB:Lcom/google/android/gms/common/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ck;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ck;-><init>(Lcom/google/android/gms/internal/cA;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/a;->nz(Landroid/content/Context;Lcom/google/android/gms/internal/by;)Lcom/google/android/gms/internal/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cA;->xm:Lcom/google/android/gms/internal/bw;

    goto :goto_0
.end method

.method CB()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->xu:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->xu:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public Cq()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->xv:Lcom/google/android/gms/internal/bx;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->xv:Lcom/google/android/gms/internal/bx;

    invoke-interface {v1}, Lcom/google/android/gms/internal/bx;->zb()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method Cr()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cA;->xo:Z

    return v0
.end method

.method public Cs(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/b;->rm()Lcom/google/android/gms/common/api/j;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    const-string/jumbo v1, "This task can not be executed (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->hq(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xk:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/b;->rm()Lcom/google/android/gms/common/api/j;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/b;->ro()Lcom/google/android/gms/common/api/h;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "the API"

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x41

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "GoogleApiClient is not configured to use "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " required for this call."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/l;->hq(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xv:Lcom/google/android/gms/internal/bx;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cA;->Cr()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xv:Lcom/google/android/gms/internal/bx;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/bx;->zc(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/b;->ro()Lcom/google/android/gms/common/api/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/h;->dY()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xg:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xg:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xg:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/b;

    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->xj:Lcom/google/android/gms/internal/bW;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/bW;->BB(Lcom/google/android/gms/internal/b;)V

    sget-object v1, Lcom/google/android/gms/common/api/Status;->ea:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/b;->rs(Lcom/google/android/gms/common/api/Status;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method Ct()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cA;->Cr()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/cA;->xo:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xt:Lcom/google/android/gms/internal/cs;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cs;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xt:Lcom/google/android/gms/internal/cs;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/cs;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xm:Lcom/google/android/gms/internal/bw;

    if-nez v0, :cond_1

    :goto_0
    return v2

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xm:Lcom/google/android/gms/internal/bw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bw;->zp()V

    iput-object v3, p0, Lcom/google/android/gms/internal/cA;->xm:Lcom/google/android/gms/internal/bw;

    goto :goto_0
.end method

.method public Cu()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method Cv(Lcom/google/android/gms/common/api/j;)Lcom/google/android/gms/common/api/i;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xk:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/i;

    const-string/jumbo v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->ho(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public Cw(I)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Illegal sign-in mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->hq(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cA;->Cl(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/cA;->Cy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method Cx()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string/jumbo v2, ""

    invoke-virtual {p0, v2, v3, v1, v3}, Lcom/google/android/gms/internal/cA;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dA(Lcom/google/android/gms/common/api/j;)Lcom/google/android/gms/common/api/i;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xk:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/i;

    const-string/jumbo v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->ho(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public dB(Lcom/google/android/gms/internal/d;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xu:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xu:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cA;->CB()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v1, "GoogleApiClientImpl"

    const-string/jumbo v2, "Attempted to remove pending transform when no transforms are registered."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v1, "GoogleApiClientImpl"

    const-string/jumbo v2, "Failed to remove pending transform - this may lead to memory leaks!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xv:Lcom/google/android/gms/internal/bx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bx;->yQ()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public dC(Lcom/google/android/gms/internal/d;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xu:Ljava/util/Set;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xu:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cA;->xu:Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public du()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xi:Landroid/os/Looper;

    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "mContext="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "mResuming="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/cA;->xo:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mWorkQueue.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->xg:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xj:Lcom/google/android/gms/internal/bW;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/bW;->Bx(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xv:Lcom/google/android/gms/internal/bx;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xv:Lcom/google/android/gms/internal/bx;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/bx;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dv()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/cA;->xy:I

    if-gez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xf:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xf:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xf:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cA;->Cw(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->xf:Ljava/lang/Integer;

    if-nez v1, :cond_1

    :goto_1
    const-string/jumbo v1, "Sign-in mode should have been set explicitly by auto-manage."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->hv(ZLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xk:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cA;->Cm(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cA;->xf:Ljava/lang/Integer;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public dw(Lcom/google/android/gms/common/api/f;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xn:Lcom/google/android/gms/common/internal/J;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/J;->iS(Lcom/google/android/gms/common/api/f;)V

    return-void
.end method

.method public dx()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xj:Lcom/google/android/gms/internal/bW;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bW;->BE()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xv:Lcom/google/android/gms/internal/bx;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xs:Lcom/google/android/gms/internal/bE;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bE;->zR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xg:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xg:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xv:Lcom/google/android/gms/internal/bx;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cA;->Ct()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xn:Lcom/google/android/gms/common/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/J;->iO()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xv:Lcom/google/android/gms/internal/bx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bx;->yV()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/b;->rt(Lcom/google/android/gms/internal/g;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->cancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public dy(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/b;->rm()Lcom/google/android/gms/common/api/j;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "This task can not be enqueued (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->hq(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xk:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/b;->rm()Lcom/google/android/gms/common/api/j;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/b;->ro()Lcom/google/android/gms/common/api/h;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "the API"

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x41

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "GoogleApiClient is not configured to use "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " required for this call."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/l;->hq(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xv:Lcom/google/android/gms/internal/bx;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xv:Lcom/google/android/gms/internal/bx;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/bx;->yX(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/b;->ro()Lcom/google/android/gms/common/api/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/h;->dY()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xg:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->xh:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public dz(Lcom/google/android/gms/common/api/f;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->xn:Lcom/google/android/gms/common/internal/J;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/J;->iQ(Lcom/google/android/gms/common/api/f;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->mContext:Landroid/content/Context;

    return-object v0
.end method
