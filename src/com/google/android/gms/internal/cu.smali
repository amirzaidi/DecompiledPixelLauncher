.class public final Lcom/google/android/gms/internal/cu;
.super Lcom/google/android/gms/common/api/a;

# interfaces
.implements Lcom/google/android/gms/internal/bV;


# instance fields
.field private final mContext:Landroid/content/Context;

.field xA:Ljava/util/Set;

.field private xB:Lcom/google/android/gms/internal/br;

.field final xC:Ljava/util/Map;

.field private xD:J

.field private final xE:I

.field final xF:Lcom/google/android/gms/common/api/j;

.field private xG:J

.field private final xH:Lcom/google/android/gms/common/a;

.field private xl:Ljava/lang/Integer;

.field final xm:Ljava/util/Queue;

.field private final xn:Ljava/util/concurrent/locks/Lock;

.field private final xo:Landroid/os/Looper;

.field final xp:Lcom/google/android/gms/internal/bQ;

.field final xq:Ljava/util/Map;

.field final xr:Lcom/google/android/gms/common/internal/a;

.field xs:Lcom/google/android/gms/internal/bq;

.field private final xt:Lcom/google/android/gms/common/internal/J;

.field private volatile xu:Z

.field private final xv:Lcom/google/android/gms/common/internal/S;

.field xw:Ljava/util/Set;

.field private final xx:Ljava/util/ArrayList;

.field private final xy:Lcom/google/android/gms/internal/by;

.field private final xz:Lcom/google/android/gms/internal/cm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/a;Lcom/google/android/gms/common/api/j;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;)V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/cu;->xB:Lcom/google/android/gms/internal/br;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/cu;->xm:Ljava/util/Queue;

    const-wide/32 v2, 0x1d4c0

    iput-wide v2, p0, Lcom/google/android/gms/internal/cu;->xD:J

    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/google/android/gms/internal/cu;->xG:J

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/cu;->xw:Ljava/util/Set;

    new-instance v2, Lcom/google/android/gms/internal/by;

    invoke-direct {v2}, Lcom/google/android/gms/internal/by;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/cu;->xy:Lcom/google/android/gms/internal/by;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/cu;->xl:Ljava/lang/Integer;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/cu;->xA:Ljava/util/Set;

    new-instance v2, Lcom/google/android/gms/internal/ck;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ck;-><init>(Lcom/google/android/gms/internal/cu;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/cu;->xv:Lcom/google/android/gms/common/internal/S;

    iput-object p1, p0, Lcom/google/android/gms/internal/cu;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    new-instance v2, Lcom/google/android/gms/common/internal/J;

    iget-object v3, p0, Lcom/google/android/gms/internal/cu;->xv:Lcom/google/android/gms/common/internal/S;

    invoke-direct {v2, p3, v3}, Lcom/google/android/gms/common/internal/J;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/S;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/cu;->xt:Lcom/google/android/gms/common/internal/J;

    iput-object p3, p0, Lcom/google/android/gms/internal/cu;->xo:Landroid/os/Looper;

    new-instance v2, Lcom/google/android/gms/internal/cm;

    invoke-direct {v2, p0, p3}, Lcom/google/android/gms/internal/cm;-><init>(Lcom/google/android/gms/internal/cu;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/cu;->xz:Lcom/google/android/gms/internal/cm;

    iput-object p5, p0, Lcom/google/android/gms/internal/cu;->xH:Lcom/google/android/gms/common/a;

    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/gms/internal/cu;->xE:I

    iget v2, p0, Lcom/google/android/gms/internal/cu;->xE:I

    if-gez v2, :cond_0

    :goto_0
    iput-object p7, p0, Lcom/google/android/gms/internal/cu;->xC:Ljava/util/Map;

    iput-object p10, p0, Lcom/google/android/gms/internal/cu;->xq:Ljava/util/Map;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/internal/cu;->xx:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/gms/internal/bQ;

    iget-object v3, p0, Lcom/google/android/gms/internal/cu;->xq:Ljava/util/Map;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/bQ;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/cu;->xp:Lcom/google/android/gms/internal/bQ;

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

    iput-object p4, p0, Lcom/google/android/gms/internal/cu;->xr:Lcom/google/android/gms/common/internal/a;

    iput-object p6, p0, Lcom/google/android/gms/internal/cu;->xF:Lcom/google/android/gms/common/api/j;

    return-void

    :cond_0
    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/cu;->xl:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/d;

    iget-object v4, p0, Lcom/google/android/gms/internal/cu;->xt:Lcom/google/android/gms/common/internal/J;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/J;->lF(Lcom/google/android/gms/common/api/d;)V

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/c;

    iget-object v4, p0, Lcom/google/android/gms/internal/cu;->xt:Lcom/google/android/gms/common/internal/J;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/J;->lE(Lcom/google/android/gms/common/api/c;)V

    goto :goto_2
.end method

.method static Cj(I)Ljava/lang/String;
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

.method private Ck(I)V
    .locals 12

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->xl:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->xl:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->xB:Lcom/google/android/gms/internal/br;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->xq:Ljava/util/Map;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xl:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/bZ;

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    iget-object v4, p0, Lcom/google/android/gms/internal/cu;->xo:Landroid/os/Looper;

    iget-object v5, p0, Lcom/google/android/gms/internal/cu;->xH:Lcom/google/android/gms/common/a;

    iget-object v6, p0, Lcom/google/android/gms/internal/cu;->xq:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/android/gms/internal/cu;->xr:Lcom/google/android/gms/common/internal/a;

    iget-object v8, p0, Lcom/google/android/gms/internal/cu;->xC:Ljava/util/Map;

    iget-object v9, p0, Lcom/google/android/gms/internal/cu;->xF:Lcom/google/android/gms/common/api/j;

    iget-object v10, p0, Lcom/google/android/gms/internal/cu;->xx:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v11, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/bZ;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cu;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/f;Ljava/util/Map;Lcom/google/android/gms/common/internal/a;Ljava/util/Map;Lcom/google/android/gms/common/api/j;Ljava/util/ArrayList;Lcom/google/android/gms/internal/bV;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cu;->xB:Lcom/google/android/gms/internal/br;

    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/cu;->xl:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Lcom/google/android/gms/internal/cu;->Cj(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cu;->xl:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/cu;->Cj(I)Ljava/lang/String;

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

    check-cast v0, Lcom/google/android/gms/common/api/g;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/g;->gG()Z

    move-result v5

    if-nez v5, :cond_5

    :goto_2
    invoke-interface {v0}, Lcom/google/android/gms/common/api/g;->gO()Z

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

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    iget-object v3, p0, Lcom/google/android/gms/internal/cu;->xo:Landroid/os/Looper;

    iget-object v4, p0, Lcom/google/android/gms/internal/cu;->xH:Lcom/google/android/gms/common/a;

    iget-object v5, p0, Lcom/google/android/gms/internal/cu;->xq:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/android/gms/internal/cu;->xr:Lcom/google/android/gms/common/internal/a;

    iget-object v7, p0, Lcom/google/android/gms/internal/cu;->xC:Ljava/util/Map;

    iget-object v8, p0, Lcom/google/android/gms/internal/cu;->xF:Lcom/google/android/gms/common/api/j;

    iget-object v9, p0, Lcom/google/android/gms/internal/cu;->xx:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-static/range {v0 .. v9}, Lcom/google/android/gms/internal/bp;->yL(Landroid/content/Context;Lcom/google/android/gms/internal/cu;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/f;Ljava/util/Map;Lcom/google/android/gms/common/internal/a;Ljava/util/Map;Lcom/google/android/gms/common/api/j;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/bp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cu;->xB:Lcom/google/android/gms/internal/br;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static Cl(Ljava/lang/Iterable;Z)I
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

    check-cast v0, Lcom/google/android/gms/common/api/g;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/g;->gG()Z

    move-result v5

    if-nez v5, :cond_1

    :goto_1
    invoke-interface {v0}, Lcom/google/android/gms/common/api/g;->gO()Z

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

.method static synthetic Cm(Lcom/google/android/gms/internal/cu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/cu;->Co()V

    return-void
.end method

.method static synthetic Cn(Lcom/google/android/gms/internal/cu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/cu;->Cy()V

    return-void
.end method

.method private Co()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cu;->Cs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cu;->Cx()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private Cx()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xt:Lcom/google/android/gms/common/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/J;->lA()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xB:Lcom/google/android/gms/internal/br;

    invoke-interface {v0}, Lcom/google/android/gms/internal/br;->yM()V

    return-void
.end method

.method private Cy()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cu;->Cq()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cu;->Cx()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public Br(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xH:Lcom/google/android/gms/common/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->qh()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/a;->qB(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cu;->Cq()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cu;->Cs()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xt:Lcom/google/android/gms/common/internal/J;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/J;->lH(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xt:Lcom/google/android/gms/common/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/J;->lC()V

    goto :goto_1
.end method

.method public Bs(Landroid/os/Bundle;)V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xm:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xt:Lcom/google/android/gms/common/internal/J;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/J;->lD(Landroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xm:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/b;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cu;->Cr(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;

    goto :goto_0
.end method

.method public Bt(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xp:Lcom/google/android/gms/internal/bQ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bQ;->Bx()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xt:Lcom/google/android/gms/common/internal/J;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/J;->lB(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xt:Lcom/google/android/gms/common/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/J;->lC()V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    :goto_1
    return-void

    :cond_1
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cu;->Cz()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/cu;->Cx()V

    goto :goto_1
.end method

.method CA()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->xA:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->xA:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public Cp()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->xB:Lcom/google/android/gms/internal/br;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->xB:Lcom/google/android/gms/internal/br;

    invoke-interface {v1}, Lcom/google/android/gms/internal/br;->za()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method Cq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cu;->xu:Z

    return v0
.end method

.method public Cr(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/b;->ro()Lcom/google/android/gms/common/api/h;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    const-string/jumbo v1, "This task can not be executed (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->ke(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xq:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/b;->ro()Lcom/google/android/gms/common/api/h;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/b;->rq()Lcom/google/android/gms/common/api/e;

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

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/l;->ke(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xB:Lcom/google/android/gms/internal/br;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cu;->Cq()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xB:Lcom/google/android/gms/internal/br;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/br;->zb(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/b;->rq()Lcom/google/android/gms/common/api/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/e;->gE()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xm:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xm:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xm:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/b;

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->xp:Lcom/google/android/gms/internal/bQ;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/bQ;->BA(Lcom/google/android/gms/internal/b;)V

    sget-object v1, Lcom/google/android/gms/common/api/Status;->ht:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/b;->ru(Lcom/google/android/gms/common/api/Status;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method Cs()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cu;->Cq()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/cu;->xu:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xz:Lcom/google/android/gms/internal/cm;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cm;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xz:Lcom/google/android/gms/internal/cm;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/cm;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xs:Lcom/google/android/gms/internal/bq;

    if-nez v0, :cond_1

    :goto_0
    return v2

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xs:Lcom/google/android/gms/internal/bq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bq;->zo()V

    iput-object v3, p0, Lcom/google/android/gms/internal/cu;->xs:Lcom/google/android/gms/internal/bq;

    goto :goto_0
.end method

.method public Ct()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method Cu(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/common/api/g;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/g;

    const-string/jumbo v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->kc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public Cv(I)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

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

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->ke(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cu;->Ck(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/cu;->Cx()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

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

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method Cw()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string/jumbo v2, ""

    invoke-virtual {p0, v2, v3, v1, v3}, Lcom/google/android/gms/internal/cu;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method Cz()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cu;->Cq()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/google/android/gms/internal/cu;->xu:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xs:Lcom/google/android/gms/internal/bq;

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xz:Lcom/google/android/gms/internal/cm;

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->xz:Lcom/google/android/gms/internal/cm;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/cm;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/cu;->xD:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/cm;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xz:Lcom/google/android/gms/internal/cm;

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->xz:Lcom/google/android/gms/internal/cm;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cm;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/cu;->xG:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/cm;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xH:Lcom/google/android/gms/common/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ce;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ce;-><init>(Lcom/google/android/gms/internal/cu;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/a;->qm(Landroid/content/Context;Lcom/google/android/gms/internal/bs;)Lcom/google/android/gms/internal/bq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cu;->xs:Lcom/google/android/gms/internal/bq;

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "mContext="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "mResuming="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/cu;->xu:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mWorkQueue.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->xm:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xp:Lcom/google/android/gms/internal/bQ;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/bQ;->Bw(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xB:Lcom/google/android/gms/internal/br;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xB:Lcom/google/android/gms/internal/br;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/br;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public gf()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xo:Landroid/os/Looper;

    return-object v0
.end method

.method public gg()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/cu;->xE:I

    if-gez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xl:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xl:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xl:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cu;->Cv(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->xl:Ljava/lang/Integer;

    if-nez v1, :cond_1

    :goto_1
    const-string/jumbo v1, "Sign-in mode should have been set explicitly by auto-manage."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->kj(ZLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xq:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cu;->Cl(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cu;->xl:Ljava/lang/Integer;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public gh(Lcom/google/android/gms/common/api/c;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xt:Lcom/google/android/gms/common/internal/J;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/J;->lG(Lcom/google/android/gms/common/api/c;)V

    return-void
.end method

.method public gi()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xp:Lcom/google/android/gms/internal/bQ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bQ;->BD()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xB:Lcom/google/android/gms/internal/br;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xy:Lcom/google/android/gms/internal/by;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/by;->zQ()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xm:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xm:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xB:Lcom/google/android/gms/internal/br;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cu;->Cs()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xt:Lcom/google/android/gms/common/internal/J;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/J;->lC()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xB:Lcom/google/android/gms/internal/br;

    invoke-interface {v0}, Lcom/google/android/gms/internal/br;->yU()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/b;->rv(Lcom/google/android/gms/internal/g;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->cancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public gj(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/b;->ro()Lcom/google/android/gms/common/api/h;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "This task can not be enqueued (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->ke(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xq:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/b;->ro()Lcom/google/android/gms/common/api/h;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/b;->rq()Lcom/google/android/gms/common/api/e;

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

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/l;->ke(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xB:Lcom/google/android/gms/internal/br;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xB:Lcom/google/android/gms/internal/br;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/br;->yW(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/b;->rq()Lcom/google/android/gms/common/api/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/e;->gE()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xm:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public gk(Lcom/google/android/gms/common/api/c;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xt:Lcom/google/android/gms/common/internal/J;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/J;->lE(Lcom/google/android/gms/common/api/c;)V

    return-void
.end method

.method public gl(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/common/api/g;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/g;

    const-string/jumbo v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->kc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public gm(Lcom/google/android/gms/internal/d;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xA:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xA:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cu;->CA()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

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

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xB:Lcom/google/android/gms/internal/br;

    invoke-interface {v0}, Lcom/google/android/gms/internal/br;->yP()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public gn(Lcom/google/android/gms/internal/d;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xA:Ljava/util/Set;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xA:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cu;->xA:Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->xn:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
