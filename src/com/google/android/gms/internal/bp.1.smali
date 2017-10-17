.class final Lcom/google/android/gms/internal/bp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/br;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private uA:I

.field private final uB:Lcom/google/android/gms/internal/bZ;

.field private up:Landroid/os/Bundle;

.field private final uq:Lcom/google/android/gms/common/api/g;

.field private ur:Lcom/google/android/gms/common/ConnectionResult;

.field private final us:Lcom/google/android/gms/internal/bZ;

.field private ut:Lcom/google/android/gms/common/ConnectionResult;

.field private final uu:Lcom/google/android/gms/internal/cu;

.field private final uv:Landroid/os/Looper;

.field private final uw:Ljava/util/Set;

.field private final ux:Ljava/util/concurrent/locks/Lock;

.field private uy:Z

.field private final uz:Ljava/util/Map;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/cu;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/f;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/common/api/g;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/bp;->uw:Ljava/util/Set;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/bp;->ur:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/bp;->ut:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/bp;->uy:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/bp;->uA:I

    iput-object p1, p0, Lcom/google/android/gms/internal/bp;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/bp;->uu:Lcom/google/android/gms/internal/cu;

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/google/android/gms/internal/bp;->ux:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/android/gms/internal/bp;->uv:Landroid/os/Looper;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/gms/internal/bp;->uq:Lcom/google/android/gms/common/api/g;

    new-instance v1, Lcom/google/android/gms/internal/bZ;

    iget-object v3, p0, Lcom/google/android/gms/internal/bp;->uu:Lcom/google/android/gms/internal/cu;

    new-instance v12, Lcom/google/android/gms/internal/bM;

    const/4 v2, 0x0

    invoke-direct {v12, p0, v2}, Lcom/google/android/gms/internal/bM;-><init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/internal/bx;)V

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v9, p14

    move-object/from16 v11, p12

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/bZ;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cu;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/f;Ljava/util/Map;Lcom/google/android/gms/common/internal/a;Ljava/util/Map;Lcom/google/android/gms/common/api/j;Ljava/util/ArrayList;Lcom/google/android/gms/internal/bV;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/bp;->us:Lcom/google/android/gms/internal/bZ;

    new-instance v1, Lcom/google/android/gms/internal/bZ;

    iget-object v3, p0, Lcom/google/android/gms/internal/bp;->uu:Lcom/google/android/gms/internal/cu;

    new-instance v12, Lcom/google/android/gms/internal/cs;

    const/4 v2, 0x0

    invoke-direct {v12, p0, v2}, Lcom/google/android/gms/internal/cs;-><init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/internal/bx;)V

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p13

    move-object/from16 v10, p9

    move-object/from16 v11, p11

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/bZ;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cu;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/f;Ljava/util/Map;Lcom/google/android/gms/common/internal/a;Ljava/util/Map;Lcom/google/android/gms/common/api/j;Ljava/util/ArrayList;Lcom/google/android/gms/internal/bV;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/bp;->uB:Lcom/google/android/gms/internal/bZ;

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

    iput-object v1, p0, Lcom/google/android/gms/internal/bp;->uz:Ljava/util/Map;

    return-void

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/h;

    iget-object v4, p0, Lcom/google/android/gms/internal/bp;->us:Lcom/google/android/gms/internal/bZ;

    invoke-virtual {v2, v1, v4}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/h;

    iget-object v4, p0, Lcom/google/android/gms/internal/bp;->uB:Lcom/google/android/gms/internal/bZ;

    invoke-virtual {v2, v1, v4}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private yJ(IZ)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->uu:Lcom/google/android/gms/internal/cu;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/cu;->Bt(IZ)V

    iput-object v1, p0, Lcom/google/android/gms/internal/bp;->ut:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v1, p0, Lcom/google/android/gms/internal/bp;->ur:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method static synthetic yK(Lcom/google/android/gms/internal/bp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/bp;->uy:Z

    return p1
.end method

.method public static yL(Landroid/content/Context;Lcom/google/android/gms/internal/cu;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/f;Ljava/util/Map;Lcom/google/android/gms/common/internal/a;Ljava/util/Map;Lcom/google/android/gms/common/api/j;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/bp;
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

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/l;->kj(ZLjava/lang/Object;)V

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

    new-instance v1, Lcom/google/android/gms/internal/bp;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/internal/bp;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cu;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/f;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/common/api/g;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V

    return-object v1

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/g;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/g;->gO()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_4
    invoke-interface {v2}, Lcom/google/android/gms/common/api/g;->gG()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/h;

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v11, v2

    goto :goto_4

    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/h;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/e;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/e;->gz()Lcom/google/android/gms/common/api/h;

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

    check-cast v1, Lcom/google/android/gms/internal/bz;

    iget-object v3, v1, Lcom/google/android/gms/internal/bz;->uR:Lcom/google/android/gms/common/api/e;

    invoke-interface {v14, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v1, Lcom/google/android/gms/internal/bz;->uR:Lcom/google/android/gms/common/api/e;

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

.method private yN()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/bp;->ut:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v0, p0, Lcom/google/android/gms/internal/bp;->ur:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->us:Lcom/google/android/gms/internal/bZ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bZ;->yM()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->uB:Lcom/google/android/gms/internal/bZ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bZ;->yM()V

    return-void
.end method

.method static synthetic yO(Lcom/google/android/gms/internal/bp;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->ut:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method static synthetic yQ(Lcom/google/android/gms/internal/bp;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/bp;->yJ(IZ)V

    return-void
.end method

.method static synthetic yR(Lcom/google/android/gms/internal/bp;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bp;->yS(Landroid/os/Bundle;)V

    return-void
.end method

.method private yS(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->up:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/bp;->up:Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->up:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method static synthetic yT(Lcom/google/android/gms/internal/bp;)Lcom/google/android/gms/internal/bZ;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->us:Lcom/google/android/gms/internal/bZ;

    return-object v0
.end method

.method static synthetic yV(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bp;->ur:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method static synthetic yX(Lcom/google/android/gms/internal/bp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bp;->uy:Z

    return v0
.end method

.method private yY()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/bp;->uA:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    const-string/jumbo v1, "CompositeGAC"

    const-string/jumbo v2, "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/bp;->uA:I

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->uu:Lcom/google/android/gms/internal/cu;

    iget-object v1, p0, Lcom/google/android/gms/internal/bp;->up:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cu;->Bs(Landroid/os/Bundle;)V

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->zj()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static yZ(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->qj()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private zc(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/bp;->uA:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v1, "CompositeGAC"

    const-string/jumbo v2, "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/bp;->uA:I

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->uu:Lcom/google/android/gms/internal/cu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cu;->Br(Lcom/google/android/gms/common/ConnectionResult;)V

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->zj()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic zd(Lcom/google/android/gms/internal/bp;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->zh()V

    return-void
.end method

.method private ze(Lcom/google/android/gms/internal/b;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/b;->ro()Lcom/google/android/gms/common/api/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bp;->uz:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "GoogleApiClient is not configured to use the API required for this call."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/l;->ke(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/bp;->uz:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bZ;

    iget-object v1, p0, Lcom/google/android/gms/internal/bp;->uB:Lcom/google/android/gms/internal/bZ;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic zg(Lcom/google/android/gms/internal/bp;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->ux:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private zh()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->ur:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Lcom/google/android/gms/internal/bp;->yZ(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->ur:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v0, :cond_6

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->ur:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v0, :cond_7

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->ut:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Lcom/google/android/gms/internal/bp;->yZ(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->yY()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->zi()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->ut:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/bp;->uA:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->ut:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bp;->zc(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->us:Lcom/google/android/gms/internal/bZ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bZ;->yU()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->zj()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->ut:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Lcom/google/android/gms/internal/bp;->yZ(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->uB:Lcom/google/android/gms/internal/bZ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bZ;->yU()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->ur:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bp;->zc(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->ut:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->ur:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/bp;->uB:Lcom/google/android/gms/internal/bZ;

    iget v1, v1, Lcom/google/android/gms/internal/bZ;->wN:I

    iget-object v2, p0, Lcom/google/android/gms/internal/bp;->us:Lcom/google/android/gms/internal/bZ;

    iget v2, v2, Lcom/google/android/gms/internal/bZ;->wN:I

    if-lt v1, v2, :cond_8

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bp;->zc(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->ut:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1
.end method

.method private zi()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->ut:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->ut:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->qh()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private zj()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->uw:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->uw:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/a;

    invoke-interface {v0}, Lcom/google/android/gms/internal/a;->rm()V

    goto :goto_0
.end method

.method private zk()Landroid/app/PendingIntent;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->uq:Lcom/google/android/gms/common/api/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/bp;->uu:Lcom/google/android/gms/internal/cu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cu;->Ct()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bp;->uq:Lcom/google/android/gms/common/api/g;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/g;->gM()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method static synthetic zl(Lcom/google/android/gms/internal/bp;)Lcom/google/android/gms/internal/bZ;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->uB:Lcom/google/android/gms/internal/bZ;

    return-object v0
.end method

.method static synthetic zm(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bp;->ut:Lcom/google/android/gms/common/ConnectionResult;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->uB:Lcom/google/android/gms/internal/bZ;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/bZ;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "anonClient"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->us:Lcom/google/android/gms/internal/bZ;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/bZ;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public yM()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/bp;->uA:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bp;->uy:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->yN()V

    return-void
.end method

.method public yP()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->us:Lcom/google/android/gms/internal/bZ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bZ;->yP()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->uB:Lcom/google/android/gms/internal/bZ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bZ;->yP()V

    return-void
.end method

.method public yU()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/bp;->ut:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v0, p0, Lcom/google/android/gms/internal/bp;->ur:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/bp;->uA:I

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->us:Lcom/google/android/gms/internal/bZ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bZ;->yU()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->uB:Lcom/google/android/gms/internal/bZ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bZ;->yU()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->zj()V

    return-void
.end method

.method public yW(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bp;->ze(Lcom/google/android/gms/internal/b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->us:Lcom/google/android/gms/internal/bZ;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bZ;->yW(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->zi()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->uB:Lcom/google/android/gms/internal/bZ;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bZ;->yW(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->zk()Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/b;->ru(Lcom/google/android/gms/common/api/Status;)V

    return-object p1
.end method

.method public za()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/bp;->ux:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/bp;->us:Lcom/google/android/gms/internal/bZ;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/bZ;->za()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    move v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/bp;->ux:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/bp;->zf()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->zi()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/bp;->uA:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v2, v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bp;->ux:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zb(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bp;->ze(Lcom/google/android/gms/internal/b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->us:Lcom/google/android/gms/internal/bZ;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bZ;->zb(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->zi()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->uB:Lcom/google/android/gms/internal/bZ;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bZ;->zb(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->zk()Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/b;->ru(Lcom/google/android/gms/common/api/Status;)V

    return-object p1
.end method

.method public zf()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->uB:Lcom/google/android/gms/internal/bZ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bZ;->za()Z

    move-result v0

    return v0
.end method
