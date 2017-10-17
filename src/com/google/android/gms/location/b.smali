.class public Lcom/google/android/gms/location/b;
.super Ljava/lang/Object;


# static fields
.field public static final DE:Lcom/google/android/gms/location/c;

.field public static final DF:Lcom/google/android/gms/location/d;

.field private static final DG:Lcom/google/android/gms/common/api/q;

.field private static final DH:Lcom/google/android/gms/common/api/j;

.field public static final DI:Lcom/google/android/gms/common/api/e;

.field public static final DJ:Lcom/google/android/gms/location/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/q;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/q;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/b;->DG:Lcom/google/android/gms/common/api/q;

    new-instance v0, Lcom/google/android/gms/location/p;

    invoke-direct {v0}, Lcom/google/android/gms/location/p;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/b;->DH:Lcom/google/android/gms/common/api/j;

    new-instance v0, Lcom/google/android/gms/common/api/e;

    sget-object v1, Lcom/google/android/gms/location/b;->DH:Lcom/google/android/gms/common/api/j;

    sget-object v2, Lcom/google/android/gms/location/b;->DG:Lcom/google/android/gms/common/api/q;

    const-string/jumbo v3, "LocationServices.API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/e;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/common/api/q;)V

    sput-object v0, Lcom/google/android/gms/location/b;->DI:Lcom/google/android/gms/common/api/e;

    new-instance v0, Lcom/google/android/gms/location/internal/p;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/p;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/b;->DJ:Lcom/google/android/gms/location/a;

    new-instance v0, Lcom/google/android/gms/location/internal/e;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/b;->DF:Lcom/google/android/gms/location/d;

    new-instance v0, Lcom/google/android/gms/location/internal/b;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/b;->DE:Lcom/google/android/gms/location/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Hu(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/location/internal/a;
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "GoogleApiClient parameter is required."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/l;->ke(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/location/b;->DG:Lcom/google/android/gms/common/api/q;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a;->gl(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/common/api/g;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/a;

    if-nez v0, :cond_1

    :goto_1
    const-string/jumbo v2, "GoogleApiClient is not configured to use the LocationServices.API Api. Pass thisinto GoogleApiClient.Builder#addApi() to use this feature."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/l;->kj(ZLjava/lang/Object;)V

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
