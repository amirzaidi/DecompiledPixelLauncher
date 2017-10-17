.class public Lcom/google/android/gms/location/b;
.super Ljava/lang/Object;


# static fields
.field public static final BZ:Lcom/google/android/gms/location/c;

.field public static final Ca:Lcom/google/android/gms/location/d;

.field private static final Cb:Lcom/google/android/gms/common/api/r;

.field private static final Cc:Lcom/google/android/gms/common/api/l;

.field public static final Cd:Lcom/google/android/gms/common/api/h;

.field public static final Ce:Lcom/google/android/gms/location/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/r;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/r;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/b;->Cb:Lcom/google/android/gms/common/api/r;

    new-instance v0, Lcom/google/android/gms/location/p;

    invoke-direct {v0}, Lcom/google/android/gms/location/p;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/b;->Cc:Lcom/google/android/gms/common/api/l;

    new-instance v0, Lcom/google/android/gms/common/api/h;

    sget-object v1, Lcom/google/android/gms/location/b;->Cc:Lcom/google/android/gms/common/api/l;

    sget-object v2, Lcom/google/android/gms/location/b;->Cb:Lcom/google/android/gms/common/api/r;

    const-string/jumbo v3, "LocationServices.API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/h;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/r;)V

    sput-object v0, Lcom/google/android/gms/location/b;->Cd:Lcom/google/android/gms/common/api/h;

    new-instance v0, Lcom/google/android/gms/location/internal/p;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/p;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/b;->Ce:Lcom/google/android/gms/location/a;

    new-instance v0, Lcom/google/android/gms/location/internal/e;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/b;->Ca:Lcom/google/android/gms/location/d;

    new-instance v0, Lcom/google/android/gms/location/internal/b;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/b;->BZ:Lcom/google/android/gms/location/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GB(Lcom/google/android/gms/common/api/d;)Lcom/google/android/gms/location/internal/a;
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "GoogleApiClient parameter is required."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/l;->hq(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/location/b;->Cb:Lcom/google/android/gms/common/api/r;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/d;->dA(Lcom/google/android/gms/common/api/j;)Lcom/google/android/gms/common/api/i;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/a;

    if-nez v0, :cond_1

    :goto_1
    const-string/jumbo v2, "GoogleApiClient is not configured to use the LocationServices.API Api. Pass thisinto GoogleApiClient.Builder#addApi() to use this feature."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/l;->hv(ZLjava/lang/Object;)V

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
