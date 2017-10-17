.class final Lcom/google/android/gms/internal/cv;
.super Landroid/os/Handler;


# instance fields
.field final synthetic xI:Lcom/google/android/gms/internal/d;


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    iget v0, p1, Landroid/os/Message;->what:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x46

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "TransformationResultHandler received unknown message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TransformedResultImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/f;

    iget-object v1, p0, Lcom/google/android/gms/internal/cv;->xI:Lcom/google/android/gms/internal/d;

    invoke-static {v1}, Lcom/google/android/gms/internal/d;->rC(Lcom/google/android/gms/internal/d;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    if-eqz v0, :cond_0

    :try_start_0
    instance-of v2, v0, Lcom/google/android/gms/internal/bm;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/cv;->xI:Lcom/google/android/gms/internal/d;

    invoke-static {v2}, Lcom/google/android/gms/internal/d;->rG(Lcom/google/android/gms/internal/d;)Lcom/google/android/gms/internal/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/d;->rH(Lcom/google/android/gms/common/api/f;)V

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cv;->xI:Lcom/google/android/gms/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/internal/d;->rG(Lcom/google/android/gms/internal/d;)Lcom/google/android/gms/internal/d;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const-string/jumbo v3, "Transform returned null"

    const/16 v4, 0xd

    invoke-direct {v2, v4, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/d;->rD(Lcom/google/android/gms/internal/d;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/cv;->xI:Lcom/google/android/gms/internal/d;

    invoke-static {v2}, Lcom/google/android/gms/internal/d;->rG(Lcom/google/android/gms/internal/d;)Lcom/google/android/gms/internal/d;

    move-result-object v2

    check-cast v0, Lcom/google/android/gms/internal/bm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bm;->yI()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/d;->rD(Lcom/google/android/gms/internal/d;Lcom/google/android/gms/common/api/Status;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, "TransformedResultImpl"

    const-string/jumbo v4, "Runtime exception on the transformation worker thread: "

    if-nez v2, :cond_2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
