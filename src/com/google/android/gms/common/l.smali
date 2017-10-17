.class abstract Lcom/google/android/gms/common/l;
.super Lcom/google/android/gms/common/internal/zzs$zza;


# instance fields
.field private nI:I


# direct methods
.method protected constructor <init>([B)V
    .locals 6

    const/16 v5, 0x19

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzs$zza;-><init>()V

    array-length v1, p1

    if-ne v1, v5, :cond_0

    :goto_0
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/l;->nI:I

    return-void

    :cond_0
    array-length v1, p1

    array-length v2, p1

    invoke-static {p1, v0, v2, v0}, Lcom/google/android/gms/common/a/d;->mm([BIIZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x33

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Cert hash data has incorrect length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "):\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v3, "GoogleCertificates"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p1, v0, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    array-length v1, p1

    if-eq v1, v5, :cond_1

    :goto_1
    array-length v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x37

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "cert hash data has incorrect length. length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->ke(ZLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected static rf(Ljava/lang/String;)[B
    .locals 2

    :try_start_0
    const-string/jumbo v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    return v2

    :cond_1
    instance-of v0, p1, Lcom/google/android/gms/common/internal/zzs;

    if-eqz v0, :cond_0

    :try_start_0
    check-cast p1, Lcom/google/android/gms/common/internal/zzs;

    invoke-interface {p1}, Lcom/google/android/gms/common/internal/zzs;->zzarg()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/l;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/common/internal/zzs;->zzarf()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzag(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p0}, Lcom/google/android/gms/common/l;->qD()[B

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :cond_2
    return v2

    :cond_3
    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v0, "GoogleCertificates"

    const-string/jumbo v1, "iCertData failed to retrive data from remote"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/l;->nI:I

    return v0
.end method

.method abstract qD()[B
.end method

.method public zzarf()Lcom/google/android/gms/dynamic/zzd;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/l;->qD()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzal(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    return-object v0
.end method

.method public zzarg()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/l;->hashCode()I

    move-result v0

    return v0
.end method
