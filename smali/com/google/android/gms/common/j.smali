.class public Lcom/google/android/gms/common/j;
.super Ljava/lang/Object;


# static fields
.field private static kG:Lcom/google/android/gms/common/j;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/j;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/j;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/l;->ht(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/google/android/gms/common/j;

    const-class v0, Lcom/google/android/gms/common/j;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/j;->kG:Lcom/google/android/gms/common/j;

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/common/j;->kG:Lcom/google/android/gms/common/j;

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/common/e;->nS(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/common/j;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/common/j;->kG:Lcom/google/android/gms/common/j;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method varargs nZ(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/l;)Lcom/google/android/gms/common/l;
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/google/android/gms/common/d;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/d;-><init>([B)V

    :goto_0
    array-length v2, p2

    if-lt v0, v2, :cond_2

    return-object v3

    :cond_0
    return-object v3

    :cond_1
    const-string/jumbo v0, "GoogleSignatureVerifier"

    const-string/jumbo v1, "Package has more than one signature."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2
    aget-object v2, p2, v0

    invoke-virtual {v2, v1}, Lcom/google/android/gms/common/l;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    aget-object v0, p2, v0

    return-object v0
.end method

.method public oa(Landroid/content/pm/PackageInfo;Z)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    :cond_0
    :goto_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_0

    if-nez p2, :cond_3

    new-array v2, v0, [Lcom/google/android/gms/common/l;

    sget-object v3, Lcom/google/android/gms/common/c;->kz:[Lcom/google/android/gms/common/l;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/common/j;->nZ(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/l;)Lcom/google/android/gms/common/l;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/google/android/gms/common/c;->kz:[Lcom/google/android/gms/common/l;

    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/common/j;->nZ(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/l;)Lcom/google/android/gms/common/l;

    move-result-object v2

    goto :goto_1
.end method

.method public ob(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2, v2}, Lcom/google/android/gms/common/j;->oa(Landroid/content/pm/PackageInfo;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2, v1}, Lcom/google/android/gms/common/j;->oa(Landroid/content/pm/PackageInfo;Z)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return v2

    :cond_0
    return v2

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/j;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/k;->ol(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "GoogleSignatureVerifier"

    const-string/jumbo v1, "Test-keys aren\'t accepted on this build."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    return v1
.end method
