.class public abstract Lcom/google/android/gms/common/api/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final C(Lcom/google/android/gms/common/api/b;)V
    .locals 5

    invoke-interface {p1}, Lcom/google/android/gms/common/api/b;->dr()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->dF()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/w;->ex(Lcom/google/android/gms/common/api/Status;)V

    instance-of v1, p1, Lcom/google/android/gms/common/api/y;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/w;->ey(Lcom/google/android/gms/common/api/b;)V

    goto :goto_0

    :cond_1
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/api/y;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/android/gms/common/api/y;->eC()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x12

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Unable to release "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ResultCallbacks"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public abstract ex(Lcom/google/android/gms/common/api/Status;)V
.end method

.method public abstract ey(Lcom/google/android/gms/common/api/b;)V
.end method
