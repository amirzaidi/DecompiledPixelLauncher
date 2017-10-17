.class public Lcom/google/android/gms/common/api/D;
.super Lcom/google/android/gms/common/api/E;


# instance fields
.field private final hE:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Landroid/support/v4/a/t;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/api/E;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/support/v4/a/t;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v4/a/t;->aib(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/a/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/ConnectionResult;

    iput-object v0, p0, Lcom/google/android/gms/common/api/D;->hE:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method
