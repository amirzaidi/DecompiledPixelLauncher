.class public Lcom/google/android/gms/internal/aq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ak;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ub(Landroid/content/Context;)Lcom/google/android/gms/common/api/d;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/e;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/e;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/clearcut/a;->Gc:Lcom/google/android/gms/common/api/h;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/e;->dO(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/common/api/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/e;->build()Lcom/google/android/gms/common/api/d;

    move-result-object v0

    return-object v0
.end method
