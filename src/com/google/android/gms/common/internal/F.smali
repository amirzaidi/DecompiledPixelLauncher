.class abstract Lcom/google/android/gms/common/internal/F;
.super Ljava/lang/Object;


# instance fields
.field private gB:Ljava/lang/Object;

.field private gC:Z

.field final synthetic gD:Lcom/google/android/gms/common/internal/x;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/x;Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/F;->gD:Lcom/google/android/gms/common/internal/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/F;->gB:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/F;->gC:Z

    return-void
.end method


# virtual methods
.method protected abstract hg(Ljava/lang/Object;)V
.end method

.method protected abstract hj()V
.end method

.method public iA()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/F;->iz()V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/F;->gD:Lcom/google/android/gms/common/internal/x;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/x;->hQ(Lcom/google/android/gms/common/internal/x;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/F;->gD:Lcom/google/android/gms/common/internal/x;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/x;->hQ(Lcom/google/android/gms/common/internal/x;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public iy()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/F;->gB:Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/google/android/gms/common/internal/F;->gC:Z

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/F;->hj()V

    :goto_1
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/F;->gC:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/F;->iA()V

    return-void

    :cond_0
    :try_start_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Callback proxy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " being reused. This is not safe."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GmsClient"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/F;->hg(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/F;->hj()V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public iz()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/common/internal/F;->gB:Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
