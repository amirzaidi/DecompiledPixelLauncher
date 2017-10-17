.class public final Lcom/google/android/gms/common/api/b;
.super Ljava/lang/Object;


# instance fields
.field private gK:Landroid/view/View;

.field private final gL:Ljava/util/Map;

.field private final gM:Ljava/util/Set;

.field private gN:Landroid/os/Looper;

.field private gO:Landroid/accounts/Account;

.field private gP:Ljava/lang/String;

.field private gQ:Lcom/google/android/gms/internal/e;

.field private final gR:Ljava/util/ArrayList;

.field private final gS:Ljava/util/Set;

.field private gT:I

.field private final gU:Ljava/util/Map;

.field private gV:Lcom/google/android/gms/common/api/c;

.field private gW:Ljava/lang/String;

.field private gX:I

.field private gY:Lcom/google/android/gms/common/api/j;

.field private final gZ:Ljava/util/ArrayList;

.field private ha:Lcom/google/android/gms/common/a;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/b;->gS:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/b;->gM:Ljava/util/Set;

    new-instance v0, Landroid/support/v4/a/t;

    invoke-direct {v0}, Landroid/support/v4/a/t;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/b;->gL:Ljava/util/Map;

    new-instance v0, Landroid/support/v4/a/t;

    invoke-direct {v0}, Landroid/support/v4/a/t;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/b;->gU:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/b;->gX:I

    invoke-static {}, Lcom/google/android/gms/common/a;->getInstance()Lcom/google/android/gms/common/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/b;->ha:Lcom/google/android/gms/common/a;

    sget-object v0, Lcom/google/android/gms/internal/bH;->vR:Lcom/google/android/gms/common/api/j;

    iput-object v0, p0, Lcom/google/android/gms/common/api/b;->gY:Lcom/google/android/gms/common/api/j;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/b;->gR:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/b;->gZ:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/gms/common/api/b;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/b;->gN:Landroid/os/Looper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/b;->gP:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/b;->gW:Ljava/lang/String;

    return-void
.end method

.method private static gr(Lcom/google/android/gms/common/api/j;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/g;
    .locals 7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/j;->gR(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a;Ljava/lang/Object;Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/g;

    move-result-object v0

    return-object v0
.end method

.method private gs()Lcom/google/android/gms/common/api/a;
    .locals 15

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->gp()Lcom/google/android/gms/common/internal/a;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/a;->je()Ljava/util/Map;

    move-result-object v12

    new-instance v7, Landroid/support/v4/a/t;

    invoke-direct {v7}, Landroid/support/v4/a/t;-><init>()V

    new-instance v10, Landroid/support/v4/a/t;

    invoke-direct {v10}, Landroid/support/v4/a/t;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/common/api/b;->gU:Ljava/util/Map;

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

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cu;->Cl(Ljava/lang/Iterable;Z)I

    move-result v12

    new-instance v0, Lcom/google/android/gms/internal/cu;

    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/common/api/b;->gN:Landroid/os/Looper;

    iget-object v5, p0, Lcom/google/android/gms/common/api/b;->ha:Lcom/google/android/gms/common/a;

    iget-object v6, p0, Lcom/google/android/gms/common/api/b;->gY:Lcom/google/android/gms/common/api/j;

    iget-object v8, p0, Lcom/google/android/gms/common/api/b;->gR:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/google/android/gms/common/api/b;->gZ:Ljava/util/ArrayList;

    iget v11, p0, Lcom/google/android/gms/common/api/b;->gX:I

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/cu;-><init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/a;Lcom/google/android/gms/common/api/j;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;)V

    return-object v0

    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/common/api/e;

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->gU:Ljava/util/Map;

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

    new-instance v5, Lcom/google/android/gms/internal/bz;

    invoke-direct {v5, v8, v0}, Lcom/google/android/gms/internal/bz;-><init>(Lcom/google/android/gms/common/api/e;I)V

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/google/android/gms/common/api/e;->gA()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v8}, Lcom/google/android/gms/common/api/e;->gB()Lcom/google/android/gms/common/api/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/j;->hf()I

    move-result v3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_5

    move-object v11, v2

    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/common/api/b;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/common/api/b;->gN:Landroid/os/Looper;

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/common/api/b;->gr(Lcom/google/android/gms/common/api/j;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/g;

    move-result-object v0

    :goto_4
    move-object v1, v0

    move-object v0, v11

    invoke-virtual {v8}, Lcom/google/android/gms/common/api/e;->gz()Lcom/google/android/gms/common/api/h;

    move-result-object v2

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/g;->gO()Z

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

    iget-boolean v0, v0, Lcom/google/android/gms/common/internal/Q;->jW:Z

    if-nez v0, :cond_2

    const/4 v0, 0x2

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Lcom/google/android/gms/common/api/e;->gC()Lcom/google/android/gms/common/api/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/l;->hf()I

    move-result v3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_4

    move-object v11, v2

    :goto_6
    iget-object v2, p0, Lcom/google/android/gms/common/api/b;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/common/api/b;->gN:Landroid/os/Looper;

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/common/api/b;->gv(Lcom/google/android/gms/common/api/l;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/internal/b;

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

    invoke-virtual {v8}, Lcom/google/android/gms/common/api/e;->gE()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/google/android/gms/common/api/e;->gE()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->gO:Landroid/accounts/Account;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_7
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/google/android/gms/common/api/e;->gE()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "Must not set an account in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/l;->kk(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->gS:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->gM:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/google/android/gms/common/api/e;->gE()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead."

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/l;->kk(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v9}, Lcom/google/android/gms/common/api/e;->gE()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/e;->gE()Ljava/lang/String;

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

.method private gt(Lcom/google/android/gms/common/api/a;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->gQ:Lcom/google/android/gms/internal/e;

    invoke-static {v0}, Lcom/google/android/gms/internal/bk;->yG(Lcom/google/android/gms/internal/e;)Lcom/google/android/gms/internal/bk;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/common/api/b;->gX:I

    iget-object v2, p0, Lcom/google/android/gms/common/api/b;->gV:Lcom/google/android/gms/common/api/c;

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/bk;->yF(ILcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/c;)V

    return-void
.end method

.method private static gv(Lcom/google/android/gms/common/api/l;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/internal/b;
    .locals 8

    new-instance v0, Lcom/google/android/gms/common/internal/b;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/l;->gU()I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/l;->gT(Ljava/lang/Object;)Lcom/google/android/gms/common/api/o;

    move-result-object v7

    move-object v1, p2

    move-object v2, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/internal/b;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/o;)V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/common/api/a;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->gU:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    const-string/jumbo v1, "must call addApi() to add at least one API"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->ke(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/b;->gs()Lcom/google/android/gms/common/api/a;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/api/a;->ge()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/api/a;->ge()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v1, p0, Lcom/google/android/gms/common/api/b;->gX:I

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/b;->gt(Lcom/google/android/gms/common/api/a;)V

    goto :goto_1
.end method

.method public go()Lcom/google/android/gms/common/api/b;
    .locals 1

    const-string/jumbo v0, "<<default account>>"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/b;->gq(Ljava/lang/String;)Lcom/google/android/gms/common/api/b;

    move-result-object v0

    return-object v0
.end method

.method public gp()Lcom/google/android/gms/common/internal/a;
    .locals 9

    sget-object v8, Lcom/google/android/gms/internal/bX;->wr:Lcom/google/android/gms/internal/bX;

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->gU:Ljava/util/Map;

    sget-object v1, Lcom/google/android/gms/internal/bH;->vO:Lcom/google/android/gms/common/api/e;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    new-instance v0, Lcom/google/android/gms/common/internal/a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->gO:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/gms/common/api/b;->gS:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/android/gms/common/api/b;->gL:Ljava/util/Map;

    iget v4, p0, Lcom/google/android/gms/common/api/b;->gT:I

    iget-object v5, p0, Lcom/google/android/gms/common/api/b;->gK:Landroid/view/View;

    iget-object v6, p0, Lcom/google/android/gms/common/api/b;->gP:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/common/api/b;->gW:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/a;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bX;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->gU:Ljava/util/Map;

    sget-object v1, Lcom/google/android/gms/internal/bH;->vO:Lcom/google/android/gms/common/api/e;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bX;

    move-object v8, v0

    goto :goto_0
.end method

.method public gq(Ljava/lang/String;)Lcom/google/android/gms/common/api/b;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/accounts/Account;

    const-string/jumbo v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/common/api/b;->gO:Landroid/accounts/Account;

    return-object p0
.end method

.method public gu(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/b;
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "Api must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/l;->kc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->gU:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/e;->gD()Lcom/google/android/gms/common/api/r;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/r;->hg(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->gM:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->gS:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method
