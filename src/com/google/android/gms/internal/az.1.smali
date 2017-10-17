.class public Lcom/google/android/gms/internal/az;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/clearcut/g;


# static fields
.field private static final sa:Lcom/google/android/gms/internal/ax;

.field private static final sc:J

.field private static final sf:Ljava/lang/Object;

.field private static si:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private sb:Lcom/google/android/gms/common/api/d;

.field private sd:Ljava/util/concurrent/ScheduledFuture;

.field private final se:Lcom/google/android/gms/common/a/a;

.field private final sg:Lcom/google/android/gms/internal/ak;

.field private final sh:Ljava/lang/Runnable;

.field private final sj:Ljava/lang/Object;

.field private final sk:J

.field private sl:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/az;->sf:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ax;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ax;-><init>(Lcom/google/android/gms/internal/am;)V

    sput-object v0, Lcom/google/android/gms/internal/az;->sa:Lcom/google/android/gms/internal/ax;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/az;->sc:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/a/m;

    invoke-direct {v0}, Lcom/google/android/gms/common/a/m;-><init>()V

    sget-wide v2, Lcom/google/android/gms/internal/az;->sc:J

    new-instance v1, Lcom/google/android/gms/internal/aq;

    invoke-direct {v1}, Lcom/google/android/gms/internal/aq;-><init>()V

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/az;-><init>(Lcom/google/android/gms/common/a/a;JLcom/google/android/gms/internal/ak;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/a/a;JLcom/google/android/gms/internal/ak;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/az;->sj:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/az;->sl:J

    iput-object v2, p0, Lcom/google/android/gms/internal/az;->sd:Ljava/util/concurrent/ScheduledFuture;

    iput-object v2, p0, Lcom/google/android/gms/internal/az;->sb:Lcom/google/android/gms/common/api/d;

    new-instance v0, Lcom/google/android/gms/internal/am;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/am;-><init>(Lcom/google/android/gms/internal/az;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/az;->sh:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/google/android/gms/internal/az;->se:Lcom/google/android/gms/common/a/a;

    iput-wide p2, p0, Lcom/google/android/gms/internal/az;->sk:J

    iput-object p4, p0, Lcom/google/android/gms/internal/az;->sg:Lcom/google/android/gms/internal/ak;

    return-void
.end method

.method private uA(Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/internal/ay;)Lcom/google/android/gms/common/api/c;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/az;->ur()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ag;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ag;-><init>(Lcom/google/android/gms/internal/az;Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/internal/ay;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object p2
.end method

.method static synthetic uB(Lcom/google/android/gms/internal/az;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/az;->sl:J

    return-wide v0
.end method

.method private uC(Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/internal/an;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/az;->sa:Lcom/google/android/gms/internal/ax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ax;->up()V

    new-instance v0, Lcom/google/android/gms/internal/an;

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/an;-><init>(Lcom/google/android/gms/clearcut/LogEventParcelable;Lcom/google/android/gms/common/api/d;)V

    new-instance v1, Lcom/google/android/gms/internal/al;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/al;-><init>(Lcom/google/android/gms/internal/az;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/an;->rV(Lcom/google/android/gms/common/api/u;)V

    return-object v0
.end method

.method static synthetic uq(Lcom/google/android/gms/internal/az;Lcom/google/android/gms/common/api/d;)Lcom/google/android/gms/common/api/d;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/az;->sb:Lcom/google/android/gms/common/api/d;

    return-object p1
.end method

.method private ur()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/az;->sf:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/az;->si:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/internal/az;->si:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/as;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/as;-><init>(Lcom/google/android/gms/internal/az;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/az;->si:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static ut(Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GR:Lcom/google/android/gms/clearcut/e;

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GM:Lcom/google/android/gms/clearcut/e;

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GJ:Lcom/google/android/gms/internal/h;

    invoke-static {v0}, Lcom/google/android/gms/internal/aI;->uW(Lcom/google/android/gms/internal/aI;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GK:[B

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GJ:Lcom/google/android/gms/internal/h;

    iget-object v0, v0, Lcom/google/android/gms/internal/h;->nW:[B

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GJ:Lcom/google/android/gms/internal/h;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GR:Lcom/google/android/gms/clearcut/e;

    invoke-interface {v1}, Lcom/google/android/gms/clearcut/e;->LI()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/h;->nW:[B

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GJ:Lcom/google/android/gms/internal/h;

    iget-object v0, v0, Lcom/google/android/gms/internal/h;->nZ:[B

    array-length v0, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GJ:Lcom/google/android/gms/internal/h;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GM:Lcom/google/android/gms/clearcut/e;

    invoke-interface {v1}, Lcom/google/android/gms/clearcut/e;->LI()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/h;->nZ:[B

    goto :goto_1
.end method

.method static synthetic uu(Lcom/google/android/gms/internal/az;)Lcom/google/android/gms/common/a/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/az;->se:Lcom/google/android/gms/common/a/a;

    return-object v0
.end method

.method static synthetic uv(Lcom/google/android/gms/internal/az;)Lcom/google/android/gms/common/api/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/az;->sb:Lcom/google/android/gms/common/api/d;

    return-object v0
.end method

.method static synthetic uw(Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/az;->ut(Lcom/google/android/gms/clearcut/LogEventParcelable;)V

    return-void
.end method

.method static synthetic ux()Lcom/google/android/gms/internal/ax;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/az;->sa:Lcom/google/android/gms/internal/ax;

    return-object v0
.end method

.method static synthetic uy(Lcom/google/android/gms/internal/az;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/az;->sj:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public us(Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/c;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/az;->uC(Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/internal/an;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/az;->uA(Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/internal/ay;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    return-object v0
.end method

.method public uz(Landroid/content/Context;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/c;
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/az;->sj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/az;->sb:Lcom/google/android/gms/common/api/d;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/az;->se:Lcom/google/android/gms/common/a/a;

    invoke-interface {v0}, Lcom/google/android/gms/common/a/a;->jt()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/az;->sk:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/az;->sl:J

    iget-object v0, p0, Lcom/google/android/gms/internal/az;->sd:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_1

    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/az;->ur()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/az;->sh:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/google/android/gms/internal/az;->sk:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/az;->sd:Ljava/util/concurrent/ScheduledFuture;

    iget-object v0, p0, Lcom/google/android/gms/internal/az;->sb:Lcom/google/android/gms/common/api/d;

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/az;->us(Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/az;->sg:Lcom/google/android/gms/internal/ak;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ak;->ub(Landroid/content/Context;)Lcom/google/android/gms/common/api/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/az;->sb:Lcom/google/android/gms/common/api/d;

    iget-object v0, p0, Lcom/google/android/gms/internal/az;->sb:Lcom/google/android/gms/common/api/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->dv()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/az;->sd:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
