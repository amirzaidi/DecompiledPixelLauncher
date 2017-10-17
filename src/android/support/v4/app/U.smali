.class final Landroid/support/v4/app/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/c/d;
.implements Landroid/support/v4/c/c;


# instance fields
.field ZY:Z

.field ZZ:Z

.field final aaa:Landroid/os/Bundle;

.field aab:Z

.field final aac:I

.field aad:Landroid/support/v4/c/b;

.field aae:Z

.field aaf:Landroid/support/v4/app/U;

.field aag:Landroid/support/v4/app/ay;

.field final synthetic aah:Landroid/support/v4/app/aU;

.field aai:Z

.field aaj:Ljava/lang/Object;

.field aak:Z

.field mDestroyed:Z

.field mStarted:Z


# virtual methods
.method ank()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 275
    sget-boolean v0, Landroid/support/v4/app/aU;->DEBUG:Z

    if-nez v0, :cond_0

    .line 276
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/U;->aai:Z

    .line 277
    iget-boolean v0, p0, Landroid/support/v4/app/U;->mStarted:Z

    iput-boolean v0, p0, Landroid/support/v4/app/U;->aae:Z

    .line 278
    iput-boolean v2, p0, Landroid/support/v4/app/U;->mStarted:Z

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/U;->aag:Landroid/support/v4/app/ay;

    .line 280
    return-void

    .line 275
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  Retaining: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method anl()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 308
    iget-boolean v0, p0, Landroid/support/v4/app/U;->mStarted:Z

    if-nez v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/U;->ZZ:Z

    if-eqz v0, :cond_0

    .line 310
    iput-boolean v1, p0, Landroid/support/v4/app/U;->ZZ:Z

    .line 311
    iget-boolean v0, p0, Landroid/support/v4/app/U;->ZY:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/U;->aai:Z

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Landroid/support/v4/app/U;->aad:Landroid/support/v4/c/b;

    iget-object v1, p0, Landroid/support/v4/app/U;->aaj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/U;->anm(Landroid/support/v4/c/b;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method anm(Landroid/support/v4/c/b;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 467
    iget-object v1, p0, Landroid/support/v4/app/U;->aag:Landroid/support/v4/app/ay;

    if-nez v1, :cond_0

    .line 484
    :goto_0
    return-void

    .line 469
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/U;->aah:Landroid/support/v4/app/aU;

    iget-object v1, v1, Landroid/support/v4/app/aU;->aek:Landroid/support/v4/app/r;

    if-nez v1, :cond_1

    move-object v1, v0

    .line 474
    :goto_1
    :try_start_0
    sget-boolean v0, Landroid/support/v4/app/aU;->DEBUG:Z

    if-nez v0, :cond_2

    .line 476
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/U;->aag:Landroid/support/v4/app/ay;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/app/ay;->aod(Landroid/support/v4/c/b;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    iget-object v0, p0, Landroid/support/v4/app/U;->aah:Landroid/support/v4/app/aU;

    iget-object v0, v0, Landroid/support/v4/app/aU;->aek:Landroid/support/v4/app/r;

    if-nez v0, :cond_3

    .line 482
    :goto_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/U;->aak:Z

    goto :goto_0

    .line 470
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/U;->aah:Landroid/support/v4/app/aU;

    iget-object v0, v0, Landroid/support/v4/app/aU;->aek:Landroid/support/v4/app/r;

    iget-object v0, v0, Landroid/support/v4/app/r;->Zm:Landroid/support/v4/app/aR;

    iget-object v0, v0, Landroid/support/v4/app/aR;->adu:Ljava/lang/String;

    .line 471
    iget-object v1, p0, Landroid/support/v4/app/U;->aah:Landroid/support/v4/app/aU;

    iget-object v1, v1, Landroid/support/v4/app/aU;->aek:Landroid/support/v4/app/r;

    iget-object v1, v1, Landroid/support/v4/app/r;->Zm:Landroid/support/v4/app/aR;

    const-string/jumbo v2, "onLoadFinished"

    iput-object v2, v1, Landroid/support/v4/app/aR;->adu:Ljava/lang/String;

    move-object v1, v0

    goto :goto_1

    .line 474
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  onLoadFinished in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "LoaderManager"

    .line 475
    invoke-virtual {p1, p2}, Landroid/support/v4/c/b;->asn(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 478
    :catchall_0
    move-exception v0

    iget-object v2, p0, Landroid/support/v4/app/U;->aah:Landroid/support/v4/app/aU;

    iget-object v2, v2, Landroid/support/v4/app/aU;->aek:Landroid/support/v4/app/r;

    if-nez v2, :cond_4

    .line 479
    :goto_4
    throw v0

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/U;->aah:Landroid/support/v4/app/aU;

    iget-object v0, v0, Landroid/support/v4/app/aU;->aek:Landroid/support/v4/app/r;

    iget-object v0, v0, Landroid/support/v4/app/r;->Zm:Landroid/support/v4/app/aR;

    iput-object v1, v0, Landroid/support/v4/app/aR;->adu:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iget-object v2, p0, Landroid/support/v4/app/U;->aah:Landroid/support/v4/app/aU;

    iget-object v2, v2, Landroid/support/v4/app/aU;->aek:Landroid/support/v4/app/r;

    iget-object v2, v2, Landroid/support/v4/app/r;->Zm:Landroid/support/v4/app/aR;

    iput-object v1, v2, Landroid/support/v4/app/aR;->adu:Ljava/lang/String;

    goto :goto_4
.end method

.method ann()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 283
    iget-boolean v0, p0, Landroid/support/v4/app/U;->aai:Z

    if-nez v0, :cond_2

    .line 296
    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroid/support/v4/app/U;->mStarted:Z

    if-nez v0, :cond_4

    .line 305
    :cond_1
    :goto_1
    return-void

    .line 284
    :cond_2
    sget-boolean v0, Landroid/support/v4/app/aU;->DEBUG:Z

    if-nez v0, :cond_3

    .line 285
    :goto_2
    iput-boolean v2, p0, Landroid/support/v4/app/U;->aai:Z

    .line 286
    iget-boolean v0, p0, Landroid/support/v4/app/U;->mStarted:Z

    iget-boolean v1, p0, Landroid/support/v4/app/U;->aae:Z

    if-eq v0, v1, :cond_0

    .line 287
    iget-boolean v0, p0, Landroid/support/v4/app/U;->mStarted:Z

    if-nez v0, :cond_0

    .line 291
    invoke-virtual {p0}, Landroid/support/v4/app/U;->stop()V

    goto :goto_0

    .line 284
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  Finished Retaining: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 296
    :cond_4
    iget-boolean v0, p0, Landroid/support/v4/app/U;->ZY:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/U;->ZZ:Z

    if-nez v0, :cond_1

    .line 303
    iget-object v0, p0, Landroid/support/v4/app/U;->aad:Landroid/support/v4/c/b;

    iget-object v1, p0, Landroid/support/v4/app/U;->aaj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/U;->anm(Landroid/support/v4/c/b;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method ano()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 345
    sget-boolean v1, Landroid/support/v4/app/aU;->DEBUG:Z

    if-nez v1, :cond_1

    .line 346
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/U;->mDestroyed:Z

    .line 347
    iget-boolean v1, p0, Landroid/support/v4/app/U;->aak:Z

    .line 348
    iput-boolean v4, p0, Landroid/support/v4/app/U;->aak:Z

    .line 349
    iget-object v2, p0, Landroid/support/v4/app/U;->aag:Landroid/support/v4/app/ay;

    if-nez v2, :cond_2

    .line 364
    :cond_0
    :goto_1
    iput-object v0, p0, Landroid/support/v4/app/U;->aag:Landroid/support/v4/app/ay;

    .line 365
    iput-object v0, p0, Landroid/support/v4/app/U;->aaj:Ljava/lang/Object;

    .line 366
    iput-boolean v4, p0, Landroid/support/v4/app/U;->ZY:Z

    .line 367
    iget-object v0, p0, Landroid/support/v4/app/U;->aad:Landroid/support/v4/c/b;

    if-nez v0, :cond_6

    .line 375
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/U;->aaf:Landroid/support/v4/app/U;

    if-nez v0, :cond_8

    .line 378
    :goto_3
    return-void

    .line 345
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Destroying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LoaderManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 349
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/U;->aad:Landroid/support/v4/c/b;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/support/v4/app/U;->ZY:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 350
    sget-boolean v1, Landroid/support/v4/app/aU;->DEBUG:Z

    if-nez v1, :cond_3

    .line 352
    :goto_4
    iget-object v1, p0, Landroid/support/v4/app/U;->aah:Landroid/support/v4/app/aU;

    iget-object v1, v1, Landroid/support/v4/app/aU;->aek:Landroid/support/v4/app/r;

    if-nez v1, :cond_4

    move-object v1, v0

    .line 357
    :goto_5
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/U;->aag:Landroid/support/v4/app/ay;

    iget-object v3, p0, Landroid/support/v4/app/U;->aad:Landroid/support/v4/c/b;

    invoke-interface {v2, v3}, Landroid/support/v4/app/ay;->aoc(Landroid/support/v4/c/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    iget-object v2, p0, Landroid/support/v4/app/U;->aah:Landroid/support/v4/app/aU;

    iget-object v2, v2, Landroid/support/v4/app/aU;->aek:Landroid/support/v4/app/r;

    if-eqz v2, :cond_0

    .line 360
    iget-object v2, p0, Landroid/support/v4/app/U;->aah:Landroid/support/v4/app/aU;

    iget-object v2, v2, Landroid/support/v4/app/aU;->aek:Landroid/support/v4/app/r;

    iget-object v2, v2, Landroid/support/v4/app/r;->Zm:Landroid/support/v4/app/aR;

    iput-object v1, v2, Landroid/support/v4/app/aR;->adu:Ljava/lang/String;

    goto :goto_1

    .line 350
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Resetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LoaderManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 353
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/U;->aah:Landroid/support/v4/app/aU;

    iget-object v1, v1, Landroid/support/v4/app/aU;->aek:Landroid/support/v4/app/r;

    iget-object v1, v1, Landroid/support/v4/app/r;->Zm:Landroid/support/v4/app/aR;

    iget-object v1, v1, Landroid/support/v4/app/aR;->adu:Ljava/lang/String;

    .line 354
    iget-object v2, p0, Landroid/support/v4/app/U;->aah:Landroid/support/v4/app/aU;

    iget-object v2, v2, Landroid/support/v4/app/aU;->aek:Landroid/support/v4/app/r;

    iget-object v2, v2, Landroid/support/v4/app/r;->Zm:Landroid/support/v4/app/aR;

    const-string/jumbo v3, "onLoaderReset"

    iput-object v3, v2, Landroid/support/v4/app/aR;->adu:Ljava/lang/String;

    goto :goto_5

    .line 359
    :catchall_0
    move-exception v0

    iget-object v2, p0, Landroid/support/v4/app/U;->aah:Landroid/support/v4/app/aU;

    iget-object v2, v2, Landroid/support/v4/app/aU;->aek:Landroid/support/v4/app/r;

    if-nez v2, :cond_5

    .line 360
    :goto_6
    throw v0

    :cond_5
    iget-object v2, p0, Landroid/support/v4/app/U;->aah:Landroid/support/v4/app/aU;

    iget-object v2, v2, Landroid/support/v4/app/aU;->aek:Landroid/support/v4/app/r;

    iget-object v2, v2, Landroid/support/v4/app/r;->Zm:Landroid/support/v4/app/aR;

    iput-object v1, v2, Landroid/support/v4/app/aR;->adu:Ljava/lang/String;

    goto :goto_6

    .line 368
    :cond_6
    iget-boolean v0, p0, Landroid/support/v4/app/U;->aab:Z

    if-nez v0, :cond_7

    .line 373
    :goto_7
    iget-object v0, p0, Landroid/support/v4/app/U;->aad:Landroid/support/v4/c/b;

    invoke-virtual {v0}, Landroid/support/v4/c/b;->reset()V

    goto/16 :goto_2

    .line 369
    :cond_7
    iput-boolean v4, p0, Landroid/support/v4/app/U;->aab:Z

    .line 370
    iget-object v0, p0, Landroid/support/v4/app/U;->aad:Landroid/support/v4/c/b;

    invoke-virtual {v0, p0}, Landroid/support/v4/c/b;->ask(Landroid/support/v4/c/d;)V

    .line 371
    iget-object v0, p0, Landroid/support/v4/app/U;->aad:Landroid/support/v4/c/b;

    invoke-virtual {v0, p0}, Landroid/support/v4/c/b;->asi(Landroid/support/v4/c/c;)V

    goto :goto_7

    .line 376
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/U;->aaf:Landroid/support/v4/app/U;

    invoke-virtual {v0}, Landroid/support/v4/app/U;->ano()V

    goto/16 :goto_3
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 500
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/U;->aac:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 501
    const-string/jumbo v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/U;->aaa:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 502
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/U;->aag:Landroid/support/v4/app/ay;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 503
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/U;->aad:Landroid/support/v4/c/b;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 504
    iget-object v0, p0, Landroid/support/v4/app/U;->aad:Landroid/support/v4/c/b;

    if-nez v0, :cond_1

    .line 507
    :goto_0
    iget-boolean v0, p0, Landroid/support/v4/app/U;->ZY:Z

    if-eqz v0, :cond_2

    .line 508
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHaveData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/U;->ZY:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 509
    const-string/jumbo v0, "  mDeliveredData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/U;->aak:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 510
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/U;->aaj:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 512
    :goto_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/U;->mStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 513
    const-string/jumbo v0, " mReportNextStart="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/U;->ZZ:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 514
    const-string/jumbo v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/U;->mDestroyed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 515
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/U;->aai:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 516
    const-string/jumbo v0, " mRetainingStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/U;->aae:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 517
    const-string/jumbo v0, " mListenerRegistered="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/U;->aab:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 518
    iget-object v0, p0, Landroid/support/v4/app/U;->aaf:Landroid/support/v4/app/U;

    if-nez v0, :cond_3

    .line 523
    :goto_2
    return-void

    .line 505
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/U;->aad:Landroid/support/v4/c/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/c/b;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 507
    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/app/U;->aak:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 519
    :cond_3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Pending Loader "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Landroid/support/v4/app/U;->aaf:Landroid/support/v4/app/U;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Landroid/support/v4/app/U;->aaf:Landroid/support/v4/app/U;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/U;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_2
.end method

.method start()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 239
    iget-boolean v0, p0, Landroid/support/v4/app/U;->aai:Z

    if-nez v0, :cond_2

    .line 247
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/U;->mStarted:Z

    if-nez v0, :cond_3

    .line 252
    iput-boolean v3, p0, Landroid/support/v4/app/U;->mStarted:Z

    .line 254
    sget-boolean v0, Landroid/support/v4/app/aU;->DEBUG:Z

    if-nez v0, :cond_4

    .line 255
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/U;->aad:Landroid/support/v4/c/b;

    if-eqz v0, :cond_5

    .line 258
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/U;->aad:Landroid/support/v4/c/b;

    if-nez v0, :cond_6

    .line 272
    :goto_2
    return-void

    .line 239
    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/app/U;->aae:Z

    if-eqz v0, :cond_0

    .line 243
    iput-boolean v3, p0, Landroid/support/v4/app/U;->mStarted:Z

    .line 244
    return-void

    .line 249
    :cond_3
    return-void

    .line 254
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  Starting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 255
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/U;->aag:Landroid/support/v4/app/ay;

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Landroid/support/v4/app/U;->aag:Landroid/support/v4/app/ay;

    iget v1, p0, Landroid/support/v4/app/U;->aac:I

    iget-object v2, p0, Landroid/support/v4/app/U;->aaa:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Landroid/support/v4/app/ay;->aob(ILandroid/os/Bundle;)Landroid/support/v4/c/b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/U;->aad:Landroid/support/v4/c/b;

    goto :goto_1

    .line 259
    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/U;->aad:Landroid/support/v4/c/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-nez v0, :cond_8

    .line 265
    :cond_7
    iget-boolean v0, p0, Landroid/support/v4/app/U;->aab:Z

    if-eqz v0, :cond_9

    .line 270
    :goto_3
    iget-object v0, p0, Landroid/support/v4/app/U;->aad:Landroid/support/v4/c/b;

    invoke-virtual {v0}, Landroid/support/v4/c/b;->asj()V

    goto :goto_2

    .line 259
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/U;->aad:Landroid/support/v4/c/b;

    .line 260
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 261
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/U;->aad:Landroid/support/v4/c/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/U;->aad:Landroid/support/v4/c/b;

    iget v1, p0, Landroid/support/v4/app/U;->aac:I

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/c/b;->aso(ILandroid/support/v4/c/d;)V

    .line 267
    iget-object v0, p0, Landroid/support/v4/app/U;->aad:Landroid/support/v4/c/b;

    invoke-virtual {v0, p0}, Landroid/support/v4/c/b;->asp(Landroid/support/v4/c/c;)V

    .line 268
    iput-boolean v3, p0, Landroid/support/v4/app/U;->aab:Z

    goto :goto_3
.end method

.method stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 319
    sget-boolean v0, Landroid/support/v4/app/aU;->DEBUG:Z

    if-nez v0, :cond_1

    .line 320
    :goto_0
    iput-boolean v2, p0, Landroid/support/v4/app/U;->mStarted:Z

    .line 321
    iget-boolean v0, p0, Landroid/support/v4/app/U;->aai:Z

    if-eqz v0, :cond_2

    .line 330
    :cond_0
    :goto_1
    return-void

    .line 319
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  Stopping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 322
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/U;->aad:Landroid/support/v4/c/b;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/U;->aab:Z

    if-eqz v0, :cond_0

    .line 324
    iput-boolean v2, p0, Landroid/support/v4/app/U;->aab:Z

    .line 325
    iget-object v0, p0, Landroid/support/v4/app/U;->aad:Landroid/support/v4/c/b;

    invoke-virtual {v0, p0}, Landroid/support/v4/c/b;->ask(Landroid/support/v4/c/d;)V

    .line 326
    iget-object v0, p0, Landroid/support/v4/app/U;->aad:Landroid/support/v4/c/b;

    invoke-virtual {v0, p0}, Landroid/support/v4/c/b;->asi(Landroid/support/v4/c/c;)V

    .line 327
    iget-object v0, p0, Landroid/support/v4/app/U;->aad:Landroid/support/v4/c/b;

    invoke-virtual {v0}, Landroid/support/v4/c/b;->asg()V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 489
    const-string/jumbo v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    const-string/jumbo v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    iget v1, p0, Landroid/support/v4/app/U;->aac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 493
    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    iget-object v1, p0, Landroid/support/v4/app/U;->aad:Landroid/support/v4/c/b;

    invoke-static {v1, v0}, Landroid/support/v4/a/k;->aix(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 495
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
