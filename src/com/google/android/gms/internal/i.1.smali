.class public abstract Lcom/google/android/gms/internal/i;
.super Ljava/lang/Object;


# static fields
.field private static on:Ljava/lang/String;

.field private static final oq:Ljava/lang/Object;

.field private static or:Lcom/google/android/gms/internal/aZ;

.field private static ot:I


# instance fields
.field protected final oo:Ljava/lang/String;

.field private op:Ljava/lang/Object;

.field protected final os:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/i;->oq:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/i;->or:Lcom/google/android/gms/internal/aZ;

    const/4 v0, 0x0

    sput v0, Lcom/google/android/gms/internal/i;->ot:I

    const-string/jumbo v0, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    sput-object v0, Lcom/google/android/gms/internal/i;->on:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/i;->op:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/i;->oo:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/i;->os:Ljava/lang/Object;

    return-void
.end method

.method public static sh(Ljava/lang/String;Z)Lcom/google/android/gms/internal/i;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/aU;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/aU;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static si(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/i;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/aL;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/aL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sj(Landroid/content/Context;)V
    .locals 4

    sget-object v1, Lcom/google/android/gms/internal/i;->oq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/i;->or:Lcom/google/android/gms/internal/aZ;

    if-eqz v0, :cond_0

    :goto_0
    sget v0, Lcom/google/android/gms/internal/i;->ot:I

    if-eqz v0, :cond_1

    :goto_1
    monitor-exit v1

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/bi;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/bi;-><init>(Landroid/content/ContentResolver;)V

    sput-object v0, Lcom/google/android/gms/internal/i;->or:Lcom/google/android/gms/internal/aZ;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v2, "com.google.android.gms"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    sput v0, Lcom/google/android/gms/internal/i;->ot:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "GservicesValue"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic sk()Lcom/google/android/gms/internal/aZ;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/i;->or:Lcom/google/android/gms/internal/aZ;

    return-object v0
.end method

.method public static sm(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/internal/i;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/aS;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/aS;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static sn(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/internal/i;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/aQ;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/aQ;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/i;->op:Ljava/lang/Object;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/i;->oo:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/i;->sl(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/i;->op:Ljava/lang/Object;

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/i;->oo:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/i;->sl(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method protected abstract sl(Ljava/lang/String;)Ljava/lang/Object;
.end method
