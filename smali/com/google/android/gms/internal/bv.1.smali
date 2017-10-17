.class final Lcom/google/android/gms/internal/bv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bx;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private uj:Landroid/os/Bundle;

.field private final uk:Lcom/google/android/gms/common/api/i;

.field private ul:Lcom/google/android/gms/common/ConnectionResult;

.field private final um:Lcom/google/android/gms/internal/cf;

.field private un:Lcom/google/android/gms/common/ConnectionResult;

.field private final uo:Lcom/google/android/gms/internal/cA;

.field private final up:Landroid/os/Looper;

.field private final uq:Ljava/util/Set;

.field private final ur:Ljava/util/concurrent/locks/Lock;

.field private us:Z

.field private final ut:Ljava/util/Map;

.field private uu:I

.field private final uv:Lcom/google/android/gms/internal/cf;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/cA;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/f;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/i;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/bv;->uq:Ljava/util/Set;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/bv;->ul:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/bv;->un:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/bv;->us:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/bv;->uu:I

    iput-object p1, p0, Lcom/google/android/gms/internal/bv;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/bv;->uo:Lcom/google/android/gms/internal/cA;

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/google/android/gms/internal/bv;->ur:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/android/gms/internal/bv;->up:Landroid/os/Looper;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/gms/internal/bv;->uk:Lcom/google/android/gms/common/api/i;

    new-instance v1, Lcom/google/android/gms/internal/cf;

    iget-object v3, p0, Lcom/google/android/gms/internal/bv;->uo:Lcom/google/android/gms/internal/cA;

    new-instance v12, Lcom/google/android/gms/internal/bS;

    const/4 v2, 0x0

    invoke-direct {v12, p0, v2}, Lcom/google/android/gms/internal/bS;-><init>(Lcom/google/android/gms/internal/bv;Lcom/google/android/gms/internal/bD;)V

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v9, p14

    move-object/from16 v11, p12

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/cf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cA;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/f;Ljava/util/Map;Lcom/google/android/gms/common/internal/a;Ljava/util/Map;Lcom/google/android/gms/common/api/l;Ljava/util/ArrayList;Lcom/google/android/gms/internal/cb;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/bv;->um:Lcom/google/android/gms/internal/cf;

    new-instance v1, Lcom/google/android/gms/internal/cf;

    iget-object v3, p0, Lcom/google/android/gms/internal/bv;->uo:Lcom/google/android/gms/internal/cA;

    new-instance v12, Lcom/google/android/gms/internal/cy;

    const/4 v2, 0x0

    invoke-direct {v12, p0, v2}, Lcom/google/android/gms/internal/cy;-><init>(Lcom/google/android/gms/internal/bv;Lcom/google/android/gms/internal/bD;)V

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p13

    move-object/from16 v10, p9

    move-object/from16 v11, p11

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/cf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cA;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/f;Ljava/util/Map;Lcom/google/android/gms/common/internal/a;Ljava/util/Map;Lcom/google/android/gms/common/api/l;Ljava/util/ArrayList;Lcom/google/android/gms/internal/cb;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/bv;->uv:Lcom/google/android/gms/internal/cf;

    new-instance v2, Landroid/support/v4/a/t;

    invoke-direct {v2}, Landroid/support/v4/a/t;-><init>()V

    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/bv;->ut:Ljava/util/Map;

    return-void

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/j;

    iget-object v4, p0, Lcom/google/android/gms/internal/bv;->um:Lcom/google/android/gms/internal/cf;

    invoke-virtual {v2, v1, v4}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/j;

    iget-object v4, p0, Lcom/google/android/gms/internal/bv;->uv:Lcom/google/android/gms/internal/cf;

    invoke-virtual {v2, v1, v4}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private yK(IZ)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->uo:Lcom/google/android/gms/internal/cA;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/cA;->Bu(IZ)V

    iput-object v1, p0, Lcom/google/android/gms/internal/bv;->un:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v1, p0, Lcom/google/android/gms/internal/bv;->ul:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method static synthetic yL(Lcom/google/android/gms/internal/bv;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/bv;->us:Z

    return p1
.end method

.method public static yM(Landroid/content/Context;Lcom/google/android/gms/internal/cA;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/f;Ljava/util/Map;Lcom/google/android/gms/common/internal/a;Ljava/util/Map;Lcom/google/android/gms/common/api/l;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/bv;
    .locals 16

    const/4 v11, 0x0

    new-instance v7, Landroid/support/v4/a/t;

    invoke-direct {v7}, Landroid/support/v4/a/t;-><init>()V

    new-instance v8, Landroid/support/v4/a/t;

    invoke-direct {v8}, Landroid/support/v4/a/t;-><init>()V

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    const-string/jumbo v2, "CompositeGoogleApiClient should not be used without any APIs that require sign-in."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/l;->hv(ZLjava/lang/Object;)V

    new-instance v14, Landroid/support/v4/a/t;

    invoke-direct {v14}, Landroid/support/v4/a/t;-><init>()V

    new-instance v15, Landroid/support/v4/a/t;

    invoke-direct {v15}, Landroid/support/v4/a/t;-><init>()V

    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Lcom/google/android/gms/internal/bv;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/internal/bv;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cA;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/f;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/i;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V

    return-object v1

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/i;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/i;->eh()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_4
    invoke-interface {v2}, Lcom/google/android/gms/common/api/i;->dZ()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/j;

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v11, v2

    goto :goto_4

    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/j;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/h;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/h;->dT()Lcom/google/android/gms/common/api/j;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Each API in the apiTypeMap must have a corresponding client in the clients map."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    move-object/from16 v0, p7

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v14, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p7

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v15, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/bF;

    iget-object v3, v1, Lcom/google/android/gms/internal/bF;->uL:Lcom/google/android/gms/common/api/h;

    invoke-interface {v14, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v1, Lcom/google/android/gms/internal/bF;->uL:Lcom/google/android/gms/common/api/h;

    invoke-interface {v15, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Each ClientCallbacks must have a corresponding API in the apiTypeMap"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_9
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3
.end method

.method private yO()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/bv;->un:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v0, p0, Lcom/google/android/gms/internal/bv;->ul:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->um:Lcom/google/android/gms/internal/cf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cf;->yN()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->uv:Lcom/google/android/gms/internal/cf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cf;->yN()V

    return-void
.end method

.method static synthetic yP(Lcom/google/android/gms/internal/bv;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->un:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method static synthetic yR(Lcom/google/android/gms/internal/bv;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/bv;->yK(IZ)V

    return-void
.end method

.method static synthetic yS(Lcom/google/android/gms/internal/bv;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bv;->yT(Landroid/os/Bundle;)V

    return-void
.end method

.method private yT(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->uj:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/bv;->uj:Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->uj:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method static synthetic yU(Lcom/google/android/gms/internal/bv;)Lcom/google/android/gms/internal/cf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->um:Lcom/google/android/gms/internal/cf;

    return-object v0
.end method

.method static synthetic yW(Lcom/google/android/gms/internal/bv;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bv;->ul:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method static synthetic yY(Lcom/google/android/gms/internal/bv;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bv;->us:Z

    return v0
.end method

.method private yZ()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/bv;->uu:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    const-string/jumbo v1, "CompositeGAC"

    const-string/jumbo v2, "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/bv;->uu:I

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->uo:Lcom/google/android/gms/internal/cA;

    iget-object v1, p0, Lcom/google/android/gms/internal/bv;->uj:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cA;->Bt(Landroid/os/Bundle;)V

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/bv;->zk()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static za(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->nw()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private zd(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/bv;->uu:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v1, "CompositeGAC"

    const-string/jumbo v2, "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/bv;->uu:I

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->uo:Lcom/google/android/gms/internal/cA;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cA;->Bs(Lcom/google/android/gms/common/ConnectionResult;)V

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/bv;->zk()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic ze(Lcom/google/android/gms/internal/bv;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bv;->zi()V

    return-void
.end method

.method private zf(Lcom/google/android/gms/internal/b;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/b;->rm()Lcom/google/android/gms/common/api/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bv;->ut:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "GoogleApiClient is not configured to use the API required for this call."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/l;->hq(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/bv;->ut:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cf;

    iget-object v1, p0, Lcom/google/android/gms/internal/bv;->uv:Lcom/google/android/gms/internal/cf;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic zh(Lcom/google/android/gms/internal/bv;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->ur:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private zi()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->ul:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Lcom/google/android/gms/internal/bv;->za(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->ul:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v0, :cond_6

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->ul:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v0, :cond_7

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->un:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Lcom/google/android/gms/internal/bv;->za(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/bv;->yZ()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/bv;->zj()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->un:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/bv;->uu:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->un:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bv;->zd(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->um:Lcom/google/android/gms/internal/cf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cf;->yV()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/bv;->zk()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->un:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Lcom/google/android/gms/internal/bv;->za(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->uv:Lcom/google/android/gms/internal/cf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cf;->yV()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->ul:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bv;->zd(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->un:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->ul:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/bv;->uv:Lcom/google/android/gms/internal/cf;

    iget v1, v1, Lcom/google/android/gms/internal/cf;->wH:I

    iget-object v2, p0, Lcom/google/android/gms/internal/bv;->um:Lcom/google/android/gms/internal/cf;

    iget v2, v2, Lcom/google/android/gms/internal/cf;->wH:I

    if-lt v1, v2, :cond_8

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bv;->zd(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->un:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1
.end method

.method private zj()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->un:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->un:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->nu()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private zk()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->uq:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->uq:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/a;

    invoke-interface {v0}, Lcom/google/android/gms/internal/a;->rk()V

    goto :goto_0
.end method

.method private zl()Landroid/app/PendingIntent;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->uk:Lcom/google/android/gms/common/api/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/bv;->uo:Lcom/google/android/gms/internal/cA;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cA;->Cu()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bv;->uk:Lcom/google/android/gms/common/api/i;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/i;->ef()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method static synthetic zm(Lcom/google/android/gms/internal/bv;)Lcom/google/android/gms/internal/cf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->uv:Lcom/google/android/gms/internal/cf;

    return-object v0
.end method

.method static synthetic zn(Lcom/google/android/gms/internal/bv;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bv;->un:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "authClient"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->uv:Lcom/google/android/gms/internal/cf;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/cf;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "anonClient"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->um:Lcom/google/android/gms/internal/cf;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/cf;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public yN()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/bv;->uu:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bv;->us:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/bv;->yO()V

    return-void
.end method

.method public yQ()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->um:Lcom/google/android/gms/internal/cf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cf;->yQ()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->uv:Lcom/google/android/gms/internal/cf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cf;->yQ()V

    return-void
.end method

.method public yV()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/bv;->un:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v0, p0, Lcom/google/android/gms/internal/bv;->ul:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/bv;->uu:I

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->um:Lcom/google/android/gms/internal/cf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cf;->yV()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->uv:Lcom/google/android/gms/internal/cf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cf;->yV()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bv;->zk()V

    return-void
.end method

.method public yX(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bv;->zf(Lcom/google/android/gms/internal/b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->um:Lcom/google/android/gms/internal/cf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cf;->yX(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/bv;->zj()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->uv:Lcom/google/android/gms/internal/cf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cf;->yX(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Lcom/google/android/gms/internal/bv;->zl()Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/b;->rs(Lcom/google/android/gms/common/api/Status;)V

    return-object p1
.end method

.method public zb()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/bv;->ur:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/bv;->um:Lcom/google/android/gms/internal/cf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cf;->zb()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    move v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/bv;->ur:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/bv;->zg()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bv;->zj()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/bv;->uu:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v2, v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bv;->ur:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zc(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bv;->zf(Lcom/google/android/gms/internal/b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->um:Lcom/google/android/gms/internal/cf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cf;->zc(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/bv;->zj()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->uv:Lcom/google/android/gms/internal/cf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cf;->zc(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Lcom/google/android/gms/internal/bv;->zl()Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/b;->rs(Lcom/google/android/gms/common/api/Status;)V

    return-object p1
.end method

.method public zg()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bv;->uv:Lcom/google/android/gms/internal/cf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cf;->zb()Z

    move-result v0

    return v0
.end method
