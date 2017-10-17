.class final Lcom/google/android/gms/internal/an;
.super Lcom/google/android/gms/internal/ay;


# instance fields
.field private final rQ:Lcom/google/android/gms/clearcut/LogEventParcelable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/clearcut/LogEventParcelable;Lcom/google/android/gms/common/api/d;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ay;-><init>(Lcom/google/android/gms/common/api/d;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/an;->rQ:Lcom/google/android/gms/clearcut/LogEventParcelable;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/google/android/gms/internal/an;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/an;

    iget-object v0, p0, Lcom/google/android/gms/internal/an;->rQ:Lcom/google/android/gms/clearcut/LogEventParcelable;

    iget-object v1, p1, Lcom/google/android/gms/internal/an;->rQ:Lcom/google/android/gms/clearcut/LogEventParcelable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/clearcut/LogEventParcelable;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method protected synthetic rW(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/an;->uc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic rp(Lcom/google/android/gms/common/api/o;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/at;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/an;->ud(Lcom/google/android/gms/internal/at;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/an;->rQ:Lcom/google/android/gms/clearcut/LogEventParcelable;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "MethodImpl("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected uc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method

.method protected ud(Lcom/google/android/gms/internal/at;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/au;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/au;-><init>(Lcom/google/android/gms/internal/an;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/an;->rQ:Lcom/google/android/gms/clearcut/LogEventParcelable;

    invoke-static {v1}, Lcom/google/android/gms/internal/az;->uw(Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/internal/an;->rQ:Lcom/google/android/gms/clearcut/LogEventParcelable;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/at;->zza(Lcom/google/android/gms/internal/zzqc;Lcom/google/android/gms/clearcut/LogEventParcelable;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ClearcutLoggerApiImpl"

    const-string/jumbo v2, "derived ClearcutLogger.MessageProducer "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string/jumbo v1, "MessageProducer"

    const/16 v2, 0xa

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/an;->rs(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
