.class final Lcom/google/android/gms/common/internal/s;
.super Lcom/google/android/gms/common/internal/i;


# instance fields
.field public final fI:Landroid/os/IBinder;

.field final synthetic fJ:Lcom/google/android/gms/common/internal/x;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/x;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/s;->fJ:Lcom/google/android/gms/common/internal/x;

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/common/internal/i;-><init>(Lcom/google/android/gms/common/internal/x;ILandroid/os/Bundle;)V

    iput-object p3, p0, Lcom/google/android/gms/common/internal/s;->fI:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method protected hh()Z
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/s;->fI:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/s;->fJ:Lcom/google/android/gms/common/internal/x;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/x;->gx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/s;->fJ:Lcom/google/android/gms/common/internal/x;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/s;->fI:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/x;->gz(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    return v5

    :catch_0
    move-exception v0

    const-string/jumbo v0, "GmsClient"

    const-string/jumbo v1, "service probably died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/internal/s;->fJ:Lcom/google/android/gms/common/internal/x;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/x;->gx()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "service descriptor mismatch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " vs. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "GmsClient"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/internal/s;->fJ:Lcom/google/android/gms/common/internal/x;

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/gms/common/internal/x;->id(Lcom/google/android/gms/common/internal/x;IILandroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/s;->fJ:Lcom/google/android/gms/common/internal/x;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/x;->ig()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/s;->fJ:Lcom/google/android/gms/common/internal/x;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/x;->ia(Lcom/google/android/gms/common/internal/x;)Lcom/google/android/gms/common/internal/B;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/common/internal/s;->fJ:Lcom/google/android/gms/common/internal/x;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/x;->ia(Lcom/google/android/gms/common/internal/x;)Lcom/google/android/gms/common/internal/B;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/internal/B;->ir(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected hi(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/s;->fJ:Lcom/google/android/gms/common/internal/x;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/x;->hT(Lcom/google/android/gms/common/internal/x;)Lcom/google/android/gms/common/internal/q;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/s;->fJ:Lcom/google/android/gms/common/internal/x;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/x;->hV(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/s;->fJ:Lcom/google/android/gms/common/internal/x;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/x;->hT(Lcom/google/android/gms/common/internal/x;)Lcom/google/android/gms/common/internal/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/q;->hC(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method
