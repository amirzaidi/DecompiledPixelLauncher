.class public final Lcom/google/android/gms/common/api/e;
.super Ljava/lang/Object;


# instance fields
.field private ec:Landroid/view/View;

.field private final ed:Ljava/util/Map;

.field private final ee:Ljava/util/Set;

.field private ef:Landroid/os/Looper;

.field private eg:Landroid/accounts/Account;

.field private eh:Ljava/lang/String;

.field private ei:Lcom/google/android/gms/internal/e;

.field private final ej:Ljava/util/ArrayList;

.field private final ek:Ljava/util/Set;

.field private el:I

.field private final em:Ljava/util/Map;

.field private en:Lcom/google/android/gms/common/api/f;

.field private eo:Ljava/lang/String;

.field private ep:I

.field private eq:Lcom/google/android/gms/common/api/l;

.field private final er:Ljava/util/ArrayList;

.field private es:Lcom/google/android/gms/common/a;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/e;->ek:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/e;->ee:Ljava/util/Set;

    new-instance v0, Landroid/support/v4/a/t;

    invoke-direct {v0}, Landroid/support/v4/a/t;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/e;->ed:Ljava/util/Map;

    new-instance v0, Landroid/support/v4/a/t;

    invoke-direct {v0}, Landroid/support/v4/a/t;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/e;->em:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/e;->ep:I

    invoke-static {}, Lcom/google/android/gms/common/a;->nI()Lcom/google/android/gms/common/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/e;->es:Lcom/google/android/gms/common/a;

    sget-object v0, Lcom/google/android/gms/internal/bN;->vL:Lcom/google/android/gms/common/api/l;

    iput-object v0, p0, Lcom/google/android/gms/common/api/e;->eq:Lcom/google/android/gms/common/api/l;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/e;->ej:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/e;->er:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/gms/common/api/e;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/e;->ef:Landroid/os/Looper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/e;->eh:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/e;->eo:Ljava/lang/String;

    return-void
.end method

.method private static dL(Lcom/google/android/gms/common/api/l;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/i;
    .locals 7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/l;->ek(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a;Ljava/lang/Object;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/i;

    move-result-object v0

    return-object v0
.end method

.method private dM()Lcom/google/android/gms/common/api/d;
    .locals 15

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->dJ()Lcom/google/android/gms/common/internal/a;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/a;->gq()Ljava/util/Map;

    move-result-object v12

    new-instance v7, Landroid/support/v4/a/t;

    invoke-direct {v7}, Landroid/support/v4/a/t;-><init>()V

    new-instance v10, Landroid/support/v4/a/t;

    invoke-direct {v10}, Landroid/support/v4/a/t;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/common/api/e;->em:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v2, v0

    move-object v9, v1

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v9, :cond_8

    :goto_1
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cA;->Cm(Ljava/lang/Iterable;Z)I

    move-result v12

    new-instance v0, Lcom/google/android/gms/internal/cA;

    iget-object v1, p0, Lcom/google/android/gms/common/api/e;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/common/api/e;->ef:Landroid/os/Looper;

    iget-object v5, p0, Lcom/google/android/gms/common/api/e;->es:Lcom/google/android/gms/common/a;

    iget-object v6, p0, Lcom/google/android/gms/common/api/e;->eq:Lcom/google/android/gms/common/api/l;

    iget-object v8, p0, Lcom/google/android/gms/common/api/e;->ej:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/google/android/gms/common/api/e;->er:Ljava/util/ArrayList;

    iget v11, p0, Lcom/google/android/gms/common/api/e;->ep:I

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/cA;-><init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/a;Lcom/google/android/gms/common/api/l;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;)V

    return-object v0

    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/common/api/h;

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->em:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/google/android/gms/internal/bF;

    invoke-direct {v5, v8, v0}, Lcom/google/android/gms/internal/bF;-><init>(Lcom/google/android/gms/common/api/h;I)V

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/google/android/gms/common/api/h;->dU()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v8}, Lcom/google/android/gms/common/api/h;->dV()Lcom/google/android/gms/common/api/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/l;->es()I

    move-result v3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_5

    move-object v11, v2

    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/common/api/e;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/common/api/e;->ef:Landroid/os/Looper;

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/common/api/e;->dL(Lcom/google/android/gms/common/api/l;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/i;

    move-result-object v0

    :goto_4
    move-object v1, v0

    move-object v0, v11

    invoke-virtual {v8}, Lcom/google/android/gms/common/api/h;->dT()Lcom/google/android/gms/common/api/j;

    move-result-object v2

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/i;->eh()Z

    move-result v1

    if-nez v1, :cond_6

    move-object v1, v9

    :goto_5
    move-object v2, v0

    move-object v9, v1

    goto :goto_0

    :cond_1
    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/Q;

    iget-boolean v0, v0, Lcom/google/android/gms/common/internal/Q;->he:Z

    if-nez v0, :cond_2

    const/4 v0, 0x2

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Lcom/google/android/gms/common/api/h;->dW()Lcom/google/android/gms/common/api/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/n;->es()I

    move-result v3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_4

    move-object v11, v2

    :goto_6
    iget-object v2, p0, Lcom/google/android/gms/common/api/e;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/common/api/e;->ef:Landroid/os/Looper;

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/common/api/e;->dP(Lcom/google/android/gms/common/api/n;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/internal/b;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object v11, v8

    goto :goto_6

    :cond_5
    move-object v11, v8

    goto :goto_3

    :cond_6
    if-nez v9, :cond_7

    move-object v1, v8

    goto :goto_5

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v8}, Lcom/google/android/gms/common/api/h;->dY()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/google/android/gms/common/api/h;->dY()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x15

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " cannot be used with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    if-nez v2, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->eg:Landroid/accounts/Account;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_7
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/google/android/gms/common/api/h;->dY()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "Must not set an account in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/l;->hw(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->ek:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/gms/common/api/e;->ee:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/google/android/gms/common/api/h;->dY()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead."

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/l;->hw(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v9}, Lcom/google/android/gms/common/api/h;->dY()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/h;->dY()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x15

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " cannot be used with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private dN(Lcom/google/android/gms/common/api/d;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->ei:Lcom/google/android/gms/internal/e;

    invoke-static {v0}, Lcom/google/android/gms/internal/bq;->yH(Lcom/google/android/gms/internal/e;)Lcom/google/android/gms/internal/bq;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/common/api/e;->ep:I

    iget-object v2, p0, Lcom/google/android/gms/common/api/e;->en:Lcom/google/android/gms/common/api/f;

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/bq;->yG(ILcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/f;)V

    return-void
.end method

.method private static dP(Lcom/google/android/gms/common/api/n;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/internal/b;
    .locals 8

    new-instance v0, Lcom/google/android/gms/common/internal/b;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/n;->en()I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/n;->em(Ljava/lang/Object;)Lcom/google/android/gms/common/api/p;

    move-result-object v7

    move-object v1, p2

    move-object v2, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/internal/b;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/p;)V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/common/api/d;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/api/e;->em:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    const-string/jumbo v1, "must call addApi() to add at least one API"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->hq(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/e;->dM()Lcom/google/android/gms/common/api/d;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/api/d;->dt()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/api/d;->dt()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v1, p0, Lcom/google/android/gms/common/api/e;->ep:I

    if-gez v1, :cond_1

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/e;->dN(Lcom/google/android/gms/common/api/d;)V

    goto :goto_1
.end method

.method public dI()Lcom/google/android/gms/common/api/e;
    .locals 1

    const-string/jumbo v0, "<<default account>>"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/e;->dK(Ljava/lang/String;)Lcom/google/android/gms/common/api/e;

    move-result-object v0

    return-object v0
.end method

.method public dJ()Lcom/google/android/gms/common/internal/a;
    .locals 9

    sget-object v8, Lcom/google/android/gms/internal/cd;->wl:Lcom/google/android/gms/internal/cd;

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->em:Ljava/util/Map;

    sget-object v1, Lcom/google/android/gms/internal/bN;->vI:Lcom/google/android/gms/common/api/h;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    new-instance v0, Lcom/google/android/gms/common/internal/a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/e;->eg:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/gms/common/api/e;->ek:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/android/gms/common/api/e;->ed:Ljava/util/Map;

    iget v4, p0, Lcom/google/android/gms/common/api/e;->el:I

    iget-object v5, p0, Lcom/google/android/gms/common/api/e;->ec:Landroid/view/View;

    iget-object v6, p0, Lcom/google/android/gms/common/api/e;->eh:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/common/api/e;->eo:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/a;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/cd;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->em:Ljava/util/Map;

    sget-object v1, Lcom/google/android/gms/internal/bN;->vI:Lcom/google/android/gms/common/api/h;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cd;

    move-object v8, v0

    goto :goto_0
.end method

.method public dK(Ljava/lang/String;)Lcom/google/android/gms/common/api/e;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/accounts/Account;

    const-string/jumbo v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/common/api/e;->eg:Landroid/accounts/Account;

    return-object p0
.end method

.method public dO(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/common/api/e;
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "Api must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/l;->ho(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->em:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/h;->dX()Lcom/google/android/gms/common/api/s;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/s;->et(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/e;->ee:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/android/gms/common/api/e;->ek:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method
