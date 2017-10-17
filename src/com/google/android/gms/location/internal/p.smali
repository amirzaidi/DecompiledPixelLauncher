.class public Lcom/google/android/gms/location/internal/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public FK(Lcom/google/android/gms/common/api/d;)Landroid/location/Location;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/location/b;->GB(Lcom/google/android/gms/common/api/d;)Lcom/google/android/gms/location/internal/a;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/a;->ER()Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method
