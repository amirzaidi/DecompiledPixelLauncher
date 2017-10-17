.class Lcom/google/android/gms/common/internal/T;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/q;


# instance fields
.field final synthetic kf:Lcom/google/android/gms/common/api/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/T;->kf:Lcom/google/android/gms/common/api/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public kq(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/T;->kf:Lcom/google/android/gms/common/api/c;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/c;->gw(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
