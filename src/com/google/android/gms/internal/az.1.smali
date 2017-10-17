.class public Lcom/google/android/gms/internal/az;
.super Ljava/lang/Object;


# static fields
.field private static sA:Lcom/google/android/gms/internal/az;


# instance fields
.field private sz:Lcom/google/android/gms/internal/aW;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/az;

    invoke-direct {v0}, Lcom/google/android/gms/internal/az;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/az;->sA:Lcom/google/android/gms/internal/az;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/az;->sz:Lcom/google/android/gms/internal/aW;

    return-void
.end method

.method public static uR(Landroid/content/Context;)Lcom/google/android/gms/internal/aW;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/az;->sA:Lcom/google/android/gms/internal/az;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/az;->uS(Landroid/content/Context;)Lcom/google/android/gms/internal/aW;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized uS(Landroid/content/Context;)Lcom/google/android/gms/internal/aW;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/az;->sz:Lcom/google/android/gms/internal/aW;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/az;->sz:Lcom/google/android/gms/internal/aW;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/aW;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/aW;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/az;->sz:Lcom/google/android/gms/internal/aW;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
