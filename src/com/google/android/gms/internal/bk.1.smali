.class Lcom/google/android/gms/internal/bk;
.super Lcom/google/android/gms/internal/bP;


# instance fields
.field final synthetic tU:Lcom/google/android/gms/internal/bH;

.field private final tV:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bH;Ljava/util/Map;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/bk;->tU:Lcom/google/android/gms/internal/bH;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/bP;-><init>(Lcom/google/android/gms/internal/bH;Lcom/google/android/gms/internal/bJ;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/bk;->tV:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public ys()V
    .locals 7

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->tV:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v4

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    move v2, v4

    :goto_1
    if-nez v3, :cond_3

    :goto_2
    if-nez v4, :cond_4

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->tU:Lcom/google/android/gms/internal/bH;

    invoke-static {v0}, Lcom/google/android/gms/internal/bH;->zX(Lcom/google/android/gms/internal/bH;)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->tV:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->ei()Z

    move-result v6

    if-nez v6, :cond_1

    move v0, v4

    move v1, v3

    :goto_6
    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/bk;->tV:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ce;

    invoke-static {v0}, Lcom/google/android/gms/internal/ce;->BQ(Lcom/google/android/gms/internal/ce;)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    move v1, v2

    goto :goto_6

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->tU:Lcom/google/android/gms/internal/bH;

    invoke-static {v0}, Lcom/google/android/gms/internal/bH;->Aa(Lcom/google/android/gms/internal/bH;)Lcom/google/android/gms/common/f;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/bk;->tU:Lcom/google/android/gms/internal/bH;

    invoke-static {v3}, Lcom/google/android/gms/internal/bH;->Av(Lcom/google/android/gms/internal/bH;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/f;->nN(Landroid/content/Context;)I

    move-result v4

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_6

    :cond_5
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    invoke-direct {v0, v4, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/bk;->tU:Lcom/google/android/gms/internal/bH;

    invoke-static {v1}, Lcom/google/android/gms/internal/bH;->Aj(Lcom/google/android/gms/internal/bH;)Lcom/google/android/gms/internal/cf;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/bj;

    iget-object v3, p0, Lcom/google/android/gms/internal/bk;->tU:Lcom/google/android/gms/internal/bH;

    invoke-direct {v2, p0, v3, v0}, Lcom/google/android/gms/internal/bj;-><init>(Lcom/google/android/gms/internal/bk;Lcom/google/android/gms/internal/co;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cf;->BR(Lcom/google/android/gms/internal/br;)V

    return-void

    :cond_6
    if-nez v1, :cond_5

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->tU:Lcom/google/android/gms/internal/bH;

    invoke-static {v0}, Lcom/google/android/gms/internal/bH;->Ab(Lcom/google/android/gms/internal/bH;)Lcom/google/android/gms/internal/bm;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/bm;->yu()V

    goto :goto_4

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/i;

    iget-object v1, p0, Lcom/google/android/gms/internal/bk;->tV:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/internal/c;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->ei()Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/i;->ee(Lcom/google/android/gms/common/internal/c;)V

    goto :goto_5

    :cond_a
    if-eqz v4, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->tU:Lcom/google/android/gms/internal/bH;

    invoke-static {v0}, Lcom/google/android/gms/internal/bH;->Aj(Lcom/google/android/gms/internal/bH;)Lcom/google/android/gms/internal/cf;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ch;

    iget-object v5, p0, Lcom/google/android/gms/internal/bk;->tU:Lcom/google/android/gms/internal/bH;

    invoke-direct {v3, p0, v5, v1}, Lcom/google/android/gms/internal/ch;-><init>(Lcom/google/android/gms/internal/bk;Lcom/google/android/gms/internal/co;Lcom/google/android/gms/common/internal/c;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/cf;->BR(Lcom/google/android/gms/internal/br;)V

    goto/16 :goto_5
.end method
