.class public Lcom/google/android/gms/internal/bQ;
.super Ljava/lang/Object;


# static fields
.field private static final wi:[Lcom/google/android/gms/internal/b;


# instance fields
.field private we:Lcom/google/android/gms/internal/cr;

.field private wf:Lcom/google/android/gms/common/api/i;

.field final wg:Ljava/util/Set;

.field private final wh:Lcom/google/android/gms/internal/g;

.field private final wj:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/b;

    sput-object v0, Lcom/google/android/gms/internal/bQ;->wi:[Lcom/google/android/gms/internal/b;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bQ;->wg:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/internal/cn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cn;-><init>(Lcom/google/android/gms/internal/bQ;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bQ;->wh:Lcom/google/android/gms/internal/g;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/bQ;->we:Lcom/google/android/gms/internal/cr;

    new-instance v0, Landroid/support/v4/a/t;

    invoke-direct {v0}, Landroid/support/v4/a/t;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bQ;->wj:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/bQ;->wj:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bQ;->wg:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/internal/cn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cn;-><init>(Lcom/google/android/gms/internal/bQ;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bQ;->wh:Lcom/google/android/gms/internal/g;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/bQ;->we:Lcom/google/android/gms/internal/cr;

    iput-object p1, p0, Lcom/google/android/gms/internal/bQ;->wj:Ljava/util/Map;

    return-void
.end method

.method private static BB(Lcom/google/android/gms/internal/b;Lcom/google/android/gms/common/api/i;Landroid/os/IBinder;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/b;->rW()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/b;->rv(Lcom/google/android/gms/internal/g;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/b;->cancel()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/b;->rS()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/i;->gQ(I)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/bF;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/bF;-><init>(Lcom/google/android/gms/internal/b;Lcom/google/android/gms/common/api/i;Landroid/os/IBinder;Lcom/google/android/gms/internal/cn;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/b;->rv(Lcom/google/android/gms/internal/g;)V

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/bF;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/bF;-><init>(Lcom/google/android/gms/internal/b;Lcom/google/android/gms/common/api/i;Landroid/os/IBinder;Lcom/google/android/gms/internal/cn;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/b;->rv(Lcom/google/android/gms/internal/g;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/b;->cancel()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/b;->rS()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/i;->gQ(I)V

    goto :goto_0
.end method

.method static synthetic BC(Lcom/google/android/gms/internal/bQ;)Lcom/google/android/gms/common/api/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bQ;->wf:Lcom/google/android/gms/common/api/i;

    return-object v0
.end method

.method static synthetic By(Lcom/google/android/gms/internal/bQ;)Lcom/google/android/gms/internal/cr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bQ;->we:Lcom/google/android/gms/internal/cr;

    return-object v0
.end method


# virtual methods
.method BA(Lcom/google/android/gms/internal/b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bQ;->wg:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bQ;->wh:Lcom/google/android/gms/internal/g;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/b;->rv(Lcom/google/android/gms/internal/g;)V

    return-void
.end method

.method public BD()V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/bQ;->wg:Ljava/util/Set;

    sget-object v2, Lcom/google/android/gms/internal/bQ;->wi:[Lcom/google/android/gms/internal/b;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/b;

    array-length v3, v0

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    return-void

    :cond_0
    aget-object v4, v0, v2

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/b;->rv(Lcom/google/android/gms/internal/g;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/b;->rS()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/b;->rw()V

    iget-object v1, p0, Lcom/google/android/gms/internal/bQ;->wj:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/b;->ro()Lcom/google/android/gms/common/api/h;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/g;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/g;->gK()Landroid/os/IBinder;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/gms/internal/bQ;->wf:Lcom/google/android/gms/common/api/i;

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/bQ;->BB(Lcom/google/android/gms/internal/b;Lcom/google/android/gms/common/api/i;Landroid/os/IBinder;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/bQ;->wg:Ljava/util/Set;

    invoke-interface {v1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/b;->rT()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/bQ;->wg:Ljava/util/Set;

    invoke-interface {v1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public Bv()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/bQ;->wg:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/internal/bQ;->wi:[Lcom/google/android/gms/internal/b;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/b;

    array-length v3, v0

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_0

    return v2

    :cond_0
    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/b;->rW()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public Bw(Ljava/io/PrintWriter;)V
    .locals 2

    const-string/jumbo v0, " mUnconsumedApiCalls.size()="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bQ;->wg:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public Bx()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/bQ;->wg:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/internal/bQ;->wi:[Lcom/google/android/gms/internal/b;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/b;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    aget-object v3, v0, v1

    new-instance v4, Lcom/google/android/gms/common/api/Status;

    const-string/jumbo v5, "The connection to Google Play services was lost"

    const/16 v6, 0x8

    invoke-direct {v4, v6, v5}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/b;->rQ(Lcom/google/android/gms/common/api/Status;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public Bz(Lcom/google/android/gms/internal/cr;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bQ;->wg:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/bQ;->we:Lcom/google/android/gms/internal/cr;

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/cr;->Ch()V

    goto :goto_0
.end method
