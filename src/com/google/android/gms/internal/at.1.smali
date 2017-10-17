.class public Lcom/google/android/gms/internal/at;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/clearcut/g;


# static fields
.field private static final sg:Lcom/google/android/gms/internal/ar;

.field private static final si:J

.field private static final sl:Ljava/lang/Object;

.field private static so:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private sh:Lcom/google/android/gms/common/api/a;

.field private sj:Ljava/util/concurrent/ScheduledFuture;

.field private final sk:Lcom/google/android/gms/common/a/a;

.field private final sm:Lcom/google/android/gms/internal/af;

.field private final sn:Ljava/lang/Runnable;

.field private final sp:Ljava/lang/Object;

.field private final sq:J

.field private sr:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/at;->sl:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ar;-><init>(Lcom/google/android/gms/internal/ag;)V

    sput-object v0, Lcom/google/android/gms/internal/at;->sg:Lcom/google/android/gms/internal/ar;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/at;->si:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/a/m;

    invoke-direct {v0}, Lcom/google/android/gms/common/a/m;-><init>()V

    sget-wide v2, Lcom/google/android/gms/internal/at;->si:J

    new-instance v1, Lcom/google/android/gms/internal/aj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/aj;-><init>()V

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/at;-><init>(Lcom/google/android/gms/common/a/a;JLcom/google/android/gms/internal/af;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/a/a;JLcom/google/android/gms/internal/af;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/at;->sp:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/at;->sr:J

    iput-object v2, p0, Lcom/google/android/gms/internal/at;->sj:Ljava/util/concurrent/ScheduledFuture;

    iput-object v2, p0, Lcom/google/android/gms/internal/at;->sh:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/internal/ag;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ag;-><init>(Lcom/google/android/gms/internal/at;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/at;->sn:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/google/android/gms/internal/at;->sk:Lcom/google/android/gms/common/a/a;

    iput-wide p2, p0, Lcom/google/android/gms/internal/at;->sq:J

    iput-object p4, p0, Lcom/google/android/gms/internal/at;->sm:Lcom/google/android/gms/internal/af;

    return-void
.end method

.method static synthetic uA(Lcom/google/android/gms/internal/at;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/at;->sr:J

    return-wide v0
.end method

.method private uB(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/internal/ah;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/at;->sg:Lcom/google/android/gms/internal/ar;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ar;->uo()V

    new-instance v0, Lcom/google/android/gms/internal/ah;

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/ah;-><init>(Lcom/google/android/gms/clearcut/LogEventParcelable;Lcom/google/android/gms/common/api/a;)V

    new-instance v1, Lcom/google/android/gms/internal/ae;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ae;-><init>(Lcom/google/android/gms/internal/at;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ah;->rX(Lcom/google/android/gms/common/api/t;)V

    return-object v0
.end method

.method static synthetic up(Lcom/google/android/gms/internal/at;Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/at;->sh:Lcom/google/android/gms/common/api/a;

    return-object p1
.end method

.method private uq()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/at;->sl:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/at;->so:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/internal/at;->so:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/am;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/am;-><init>(Lcom/google/android/gms/internal/at;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/at;->so:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static us(Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->Iw:Lcom/google/android/gms/clearcut/e;

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->Ir:Lcom/google/android/gms/clearcut/e;

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->Io:Lcom/google/android/gms/internal/h;

    invoke-static {v0}, Lcom/google/android/gms/internal/aC;->uV(Lcom/google/android/gms/internal/aC;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->Ip:[B

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->Io:Lcom/google/android/gms/internal/h;

    iget-object v0, v0, Lcom/google/android/gms/internal/h;->oy:[B

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->Io:Lcom/google/android/gms/internal/h;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->Iw:Lcom/google/android/gms/clearcut/e;

    invoke-interface {v1}, Lcom/google/android/gms/clearcut/e;->MB()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/h;->oy:[B

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->Io:Lcom/google/android/gms/internal/h;

    iget-object v0, v0, Lcom/google/android/gms/internal/h;->oB:[B

    array-length v0, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->Io:Lcom/google/android/gms/internal/h;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->Ir:Lcom/google/android/gms/clearcut/e;

    invoke-interface {v1}, Lcom/google/android/gms/clearcut/e;->MB()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/h;->oB:[B

    goto :goto_1
.end method

.method static synthetic ut(Lcom/google/android/gms/internal/at;)Lcom/google/android/gms/common/a/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/at;->sk:Lcom/google/android/gms/common/a/a;

    return-object v0
.end method

.method static synthetic uu(Lcom/google/android/gms/internal/at;)Lcom/google/android/gms/common/api/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/at;->sh:Lcom/google/android/gms/common/api/a;

    return-object v0
.end method

.method static synthetic uv(Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/at;->us(Lcom/google/android/gms/clearcut/LogEventParcelable;)V

    return-void
.end method

.method static synthetic uw()Lcom/google/android/gms/internal/ar;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/at;->sg:Lcom/google/android/gms/internal/ar;

    return-object v0
.end method

.method static synthetic ux(Lcom/google/android/gms/internal/at;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/at;->sp:Ljava/lang/Object;

    return-object v0
.end method

.method private uz(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/internal/as;)Lcom/google/android/gms/common/api/f;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/at;->uq()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/aa;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/aa;-><init>(Lcom/google/android/gms/internal/at;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/internal/as;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object p2
.end method


# virtual methods
.method public ur(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/f;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/at;->uB(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/internal/ah;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/at;->uz(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/internal/as;)Lcom/google/android/gms/common/api/f;

    move-result-object v0

    return-object v0
.end method

.method public uy(Landroid/content/Context;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/f;
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/at;->sp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/at;->sh:Lcom/google/android/gms/common/api/a;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/at;->sk:Lcom/google/android/gms/common/a/a;

    invoke-interface {v0}, Lcom/google/android/gms/common/a/a;->mh()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/at;->sq:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/at;->sr:J

    iget-object v0, p0, Lcom/google/android/gms/internal/at;->sj:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_1

    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/at;->uq()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/at;->sn:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/google/android/gms/internal/at;->sq:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/at;->sj:Ljava/util/concurrent/ScheduledFuture;

    iget-object v0, p0, Lcom/google/android/gms/internal/at;->sh:Lcom/google/android/gms/common/api/a;

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/at;->ur(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/f;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/at;->sm:Lcom/google/android/gms/internal/af;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/af;->ua(Landroid/content/Context;)Lcom/google/android/gms/common/api/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/at;->sh:Lcom/google/android/gms/common/api/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/at;->sh:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->gg()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/at;->sj:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
