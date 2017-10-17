.class public Landroid/support/v4/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field adA:Z

.field adB:Landroid/support/v4/c/c;

.field adC:Z

.field adw:Z

.field adx:Landroid/support/v4/c/d;

.field ady:Z

.field adz:I

.field mStarted:Z


# virtual methods
.method public ark()V
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/c/b;->mStarted:Z

    .line 361
    invoke-virtual {p0}, Landroid/support/v4/c/b;->arp()V

    .line 362
    return-void
.end method

.method protected arl()V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method public arm(Landroid/support/v4/c/c;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 211
    iget-object v0, p0, Landroid/support/v4/c/b;->adB:Landroid/support/v4/c/c;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Landroid/support/v4/c/b;->adB:Landroid/support/v4/c/c;

    if-ne v0, p1, :cond_1

    .line 217
    iput-object v1, p0, Landroid/support/v4/c/b;->adB:Landroid/support/v4/c/c;

    .line 218
    return-void

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final arn()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/c/b;->mStarted:Z

    .line 270
    iput-boolean v1, p0, Landroid/support/v4/c/b;->adw:Z

    .line 271
    iput-boolean v1, p0, Landroid/support/v4/c/b;->adC:Z

    .line 272
    invoke-virtual {p0}, Landroid/support/v4/c/b;->arl()V

    .line 273
    return-void
.end method

.method public aro(Landroid/support/v4/c/d;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Landroid/support/v4/c/b;->adx:Landroid/support/v4/c/d;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Landroid/support/v4/c/b;->adx:Landroid/support/v4/c/d;

    if-ne v0, p1, :cond_1

    .line 183
    iput-object v1, p0, Landroid/support/v4/c/b;->adx:Landroid/support/v4/c/d;

    .line 184
    return-void

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected arp()V
    .locals 0

    .prologue
    .line 371
    return-void
.end method

.method protected arq()V
    .locals 0

    .prologue
    .line 435
    return-void
.end method

.method public arr(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 498
    invoke-static {p1, v0}, Landroid/support/v4/a/j;->aha(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 499
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ars(ILandroid/support/v4/c/d;)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Landroid/support/v4/c/b;->adx:Landroid/support/v4/c/d;

    if-nez v0, :cond_0

    .line 167
    iput-object p2, p0, Landroid/support/v4/c/b;->adx:Landroid/support/v4/c/d;

    .line 168
    iput p1, p0, Landroid/support/v4/c/b;->adz:I

    .line 169
    return-void

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public art(Landroid/support/v4/c/c;)V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Landroid/support/v4/c/b;->adB:Landroid/support/v4/c/c;

    if-nez v0, :cond_0

    .line 199
    iput-object p1, p0, Landroid/support/v4/c/b;->adB:Landroid/support/v4/c/c;

    .line 200
    return-void

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 522
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/c/b;->adz:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 523
    const-string/jumbo v0, " mListener="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/c/b;->adx:Landroid/support/v4/c/d;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 524
    iget-boolean v0, p0, Landroid/support/v4/c/b;->mStarted:Z

    if-eqz v0, :cond_2

    .line 525
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/c/b;->mStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 526
    const-string/jumbo v0, " mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/c/b;->ady:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 527
    const-string/jumbo v0, " mProcessingChange="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/c/b;->adA:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 529
    :goto_0
    iget-boolean v0, p0, Landroid/support/v4/c/b;->adC:Z

    if-eqz v0, :cond_3

    .line 530
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAbandoned="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/c/b;->adC:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 531
    const-string/jumbo v0, " mReset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/c/b;->adw:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 533
    :goto_1
    return-void

    .line 524
    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/c/b;->ady:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/c/b;->adA:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 529
    :cond_3
    iget-boolean v0, p0, Landroid/support/v4/c/b;->adw:Z

    if-nez v0, :cond_1

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 420
    invoke-virtual {p0}, Landroid/support/v4/c/b;->arq()V

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/c/b;->adw:Z

    .line 422
    iput-boolean v1, p0, Landroid/support/v4/c/b;->mStarted:Z

    .line 423
    iput-boolean v1, p0, Landroid/support/v4/c/b;->adC:Z

    .line 424
    iput-boolean v1, p0, Landroid/support/v4/c/b;->ady:Z

    .line 425
    iput-boolean v1, p0, Landroid/support/v4/c/b;->adA:Z

    .line 426
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 506
    invoke-static {p0, v0}, Landroid/support/v4/a/j;->aha(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 507
    const-string/jumbo v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    iget v1, p0, Landroid/support/v4/c/b;->adz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 509
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
