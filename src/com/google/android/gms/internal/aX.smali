.class Lcom/google/android/gms/internal/aX;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic tC:Lcom/google/android/gms/internal/av;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/av;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aX;->tC:Lcom/google/android/gms/internal/av;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const-class v1, Lcom/google/android/gms/internal/aS;

    const-class v0, Lcom/google/android/gms/internal/aS;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/aS;->tx:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/aS;->xl(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/aS;->ty:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aX;->tC:Lcom/google/android/gms/internal/av;

    iget-object v2, v0, Lcom/google/android/gms/internal/av;->st:Landroid/content/ContentResolver;

    sget-object v0, Lcom/google/android/gms/internal/aS;->ty:Ljava/util/HashSet;

    sget-object v3, Lcom/google/android/gms/internal/aS;->ty:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/aS;->xn(Landroid/content/ContentResolver;[Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
