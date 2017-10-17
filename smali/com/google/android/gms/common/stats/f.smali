.class public Lcom/google/android/gms/common/stats/f;
.super Ljava/lang/Object;


# instance fields
.field private final jp:J

.field private final jq:I

.field private final jr:Landroid/support/v4/a/k;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0xa

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/google/android/gms/common/stats/f;->jp:J

    iput v2, p0, Lcom/google/android/gms/common/stats/f;->jq:I

    new-instance v0, Landroid/support/v4/a/k;

    invoke-direct {v0, v2}, Landroid/support/v4/a/k;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/stats/f;->jr:Landroid/support/v4/a/k;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/google/android/gms/common/stats/f;->jp:J

    iput p1, p0, Lcom/google/android/gms/common/stats/f;->jq:I

    new-instance v0, Landroid/support/v4/a/k;

    invoke-direct {v0}, Landroid/support/v4/a/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/stats/f;->jr:Landroid/support/v4/a/k;

    return-void
.end method

.method private mv(JJ)V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/stats/f;->jr:Landroid/support/v4/a/k;

    invoke-virtual {v0}, Landroid/support/v4/a/k;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-gez v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/stats/f;->jr:Landroid/support/v4/a/k;

    invoke-virtual {v0, v2}, Landroid/support/v4/a/k;->ahi(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, p3, v4

    cmp-long v0, v4, p1

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/f;->jr:Landroid/support/v4/a/k;

    invoke-virtual {v0, v2}, Landroid/support/v4/a/k;->ahc(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public mt(Ljava/lang/String;)Ljava/lang/Long;
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/f;->jp:J

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/common/stats/f;->jr:Landroid/support/v4/a/k;

    invoke-virtual {v4}, Landroid/support/v4/a/k;->size()I

    move-result v4

    iget v5, p0, Lcom/google/android/gms/common/stats/f;->jq:I

    if-ge v4, v5, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/stats/f;->jr:Landroid/support/v4/a/k;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/a/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    monitor-exit p0

    return-object v0

    :cond_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/common/stats/f;->mv(JJ)V

    const-wide/16 v4, 0x2

    div-long/2addr v0, v4

    iget v4, p0, Lcom/google/android/gms/common/stats/f;->jq:I

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x5e

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "The max capacity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not enough. Current durationThreshold is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ConnectionTracker"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public mu(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/stats/f;->jr:Landroid/support/v4/a/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
