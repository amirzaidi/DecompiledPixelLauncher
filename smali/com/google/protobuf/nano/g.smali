.class public Lcom/google/protobuf/nano/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final Lk:Z

.field public final Ll:I

.field protected final Lm:Ljava/lang/Class;

.field protected final type:I


# virtual methods
.method SX(Ljava/lang/Object;Lcom/google/protobuf/nano/b;)V
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/google/protobuf/nano/g;->Lk:Z

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/nano/g;->Tb(Ljava/lang/Object;Lcom/google/protobuf/nano/b;)V

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/nano/g;->SY(Ljava/lang/Object;Lcom/google/protobuf/nano/b;)V

    goto :goto_0
.end method

.method protected SY(Ljava/lang/Object;Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    .line 263
    :try_start_0
    iget v0, p0, Lcom/google/protobuf/nano/g;->Ll:I

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/b;->RZ(I)V

    .line 264
    iget v0, p0, Lcom/google/protobuf/nano/g;->type:I

    packed-switch v0, :pswitch_data_0

    .line 277
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/nano/g;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :catch_0
    move-exception v0

    .line 281
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 266
    :pswitch_0
    :try_start_1
    check-cast p1, Lcom/google/protobuf/nano/a;

    .line 267
    iget v0, p0, Lcom/google/protobuf/nano/g;->Ll:I

    invoke-static {v0}, Lcom/google/protobuf/nano/f;->ST(I)I

    move-result v0

    .line 268
    invoke-virtual {p2, p1}, Lcom/google/protobuf/nano/b;->RI(Lcom/google/protobuf/nano/a;)V

    .line 270
    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/nano/b;->Sd(II)V

    .line 283
    :goto_0
    return-void

    .line 273
    :pswitch_1
    check-cast p1, Lcom/google/protobuf/nano/a;

    .line 274
    invoke-virtual {p2, p1}, Lcom/google/protobuf/nano/b;->RG(Lcom/google/protobuf/nano/a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected SZ(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 319
    iget v0, p0, Lcom/google/protobuf/nano/g;->Ll:I

    invoke-static {v0}, Lcom/google/protobuf/nano/f;->ST(I)I

    move-result v0

    .line 320
    iget v1, p0, Lcom/google/protobuf/nano/g;->type:I

    packed-switch v1, :pswitch_data_0

    .line 328
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/nano/g;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :pswitch_0
    check-cast p1, Lcom/google/protobuf/nano/a;

    .line 323
    invoke-static {v0, p1}, Lcom/google/protobuf/nano/b;->RR(ILcom/google/protobuf/nano/a;)I

    move-result v0

    return v0

    .line 325
    :pswitch_1
    check-cast p1, Lcom/google/protobuf/nano/a;

    .line 326
    invoke-static {v0, p1}, Lcom/google/protobuf/nano/b;->Rt(ILcom/google/protobuf/nano/a;)I

    move-result v0

    return v0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method Ta(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/google/protobuf/nano/g;->Lk:Z

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/g;->Tc(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 300
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/g;->SZ(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected Tb(Ljava/lang/Object;Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    .line 287
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 288
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 289
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 290
    if-eqz v2, :cond_0

    .line 291
    invoke-virtual {p0, v2, p2}, Lcom/google/protobuf/nano/g;->SY(Ljava/lang/Object;Lcom/google/protobuf/nano/b;)V

    .line 288
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_1
    return-void
.end method

.method protected Tc(Ljava/lang/Object;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 307
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    move v1, v0

    .line 308
    :goto_0
    if-ge v1, v2, :cond_1

    .line 309
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 310
    if-eqz v3, :cond_0

    .line 311
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/nano/g;->SZ(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 308
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    :cond_1
    return v0
.end method
