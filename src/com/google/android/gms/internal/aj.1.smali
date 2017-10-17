.class public Lcom/google/android/gms/internal/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/af;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ua(Landroid/content/Context;)Lcom/google/android/gms/common/api/a;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/b;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/clearcut/a;->HH:Lcom/google/android/gms/common/api/e;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/b;->gu(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->build()Lcom/google/android/gms/common/api/a;

    move-result-object v0

    return-object v0
.end method
