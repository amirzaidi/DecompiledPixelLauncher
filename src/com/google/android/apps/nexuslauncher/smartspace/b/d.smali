.class public final Lcom/google/android/apps/nexuslauncher/smartspace/b/d;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# instance fields
.field public cN:Ljava/lang/String;

.field public cO:[Lcom/google/android/apps/nexuslauncher/smartspace/b/e;

.field public cP:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 223
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->clear()Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    .line 224
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/nexuslauncher/smartspace/b/d;
    .locals 1

    .prologue
    .line 227
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cN:Ljava/lang/String;

    .line 228
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cP:I

    .line 229
    invoke-static {}, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->emptyArray()[Lcom/google/android/apps/nexuslauncher/smartspace/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cO:[Lcom/google/android/apps/nexuslauncher/smartspace/b/e;

    .line 230
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cachedSize:I

    .line 231
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 256
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v0

    .line 257
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cN:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 259
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cN:Ljava/lang/String;

    const/4 v3, 0x1

    .line 258
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->VW(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 261
    :cond_0
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cP:I

    if-eqz v2, :cond_1

    .line 263
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cP:I

    const/4 v3, 0x2

    .line 262
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 265
    :cond_1
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cO:[Lcom/google/android/apps/nexuslauncher/smartspace/b/e;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cO:[Lcom/google/android/apps/nexuslauncher/smartspace/b/e;

    array-length v2, v2

    if-lez v2, :cond_4

    move v4, v1

    move v1, v0

    move v0, v4

    .line 266
    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cO:[Lcom/google/android/apps/nexuslauncher/smartspace/b/e;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 267
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cO:[Lcom/google/android/apps/nexuslauncher/smartspace/b/e;

    aget-object v2, v2, v0

    .line 268
    if-eqz v2, :cond_2

    .line 270
    const/4 v3, 0x3

    .line 269
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->Vo(ILcom/google/protobuf/nano/a;)I

    move-result v2

    add-int/2addr v1, v2

    .line 266
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 274
    :cond_4
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/smartspace/b/d;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 282
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    move-result v0

    .line 283
    sparse-switch v0, :sswitch_data_0

    .line 287
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WR(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    return-object p0

    .line 285
    :sswitch_0
    return-object p0

    .line 293
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cN:Ljava/lang/String;

    goto :goto_0

    .line 297
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    .line 298
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 303
    :pswitch_0
    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cP:I

    goto :goto_0

    .line 310
    :sswitch_3
    const/16 v0, 0x1a

    .line 309
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WN(Lcom/google/protobuf/nano/c;I)I

    move-result v2

    .line 311
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cO:[Lcom/google/android/apps/nexuslauncher/smartspace/b/e;

    if-nez v0, :cond_2

    move v0, v1

    .line 313
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/apps/nexuslauncher/smartspace/b/e;

    .line 314
    if-eqz v0, :cond_1

    .line 315
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cO:[Lcom/google/android/apps/nexuslauncher/smartspace/b/e;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 318
    new-instance v3, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;-><init>()V

    aput-object v3, v2, v0

    .line 319
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    .line 320
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cO:[Lcom/google/android/apps/nexuslauncher/smartspace/b/e;

    array-length v0, v0

    goto :goto_1

    .line 323
    :cond_3
    new-instance v3, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;-><init>()V

    aput-object v3, v2, v0

    .line 324
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    .line 325
    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cO:[Lcom/google/android/apps/nexuslauncher/smartspace/b/e;

    goto :goto_0

    .line 283
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    .line 298
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 237
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cN:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cN:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->VT(ILjava/lang/String;)V

    .line 240
    :cond_0
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cP:I

    if-eqz v1, :cond_1

    .line 241
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cP:I

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cO:[Lcom/google/android/apps/nexuslauncher/smartspace/b/e;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cO:[Lcom/google/android/apps/nexuslauncher/smartspace/b/e;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 244
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cO:[Lcom/google/android/apps/nexuslauncher/smartspace/b/e;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 245
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cO:[Lcom/google/android/apps/nexuslauncher/smartspace/b/e;

    aget-object v1, v1, v0

    .line 246
    if-eqz v1, :cond_2

    .line 247
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->VK(ILcom/google/protobuf/nano/a;)V

    .line 244
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 252
    return-void
.end method
