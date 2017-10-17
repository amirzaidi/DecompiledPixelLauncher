.class public final Lcom/google/android/apps/nexuslauncher/reflection/a/l;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# static fields
.field private static volatile bu:[Lcom/google/android/apps/nexuslauncher/reflection/a/l;


# instance fields
.field public bl:I

.field public bm:I

.field public bn:Ljava/lang/String;

.field public bo:[B

.field public bp:[Lcom/google/android/apps/nexuslauncher/reflection/a/m;

.field public bq:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

.field public br:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

.field public bs:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

.field public bt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 208
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->clear()Lcom/google/android/apps/nexuslauncher/reflection/a/l;

    .line 209
    return-void
.end method

.method public static emptyArray()[Lcom/google/android/apps/nexuslauncher/reflection/a/l;
    .locals 2

    .prologue
    .line 169
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bu:[Lcom/google/android/apps/nexuslauncher/reflection/a/l;

    if-nez v0, :cond_1

    .line 170
    sget-object v1, Lcom/google/protobuf/nano/d;->La:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    :try_start_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bu:[Lcom/google/android/apps/nexuslauncher/reflection/a/l;

    if-nez v0, :cond_0

    .line 173
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/a/l;

    sput-object v0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bu:[Lcom/google/android/apps/nexuslauncher/reflection/a/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 177
    :cond_1
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bu:[Lcom/google/android/apps/nexuslauncher/reflection/a/l;

    return-object v0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/nexuslauncher/reflection/a/l;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 212
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bt:Ljava/lang/String;

    .line 213
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bn:Ljava/lang/String;

    .line 214
    sget-object v0, Lcom/google/protobuf/nano/f;->Li:[B

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bo:[B

    .line 215
    iput v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bm:I

    .line 216
    iput v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bl:I

    .line 217
    invoke-static {}, Lcom/google/android/apps/nexuslauncher/reflection/a/m;->emptyArray()[Lcom/google/android/apps/nexuslauncher/reflection/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bp:[Lcom/google/android/apps/nexuslauncher/reflection/a/m;

    .line 218
    invoke-static {}, Lcom/google/android/apps/nexuslauncher/reflection/a/n;->emptyArray()[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bq:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    .line 219
    invoke-static {}, Lcom/google/android/apps/nexuslauncher/reflection/a/n;->emptyArray()[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->br:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    .line 220
    invoke-static {}, Lcom/google/android/apps/nexuslauncher/reflection/a/n;->emptyArray()[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bs:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    .line 221
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->cachedSize:I

    .line 222
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 280
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v0

    .line 281
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bt:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 283
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bt:Ljava/lang/String;

    const/4 v3, 0x1

    .line 282
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->Sb(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 285
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bn:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 287
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bn:Ljava/lang/String;

    const/4 v3, 0x2

    .line 286
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->Sb(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 289
    :cond_1
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bo:[B

    sget-object v3, Lcom/google/protobuf/nano/f;->Li:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_2

    .line 291
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bo:[B

    const/4 v3, 0x3

    .line 290
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->Rf(I[B)I

    move-result v2

    add-int/2addr v0, v2

    .line 293
    :cond_2
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bl:I

    if-eqz v2, :cond_3

    .line 295
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bl:I

    const/4 v3, 0x4

    .line 294
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->RF(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 297
    :cond_3
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bp:[Lcom/google/android/apps/nexuslauncher/reflection/a/m;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bp:[Lcom/google/android/apps/nexuslauncher/reflection/a/m;

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v0

    move v0, v1

    .line 298
    :goto_0
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bp:[Lcom/google/android/apps/nexuslauncher/reflection/a/m;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 299
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bp:[Lcom/google/android/apps/nexuslauncher/reflection/a/m;

    aget-object v3, v3, v0

    .line 300
    if-eqz v3, :cond_4

    .line 302
    const/4 v4, 0x5

    .line 301
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->Rt(ILcom/google/protobuf/nano/a;)I

    move-result v3

    add-int/2addr v2, v3

    .line 298
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v2

    .line 306
    :cond_6
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bq:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bq:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    array-length v2, v2

    if-lez v2, :cond_9

    move v2, v0

    move v0, v1

    .line 307
    :goto_1
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bq:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 308
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bq:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    aget-object v3, v3, v0

    .line 309
    if-eqz v3, :cond_7

    .line 311
    const/4 v4, 0x6

    .line 310
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->Rt(ILcom/google/protobuf/nano/a;)I

    move-result v3

    add-int/2addr v2, v3

    .line 307
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    move v0, v2

    .line 315
    :cond_9
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->br:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->br:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    array-length v2, v2

    if-lez v2, :cond_c

    move v2, v0

    move v0, v1

    .line 316
    :goto_2
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->br:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    array-length v3, v3

    if-ge v0, v3, :cond_b

    .line 317
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->br:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    aget-object v3, v3, v0

    .line 318
    if-eqz v3, :cond_a

    .line 320
    const/4 v4, 0x7

    .line 319
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->Rt(ILcom/google/protobuf/nano/a;)I

    move-result v3

    add-int/2addr v2, v3

    .line 316
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    move v0, v2

    .line 324
    :cond_c
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bs:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bs:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    array-length v2, v2

    if-lez v2, :cond_e

    .line 325
    :goto_3
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bs:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    array-length v2, v2

    if-ge v1, v2, :cond_e

    .line 326
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bs:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    aget-object v2, v2, v1

    .line 327
    if-eqz v2, :cond_d

    .line 329
    const/16 v3, 0x8

    .line 328
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->Rt(ILcom/google/protobuf/nano/a;)I

    move-result v2

    add-int/2addr v0, v2

    .line 325
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 333
    :cond_e
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bm:I

    if-eqz v1, :cond_f

    .line 335
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bm:I

    const/16 v2, 0x9

    .line 334
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->RF(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 337
    :cond_f
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/a/l;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 345
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Sx()I

    move-result v0

    .line 346
    sparse-switch v0, :sswitch_data_0

    .line 350
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->SW(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    return-object p0

    .line 348
    :sswitch_0
    return-object p0

    .line 356
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->SG()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bt:Ljava/lang/String;

    goto :goto_0

    .line 360
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->SG()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bn:Ljava/lang/String;

    goto :goto_0

    .line 364
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Su()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bo:[B

    goto :goto_0

    .line 368
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->SK()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bl:I

    goto :goto_0

    .line 373
    :sswitch_5
    const/16 v0, 0x2a

    .line 372
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->SS(Lcom/google/protobuf/nano/c;I)I

    move-result v2

    .line 374
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bp:[Lcom/google/android/apps/nexuslauncher/reflection/a/m;

    if-nez v0, :cond_2

    move v0, v1

    .line 376
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/apps/nexuslauncher/reflection/a/m;

    .line 377
    if-eqz v0, :cond_1

    .line 378
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bp:[Lcom/google/android/apps/nexuslauncher/reflection/a/m;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 381
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/a/m;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/a/m;-><init>()V

    aput-object v3, v2, v0

    .line 382
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/c;->SB(Lcom/google/protobuf/nano/a;)V

    .line 383
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Sx()I

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bp:[Lcom/google/android/apps/nexuslauncher/reflection/a/m;

    array-length v0, v0

    goto :goto_1

    .line 386
    :cond_3
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/a/m;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/a/m;-><init>()V

    aput-object v3, v2, v0

    .line 387
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->SB(Lcom/google/protobuf/nano/a;)V

    .line 388
    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bp:[Lcom/google/android/apps/nexuslauncher/reflection/a/m;

    goto :goto_0

    .line 393
    :sswitch_6
    const/16 v0, 0x32

    .line 392
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->SS(Lcom/google/protobuf/nano/c;I)I

    move-result v2

    .line 394
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bq:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    if-nez v0, :cond_5

    move v0, v1

    .line 396
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    .line 397
    if-eqz v0, :cond_4

    .line 398
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bq:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 401
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/a/n;-><init>()V

    aput-object v3, v2, v0

    .line 402
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/c;->SB(Lcom/google/protobuf/nano/a;)V

    .line 403
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Sx()I

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 394
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bq:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    array-length v0, v0

    goto :goto_3

    .line 406
    :cond_6
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/a/n;-><init>()V

    aput-object v3, v2, v0

    .line 407
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->SB(Lcom/google/protobuf/nano/a;)V

    .line 408
    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bq:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    goto/16 :goto_0

    .line 413
    :sswitch_7
    const/16 v0, 0x3a

    .line 412
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->SS(Lcom/google/protobuf/nano/c;I)I

    move-result v2

    .line 414
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->br:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    if-nez v0, :cond_8

    move v0, v1

    .line 416
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    .line 417
    if-eqz v0, :cond_7

    .line 418
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->br:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 421
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/a/n;-><init>()V

    aput-object v3, v2, v0

    .line 422
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/c;->SB(Lcom/google/protobuf/nano/a;)V

    .line 423
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Sx()I

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 414
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->br:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    array-length v0, v0

    goto :goto_5

    .line 426
    :cond_9
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/a/n;-><init>()V

    aput-object v3, v2, v0

    .line 427
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->SB(Lcom/google/protobuf/nano/a;)V

    .line 428
    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->br:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    goto/16 :goto_0

    .line 433
    :sswitch_8
    const/16 v0, 0x42

    .line 432
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->SS(Lcom/google/protobuf/nano/c;I)I

    move-result v2

    .line 434
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bs:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    if-nez v0, :cond_b

    move v0, v1

    .line 436
    :goto_7
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    .line 437
    if-eqz v0, :cond_a

    .line 438
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bs:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 440
    :cond_a
    :goto_8
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_c

    .line 441
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/a/n;-><init>()V

    aput-object v3, v2, v0

    .line 442
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/c;->SB(Lcom/google/protobuf/nano/a;)V

    .line 443
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Sx()I

    .line 440
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 434
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bs:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    array-length v0, v0

    goto :goto_7

    .line 446
    :cond_c
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/a/n;-><init>()V

    aput-object v3, v2, v0

    .line 447
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->SB(Lcom/google/protobuf/nano/a;)V

    .line 448
    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bs:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    goto/16 :goto_0

    .line 452
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->SK()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bm:I

    goto/16 :goto_0

    .line 346
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/a/l;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 228
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bt:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bt:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->RY(ILjava/lang/String;)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bn:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bn:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->RY(ILjava/lang/String;)V

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bo:[B

    sget-object v2, Lcom/google/protobuf/nano/f;->Li:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bo:[B

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->Ro(I[B)V

    .line 237
    :cond_2
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bl:I

    if-eqz v0, :cond_3

    .line 238
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bl:I

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->RA(II)V

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bp:[Lcom/google/android/apps/nexuslauncher/reflection/a/m;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bp:[Lcom/google/android/apps/nexuslauncher/reflection/a/m;

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    .line 241
    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bp:[Lcom/google/android/apps/nexuslauncher/reflection/a/m;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 242
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bp:[Lcom/google/android/apps/nexuslauncher/reflection/a/m;

    aget-object v2, v2, v0

    .line 243
    if-eqz v2, :cond_4

    .line 244
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->RP(ILcom/google/protobuf/nano/a;)V

    .line 241
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bq:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bq:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    .line 249
    :goto_1
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bq:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 250
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bq:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    aget-object v2, v2, v0

    .line 251
    if-eqz v2, :cond_6

    .line 252
    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->RP(ILcom/google/protobuf/nano/a;)V

    .line 249
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 256
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->br:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->br:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    array-length v0, v0

    if-lez v0, :cond_9

    move v0, v1

    .line 257
    :goto_2
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->br:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    array-length v2, v2

    if-ge v0, v2, :cond_9

    .line 258
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->br:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    aget-object v2, v2, v0

    .line 259
    if-eqz v2, :cond_8

    .line 260
    const/4 v3, 0x7

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->RP(ILcom/google/protobuf/nano/a;)V

    .line 257
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 264
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bs:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bs:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    array-length v0, v0

    if-lez v0, :cond_b

    .line 265
    :goto_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bs:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    array-length v0, v0

    if-ge v1, v0, :cond_b

    .line 266
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bs:[Lcom/google/android/apps/nexuslauncher/reflection/a/n;

    aget-object v0, v0, v1

    .line 267
    if-eqz v0, :cond_a

    .line 268
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->RP(ILcom/google/protobuf/nano/a;)V

    .line 265
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 272
    :cond_b
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bm:I

    if-eqz v0, :cond_c

    .line 273
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/l;->bm:I

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->RA(II)V

    .line 275
    :cond_c
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 276
    return-void
.end method
