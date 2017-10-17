.class public Lcom/google/android/gms/internal/bq;
.super Lcom/google/android/gms/internal/bo;


# instance fields
.field private final ud:Landroid/util/SparseArray;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/aC;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bo;-><init>(Lcom/google/android/gms/internal/aC;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->ud:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->sC:Lcom/google/android/gms/internal/aC;

    const-string/jumbo v1, "AutoManageHelper"

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/internal/aC;->uH(Ljava/lang/String;Lcom/google/android/gms/internal/aJ;)V

    return-void
.end method

.method public static yH(Lcom/google/android/gms/internal/e;)Lcom/google/android/gms/internal/bq;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/internal/bq;->va(Lcom/google/android/gms/internal/e;)Lcom/google/android/gms/internal/aC;

    move-result-object v1

    const-string/jumbo v0, "AutoManageHelper"

    const-class v2, Lcom/google/android/gms/internal/bq;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/aC;->uG(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/aJ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/bq;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/bq;-><init>(Lcom/google/android/gms/internal/aC;)V

    return-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->ud:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->ud:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cz;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/cz;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/bo;->onStart()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/bq;->mStarted:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/bq;->ud:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xe

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "onStart "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AutoManageHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/google/android/gms/internal/bq;->tZ:Z

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->ud:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->ud:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cz;

    iget-object v0, v0, Lcom/google/android/gms/internal/cz;->xc:Lcom/google/android/gms/common/api/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->dv()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/gms/internal/bo;->onStop()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->ud:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->ud:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cz;

    iget-object v0, v0, Lcom/google/android/gms/internal/cz;->xc:Lcom/google/android/gms/common/api/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->dx()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected yC()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->ud:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->ud:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cz;

    iget-object v0, v0, Lcom/google/android/gms/internal/cz;->xc:Lcom/google/android/gms/common/api/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->dv()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public yF(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->ud:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cz;

    iget-object v1, p0, Lcom/google/android/gms/internal/bq;->ud:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cz;->Cj()V

    goto :goto_0
.end method

.method public yG(ILcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/f;)V
    .locals 4

    const/16 v3, 0x36

    const/4 v0, 0x0

    const-string/jumbo v1, "GoogleApiClient instance cannot be null"

    invoke-static {p2, v1}, Lcom/google/android/gms/common/internal/l;->ho(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/bq;->ud:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Already managing a GoogleApiClient with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->hv(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bq;->mStarted:Z

    iget-boolean v1, p0, Lcom/google/android/gms/internal/bq;->tZ:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "starting AutoManage for client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AutoManageHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/internal/cz;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/cz;-><init>(Lcom/google/android/gms/internal/bq;ILcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/f;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/bq;->ud:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bq;->mStarted:Z

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/bq;->tZ:Z

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "connecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AutoManageHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/d;->dv()V

    goto :goto_1
.end method

.method protected yz(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 3

    const-string/jumbo v0, "AutoManageHelper"

    const-string/jumbo v1, "Unresolved error while connecting client. Stopping auto-manage."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->ud:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cz;

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v1, "AutoManageHelper"

    const-string/jumbo v2, "AutoManageLifecycleHelper received onErrorResolutionFailed callback but no failing client ID is set"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/bq;->yF(I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/cz;->xd:Lcom/google/android/gms/common/api/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/f;->dQ(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method
