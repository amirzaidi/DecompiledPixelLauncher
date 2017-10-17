.class public final Lcom/google/protobuf/nano/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private KO:I

.field private KP:I

.field private KQ:I

.field private KR:I

.field private KS:I

.field private KT:I

.field private KU:I

.field private KV:I

.field private final KW:[B

.field private KX:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/nano/c;->KR:I

    .line 409
    const/16 v0, 0x40

    iput v0, p0, Lcom/google/protobuf/nano/c;->KV:I

    .line 412
    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/protobuf/nano/c;->KO:I

    .line 418
    iput-object p1, p0, Lcom/google/protobuf/nano/c;->KW:[B

    .line 419
    iput p2, p0, Lcom/google/protobuf/nano/c;->KS:I

    .line 420
    add-int v0, p2, p3

    iput v0, p0, Lcom/google/protobuf/nano/c;->KQ:I

    .line 421
    iput p2, p0, Lcom/google/protobuf/nano/c;->KP:I

    .line 422
    return-void
.end method

.method private SC()V
    .locals 2

    .prologue
    .line 495
    iget v0, p0, Lcom/google/protobuf/nano/c;->KQ:I

    iget v1, p0, Lcom/google/protobuf/nano/c;->KT:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/nano/c;->KQ:I

    .line 496
    iget v0, p0, Lcom/google/protobuf/nano/c;->KQ:I

    .line 497
    iget v1, p0, Lcom/google/protobuf/nano/c;->KR:I

    if-le v0, v1, :cond_0

    .line 499
    iget v1, p0, Lcom/google/protobuf/nano/c;->KR:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/nano/c;->KT:I

    .line 500
    iget v0, p0, Lcom/google/protobuf/nano/c;->KQ:I

    iget v1, p0, Lcom/google/protobuf/nano/c;->KT:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/nano/c;->KQ:I

    .line 504
    :goto_0
    return-void

    .line 502
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/nano/c;->KT:I

    goto :goto_0
.end method

.method public static SH([BII)Lcom/google/protobuf/nano/c;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/google/protobuf/nano/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/nano/c;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public SA()D
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->SN()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public SB(Lcom/google/protobuf/nano/a;)V
    .locals 3

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->Sw()I

    move-result v0

    .line 218
    iget v1, p0, Lcom/google/protobuf/nano/c;->KX:I

    iget v2, p0, Lcom/google/protobuf/nano/c;->KV:I

    if-lt v1, v2, :cond_0

    .line 219
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->Sm()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 221
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/c;->St(I)I

    move-result v0

    .line 222
    iget v1, p0, Lcom/google/protobuf/nano/c;->KX:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/nano/c;->KX:I

    .line 223
    invoke-virtual {p1, p0}, Lcom/google/protobuf/nano/a;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;

    .line 224
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/nano/c;->SP(I)V

    .line 225
    iget v1, p0, Lcom/google/protobuf/nano/c;->KX:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/protobuf/nano/c;->KX:I

    .line 226
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/c;->Sq(I)V

    .line 227
    return-void
.end method

.method public SD()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->Sw()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public SE()J
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->Sz()J

    move-result-wide v0

    return-wide v0
.end method

.method public SF()B
    .locals 3

    .prologue
    .line 597
    iget v0, p0, Lcom/google/protobuf/nano/c;->KP:I

    iget v1, p0, Lcom/google/protobuf/nano/c;->KQ:I

    if-ne v0, v1, :cond_0

    .line 598
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->Sl()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/c;->KW:[B

    iget v1, p0, Lcom/google/protobuf/nano/c;->KP:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/nano/c;->KP:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public SG()Ljava/lang/String;
    .locals 5

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->Sw()I

    move-result v0

    .line 190
    iget v1, p0, Lcom/google/protobuf/nano/c;->KQ:I

    iget v2, p0, Lcom/google/protobuf/nano/c;->KP:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 193
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/nano/c;->KW:[B

    iget v3, p0, Lcom/google/protobuf/nano/c;->KP:I

    sget-object v4, Lcom/google/protobuf/nano/d;->KY:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 194
    iget v2, p0, Lcom/google/protobuf/nano/c;->KP:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/protobuf/nano/c;->KP:I

    .line 195
    return-object v1

    .line 198
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/c;->SL(I)[B

    move-result-object v0

    sget-object v2, Lcom/google/protobuf/nano/d;->KY:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public SI(I)V
    .locals 2

    .prologue
    .line 639
    if-gez p1, :cond_0

    .line 640
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->Sk()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 643
    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/c;->KP:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/protobuf/nano/c;->KR:I

    if-le v0, v1, :cond_1

    .line 645
    iget v0, p0, Lcom/google/protobuf/nano/c;->KR:I

    iget v1, p0, Lcom/google/protobuf/nano/c;->KP:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/c;->SI(I)V

    .line 647
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->Sl()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 650
    :cond_1
    iget v0, p0, Lcom/google/protobuf/nano/c;->KQ:I

    iget v1, p0, Lcom/google/protobuf/nano/c;->KP:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    .line 652
    iget v0, p0, Lcom/google/protobuf/nano/c;->KP:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/protobuf/nano/c;->KP:I

    .line 656
    return-void

    .line 654
    :cond_2
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->Sl()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method public SJ(I)V
    .locals 4

    .prologue
    .line 580
    iget v0, p0, Lcom/google/protobuf/nano/c;->KP:I

    iget v1, p0, Lcom/google/protobuf/nano/c;->KS:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    .line 581
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is beyond current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/nano/c;->KP:I

    iget v3, p0, Lcom/google/protobuf/nano/c;->KS:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 581
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_0
    if-gez p1, :cond_1

    .line 585
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_1
    iget v0, p0, Lcom/google/protobuf/nano/c;->KS:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/protobuf/nano/c;->KP:I

    .line 588
    return-void
.end method

.method public SK()I
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->Sw()I

    move-result v0

    return v0
.end method

.method public SL(I)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 610
    if-gez p1, :cond_0

    .line 611
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->Sk()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 614
    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/c;->KP:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/protobuf/nano/c;->KR:I

    if-le v0, v1, :cond_1

    .line 616
    iget v0, p0, Lcom/google/protobuf/nano/c;->KR:I

    iget v1, p0, Lcom/google/protobuf/nano/c;->KP:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/c;->SI(I)V

    .line 618
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->Sl()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 621
    :cond_1
    iget v0, p0, Lcom/google/protobuf/nano/c;->KQ:I

    iget v1, p0, Lcom/google/protobuf/nano/c;->KP:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    .line 623
    new-array v0, p1, [B

    .line 624
    iget-object v1, p0, Lcom/google/protobuf/nano/c;->KW:[B

    iget v2, p0, Lcom/google/protobuf/nano/c;->KP:I

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 625
    iget v1, p0, Lcom/google/protobuf/nano/c;->KP:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/protobuf/nano/c;->KP:I

    .line 626
    return-object v0

    .line 628
    :cond_2
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->Sl()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method public SM()F
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->Sy()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public SN()J
    .locals 14

    .prologue
    const-wide/16 v12, 0xff

    .line 349
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->SF()B

    move-result v0

    .line 350
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->SF()B

    move-result v1

    .line 351
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->SF()B

    move-result v2

    .line 352
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->SF()B

    move-result v3

    .line 353
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->SF()B

    move-result v4

    .line 354
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->SF()B

    move-result v5

    .line 355
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->SF()B

    move-result v6

    .line 356
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->SF()B

    move-result v7

    .line 357
    int-to-long v8, v0

    and-long/2addr v8, v12

    .line 358
    int-to-long v0, v1

    and-long/2addr v0, v12

    const/16 v10, 0x8

    shl-long/2addr v0, v10

    .line 357
    or-long/2addr v0, v8

    .line 359
    int-to-long v8, v2

    and-long/2addr v8, v12

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    .line 357
    or-long/2addr v0, v8

    .line 360
    int-to-long v2, v3

    and-long/2addr v2, v12

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    .line 357
    or-long/2addr v0, v2

    .line 361
    int-to-long v2, v4

    and-long/2addr v2, v12

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    .line 357
    or-long/2addr v0, v2

    .line 362
    int-to-long v2, v5

    and-long/2addr v2, v12

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    .line 357
    or-long/2addr v0, v2

    .line 363
    int-to-long v2, v6

    and-long/2addr v2, v12

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    .line 357
    or-long/2addr v0, v2

    .line 364
    int-to-long v2, v7

    and-long/2addr v2, v12

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    .line 357
    or-long/2addr v0, v2

    return-wide v0
.end method

.method public SO()V
    .locals 1

    .prologue
    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->Sx()I

    move-result v0

    .line 139
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/c;->SQ(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 140
    :cond_1
    return-void
.end method

.method public SP(I)V
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/google/protobuf/nano/c;->KU:I

    if-eq v0, p1, :cond_0

    .line 95
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->Sp()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 97
    :cond_0
    return-void
.end method

.method public SQ(I)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 106
    invoke-static {p1}, Lcom/google/protobuf/nano/f;->SU(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 128
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->Sj()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 108
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->SK()I

    .line 109
    return v2

    .line 111
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->SN()J

    .line 112
    return v2

    .line 114
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->Sw()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/c;->SI(I)V

    .line 115
    return v2

    .line 117
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->SO()V

    .line 119
    invoke-static {p1}, Lcom/google/protobuf/nano/f;->ST(I)I

    move-result v0

    .line 120
    const/4 v1, 0x4

    .line 119
    invoke-static {v0, v1}, Lcom/google/protobuf/nano/f;->SV(II)I

    move-result v0

    .line 118
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/c;->SP(I)V

    .line 121
    return v2

    .line 123
    :pswitch_4
    const/4 v0, 0x0

    return v0

    .line 125
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->Sy()I

    .line 126
    return v2

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public Sq(I)V
    .locals 0

    .prologue
    .line 512
    iput p1, p0, Lcom/google/protobuf/nano/c;->KR:I

    .line 513
    invoke-direct {p0}, Lcom/google/protobuf/nano/c;->SC()V

    .line 514
    return-void
.end method

.method public Sr()Z
    .locals 2

    .prologue
    .line 535
    iget v0, p0, Lcom/google/protobuf/nano/c;->KP:I

    iget v1, p0, Lcom/google/protobuf/nano/c;->KQ:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Ss()I
    .locals 2

    .prologue
    .line 542
    iget v0, p0, Lcom/google/protobuf/nano/c;->KP:I

    iget v1, p0, Lcom/google/protobuf/nano/c;->KS:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public St(I)I
    .locals 2

    .prologue
    .line 479
    if-gez p1, :cond_0

    .line 480
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->Sk()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 482
    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/c;->KP:I

    add-int/2addr v0, p1

    .line 483
    iget v1, p0, Lcom/google/protobuf/nano/c;->KR:I

    .line 484
    if-le v0, v1, :cond_1

    .line 485
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->Sl()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 487
    :cond_1
    iput v0, p0, Lcom/google/protobuf/nano/c;->KR:I

    .line 489
    invoke-direct {p0}, Lcom/google/protobuf/nano/c;->SC()V

    .line 491
    return v1
.end method

.method public Su()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 231
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->Sw()I

    move-result v0

    .line 232
    iget v1, p0, Lcom/google/protobuf/nano/c;->KQ:I

    iget v2, p0, Lcom/google/protobuf/nano/c;->KP:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 235
    new-array v1, v0, [B

    .line 236
    iget-object v2, p0, Lcom/google/protobuf/nano/c;->KW:[B

    iget v3, p0, Lcom/google/protobuf/nano/c;->KP:I

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    iget v2, p0, Lcom/google/protobuf/nano/c;->KP:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/protobuf/nano/c;->KP:I

    .line 238
    return-object v1

    .line 239
    :cond_0
    if-nez v0, :cond_1

    .line 240
    sget-object v0, Lcom/google/protobuf/nano/f;->Li:[B

    return-object v0

    .line 243
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/c;->SL(I)[B

    move-result-object v0

    return-object v0
.end method

.method public Sv()I
    .locals 2

    .prologue
    .line 521
    iget v0, p0, Lcom/google/protobuf/nano/c;->KR:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 522
    const/4 v0, -0x1

    return v0

    .line 525
    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/c;->KP:I

    .line 526
    iget v1, p0, Lcom/google/protobuf/nano/c;->KR:I

    sub-int v0, v1, v0

    return v0
.end method

.method public Sw()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 287
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->SF()B

    move-result v0

    .line 288
    if-ltz v0, :cond_0

    .line 289
    return v0

    .line 291
    :cond_0
    and-int/lit8 v0, v0, 0x7f

    .line 292
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->SF()B

    move-result v2

    if-ltz v2, :cond_2

    .line 293
    shl-int/lit8 v1, v2, 0x7

    or-int/2addr v0, v1

    .line 317
    :cond_1
    :goto_0
    return v0

    .line 295
    :cond_2
    and-int/lit8 v2, v2, 0x7f

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v0, v2

    .line 296
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->SF()B

    move-result v2

    if-ltz v2, :cond_3

    .line 297
    shl-int/lit8 v1, v2, 0xe

    or-int/2addr v0, v1

    goto :goto_0

    .line 299
    :cond_3
    and-int/lit8 v2, v2, 0x7f

    shl-int/lit8 v2, v2, 0xe

    or-int/2addr v0, v2

    .line 300
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->SF()B

    move-result v2

    if-ltz v2, :cond_4

    .line 301
    shl-int/lit8 v1, v2, 0x15

    or-int/2addr v0, v1

    goto :goto_0

    .line 303
    :cond_4
    and-int/lit8 v2, v2, 0x7f

    shl-int/lit8 v2, v2, 0x15

    or-int/2addr v0, v2

    .line 304
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->SF()B

    move-result v2

    shl-int/lit8 v3, v2, 0x1c

    or-int/2addr v0, v3

    .line 305
    if-gez v2, :cond_1

    .line 307
    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_6

    .line 308
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->SF()B

    move-result v2

    if-ltz v2, :cond_5

    .line 309
    return v0

    .line 307
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 312
    :cond_6
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->Sn()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method public Sx()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->Sr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iput v1, p0, Lcom/google/protobuf/nano/c;->KU:I

    .line 73
    return v1

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->Sw()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/nano/c;->KU:I

    .line 77
    iget v0, p0, Lcom/google/protobuf/nano/c;->KU:I

    if-nez v0, :cond_1

    .line 79
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->So()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 81
    :cond_1
    iget v0, p0, Lcom/google/protobuf/nano/c;->KU:I

    return v0
.end method

.method public Sy()I
    .locals 4

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->SF()B

    move-result v0

    .line 338
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->SF()B

    move-result v1

    .line 339
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->SF()B

    move-result v2

    .line 340
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->SF()B

    move-result v3

    .line 341
    and-int/lit16 v0, v0, 0xff

    .line 342
    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 341
    or-int/2addr v0, v1

    .line 343
    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 341
    or-int/2addr v0, v1

    .line 344
    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    .line 341
    or-int/2addr v0, v1

    return v0
.end method

.method public Sz()J
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 323
    const-wide/16 v0, 0x0

    .line 324
    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->SF()B

    move-result v3

    .line 326
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 327
    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    .line 328
    return-wide v0

    .line 330
    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    .line 332
    :cond_1
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->Sn()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method
