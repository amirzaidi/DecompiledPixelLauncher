.class Lcom/google/android/gms/internal/ar;
.super Ljava/lang/Object;


# instance fields
.field final rS:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ar;->rS:Landroid/content/ContentResolver;

    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ar;->uh(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ar;->rS:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/google/android/gms/internal/ar;->rS:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "gms:playlog:service:sampling_"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/aY;->xo(Landroid/content/ContentResolver;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static uh(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/internal/av;->rX:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/av;->rX:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v1, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/av;->rX:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method uf()J
    .locals 4

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/ar;->rS:Landroid/content/ContentResolver;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ar;->rS:Landroid/content/ContentResolver;

    const-string/jumbo v3, "android_id"

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/gms/internal/aY;->xi(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method ug(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ar;->rS:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ar;->rS:Landroid/content/ContentResolver;

    const-string/jumbo v0, "gms:playlog:service:sampling_"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/aY;->xg(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
