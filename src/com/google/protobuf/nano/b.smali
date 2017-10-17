.class public final Lcom/google/protobuf/nano/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final Pu:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/protobuf/nano/b;->Pu:Ljava/nio/ByteBuffer;

    .line 65
    iget-object v0, p0, Lcom/google/protobuf/nano/b;->Pu:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 66
    return-void
.end method

.method private constructor <init>([BII)V
    .locals 1

    .prologue
    .line 60
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/b;-><init>(Ljava/nio/ByteBuffer;)V

    .line 61
    return-void
.end method

.method public static VA(II)I
    .locals 2

    .prologue
    .line 609
    invoke-static {p0}, Lcom/google/protobuf/nano/b;->Vb(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/nano/b;->Vr(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static VC(J)I
    .locals 2

    .prologue
    .line 790
    invoke-static {p0, p1}, Lcom/google/protobuf/nano/b;->Vf(J)I

    move-result v0

    return v0
.end method

.method public static VE(ID)I
    .locals 3

    .prologue
    .line 577
    invoke-static {p0}, Lcom/google/protobuf/nano/b;->Vb(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/nano/b;->Vs(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static VH(Z)I
    .locals 1

    .prologue
    .line 827
    const/4 v0, 0x1

    return v0
.end method

.method public static VJ([B)Lcom/google/protobuf/nano/b;
    .locals 2

    .prologue
    .line 75
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/protobuf/nano/b;->VZ([BII)Lcom/google/protobuf/nano/b;

    move-result-object v0

    return-object v0
.end method

.method public static VL(IZ)I
    .locals 2

    .prologue
    .line 636
    invoke-static {p0}, Lcom/google/protobuf/nano/b;->Vb(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/nano/b;->VH(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static VM(ILcom/google/protobuf/nano/a;)I
    .locals 2

    .prologue
    .line 654
    invoke-static {p0}, Lcom/google/protobuf/nano/b;->Vb(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Lcom/google/protobuf/nano/b;->Vc(Lcom/google/protobuf/nano/a;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static VN(I)I
    .locals 1

    .prologue
    .line 1039
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1040
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    return v0

    .line 1041
    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    return v0

    .line 1042
    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    return v0

    .line 1043
    :cond_3
    const/4 v0, 0x5

    return v0
.end method

.method private static VR(Ljava/lang/CharSequence;[BII)I
    .locals 8

    .prologue
    const/16 v7, 0x80

    .line 465
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 467
    const/4 v0, 0x0

    .line 468
    add-int v4, p2, p3

    .line 471
    :goto_0
    if-ge v0, v3, :cond_0

    add-int v1, v0, p2

    if-ge v1, v4, :cond_0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ge v1, v7, :cond_0

    .line 472
    add-int v2, p2, v0

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    .line 471
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 474
    :cond_0
    if-ne v0, v3, :cond_1

    .line 475
    add-int v0, p2, v3

    return v0

    .line 477
    :cond_1
    add-int v1, p2, v0

    move v2, v1

    .line 478
    :goto_1
    if-ge v0, v3, :cond_9

    .line 479
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 480
    if-ge v5, v7, :cond_2

    if-ge v2, v4, :cond_2

    .line 481
    add-int/lit8 v1, v2, 0x1

    int-to-byte v5, v5

    aput-byte v5, p1, v2

    .line 478
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_1

    .line 482
    :cond_2
    const/16 v1, 0x800

    if-ge v5, v1, :cond_3

    add-int/lit8 v1, v4, -0x2

    if-gt v2, v1, :cond_3

    .line 483
    add-int/lit8 v6, v2, 0x1

    ushr-int/lit8 v1, v5, 0x6

    or-int/lit16 v1, v1, 0x3c0

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    .line 484
    add-int/lit8 v1, v6, 0x1

    and-int/lit8 v2, v5, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p1, v6

    goto :goto_2

    .line 485
    :cond_3
    const v1, 0xd800

    if-lt v5, v1, :cond_4

    const v1, 0xdfff

    if-ge v1, v5, :cond_5

    :cond_4
    add-int/lit8 v1, v4, -0x3

    if-gt v2, v1, :cond_5

    .line 487
    add-int/lit8 v1, v2, 0x1

    ushr-int/lit8 v6, v5, 0xc

    or-int/lit16 v6, v6, 0x1e0

    int-to-byte v6, v6

    aput-byte v6, p1, v2

    .line 488
    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p1, v1

    .line 489
    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p1, v2

    goto :goto_2

    .line 490
    :cond_5
    add-int/lit8 v1, v4, -0x4

    if-gt v2, v1, :cond_8

    .line 493
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eq v1, v6, :cond_6

    .line 494
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 493
    if-eqz v6, :cond_7

    .line 495
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unpaired surrogate at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 497
    :cond_7
    invoke-static {v5, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    .line 498
    add-int/lit8 v1, v2, 0x1

    ushr-int/lit8 v6, v5, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    aput-byte v6, p1, v2

    .line 499
    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v6, v5, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p1, v1

    .line 500
    add-int/lit8 v6, v2, 0x1

    ushr-int/lit8 v1, v5, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    .line 501
    add-int/lit8 v1, v6, 0x1

    and-int/lit8 v2, v5, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p1, v6

    goto/16 :goto_2

    .line 503
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed writing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " at index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_9
    return v2
.end method

.method public static VV(F)I
    .locals 1

    .prologue
    .line 774
    const/4 v0, 0x4

    return v0
.end method

.method public static VW(ILjava/lang/String;)I
    .locals 2

    .prologue
    .line 645
    invoke-static {p0}, Lcom/google/protobuf/nano/b;->Vb(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/nano/b;->Vq(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static VZ([BII)Lcom/google/protobuf/nano/b;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/google/protobuf/nano/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/nano/b;-><init>([BII)V

    return-object v0
.end method

.method public static Va(I[B)I
    .locals 2

    .prologue
    .line 672
    invoke-static {p0}, Lcom/google/protobuf/nano/b;->Vb(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/nano/b;->Ve([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static Vb(I)I
    .locals 1

    .prologue
    .line 1014
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/protobuf/nano/f;->WQ(II)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/nano/b;->VN(I)I

    move-result v0

    return v0
.end method

.method public static Vc(Lcom/google/protobuf/nano/a;)I
    .locals 1

    .prologue
    .line 844
    invoke-virtual {p0}, Lcom/google/protobuf/nano/a;->getSerializedSize()I

    move-result v0

    return v0
.end method

.method private static Vd(Ljava/lang/CharSequence;)I
    .locals 8

    .prologue
    .line 348
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 350
    const/4 v0, 0x0

    .line 353
    :goto_0
    if-ge v0, v2, :cond_0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x80

    if-ge v1, v3, :cond_0

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    move v0, v2

    .line 358
    :goto_1
    if-ge v1, v2, :cond_2

    .line 359
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 360
    const/16 v4, 0x800

    if-ge v3, v4, :cond_1

    .line 361
    rsub-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v0

    .line 358
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_1

    .line 363
    :cond_1
    invoke-static {p0, v1}, Lcom/google/protobuf/nano/b;->Vu(Ljava/lang/CharSequence;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 368
    :cond_2
    if-ge v0, v2, :cond_3

    .line 370
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UTF-8 length does not fit in int: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 371
    int-to-long v4, v0

    const-wide v6, 0x100000000L

    add-long/2addr v4, v6

    .line 370
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 373
    :cond_3
    return v0
.end method

.method public static Ve([B)I
    .locals 2

    .prologue
    .line 861
    array-length v0, p0

    invoke-static {v0}, Lcom/google/protobuf/nano/b;->VN(I)I

    move-result v0

    array-length v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method public static Vf(J)I
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1061
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1062
    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    return v0

    .line 1063
    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    return v0

    .line 1064
    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    return v0

    .line 1065
    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    return v0

    .line 1066
    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    return v0

    .line 1067
    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    return v0

    .line 1068
    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    return v0

    .line 1069
    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    return v0

    .line 1070
    :cond_8
    const/16 v0, 0xa

    return v0
.end method

.method public static Vh(Lcom/google/protobuf/nano/a;)I
    .locals 2

    .prologue
    .line 852
    invoke-virtual {p0}, Lcom/google/protobuf/nano/a;->getSerializedSize()I

    move-result v0

    .line 853
    invoke-static {v0}, Lcom/google/protobuf/nano/b;->VN(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static Vo(ILcom/google/protobuf/nano/a;)I
    .locals 2

    .prologue
    .line 663
    invoke-static {p0}, Lcom/google/protobuf/nano/b;->Vb(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/nano/b;->Vh(Lcom/google/protobuf/nano/a;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static Vq(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 835
    invoke-static {p0}, Lcom/google/protobuf/nano/b;->Vd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 836
    invoke-static {v0}, Lcom/google/protobuf/nano/b;->VN(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static Vr(I)I
    .locals 1

    .prologue
    .line 798
    if-ltz p0, :cond_0

    .line 799
    invoke-static {p0}, Lcom/google/protobuf/nano/b;->VN(I)I

    move-result v0

    return v0

    .line 802
    :cond_0
    const/16 v0, 0xa

    return v0
.end method

.method public static Vs(D)I
    .locals 1

    .prologue
    .line 766
    const/16 v0, 0x8

    return v0
.end method

.method private static Vu(Ljava/lang/CharSequence;I)I
    .locals 5

    .prologue
    .line 377
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 378
    const/4 v1, 0x0

    move v0, p1

    .line 379
    :goto_0
    if-ge v0, v2, :cond_3

    .line 380
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 381
    const/16 v4, 0x800

    if-ge v3, v4, :cond_1

    .line 382
    rsub-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/2addr v1, v3

    .line 379
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 384
    :cond_1
    add-int/lit8 v1, v1, 0x2

    .line 386
    const v4, 0xd800

    if-gt v4, v3, :cond_0

    const v4, 0xdfff

    if-gt v3, v4, :cond_0

    .line 388
    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 389
    const/high16 v4, 0x10000

    if-ge v3, v4, :cond_2

    .line 390
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unpaired surrogate at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 392
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 396
    :cond_3
    return v1
.end method

.method public static Vy(IF)I
    .locals 2

    .prologue
    .line 585
    invoke-static {p0}, Lcom/google/protobuf/nano/b;->Vb(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/nano/b;->VV(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static Vz(IJ)I
    .locals 3

    .prologue
    .line 601
    invoke-static {p0}, Lcom/google/protobuf/nano/b;->Vb(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/nano/b;->VC(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static Wa(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 6

    .prologue
    const/16 v5, 0x80

    .line 436
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 437
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_6

    .line 438
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 439
    if-ge v2, v5, :cond_0

    .line 440
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 437
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    :cond_0
    const/16 v3, 0x800

    if-ge v2, v3, :cond_1

    .line 442
    ushr-int/lit8 v3, v2, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 443
    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 444
    :cond_1
    const v3, 0xd800

    if-lt v2, v3, :cond_2

    const v3, 0xdfff

    if-ge v3, v2, :cond_3

    .line 446
    :cond_2
    ushr-int/lit8 v3, v2, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 447
    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 448
    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 451
    :cond_3
    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 452
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 451
    if-eqz v4, :cond_5

    .line 453
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unpaired surrogate at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 455
    :cond_5
    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    .line 456
    ushr-int/lit8 v3, v2, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 457
    ushr-int/lit8 v3, v2, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 458
    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 459
    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    .line 462
    :cond_6
    return-void
.end method

.method private static Wd(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 3

    .prologue
    .line 416
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 418
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 422
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 423
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 420
    invoke-static {p0, v0, v1, v2}, Lcom/google/protobuf/nano/b;->VR(Ljava/lang/CharSequence;[BII)I

    move-result v0

    .line 424
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_0
    return-void

    .line 425
    :catch_0
    move-exception v0

    .line 426
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    .line 427
    invoke-virtual {v1, v0}, Ljava/nio/BufferOverflowException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 428
    throw v1

    .line 431
    :cond_1
    invoke-static {p0, p1}, Lcom/google/protobuf/nano/b;->Wa(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method


# virtual methods
.method public VB(Lcom/google/protobuf/nano/a;)V
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->getCachedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/b;->VU(I)V

    .line 520
    invoke-virtual {p1, p0}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 521
    return-void
.end method

.method public VD(Lcom/google/protobuf/nano/a;)V
    .locals 0

    .prologue
    .line 514
    invoke-virtual {p1, p0}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 515
    return-void
.end method

.method public VF([B)V
    .locals 1

    .prologue
    .line 525
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/b;->VU(I)V

    .line 526
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/b;->Vm([B)V

    .line 527
    return-void
.end method

.method public VG(IZ)V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/b;->VY(II)V

    .line 145
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/b;->VP(Z)V

    .line 146
    return-void
.end method

.method public VI()V
    .locals 2

    .prologue
    .line 938
    invoke-virtual {p0}, Lcom/google/protobuf/nano/b;->Vp()I

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 940
    const-string/jumbo v1, "Did not write as much data as expected."

    .line 939
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 942
    :cond_0
    return-void
.end method

.method public VK(ILcom/google/protobuf/nano/a;)V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/b;->VY(II)V

    .line 167
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/b;->VB(Lcom/google/protobuf/nano/a;)V

    .line 168
    return-void
.end method

.method public VO(I)V
    .locals 1

    .prologue
    .line 987
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/b;->Vi(B)V

    .line 988
    return-void
.end method

.method public VP(Z)V
    .locals 1

    .prologue
    .line 300
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/b;->VO(I)V

    .line 301
    return-void

    .line 300
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public VQ(D)V
    .locals 3

    .prologue
    .line 260
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/nano/b;->Vx(J)V

    .line 261
    return-void
.end method

.method public VS(IF)V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/b;->VY(II)V

    .line 103
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/b;->VX(F)V

    .line 104
    return-void
.end method

.method public VT(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/b;->VY(II)V

    .line 152
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/b;->Vl(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public VU(I)V
    .locals 1

    .prologue
    .line 1023
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 1024
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/b;->VO(I)V

    .line 1025
    return-void

    .line 1027
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/b;->VO(I)V

    .line 1028
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public VX(F)V
    .locals 1

    .prologue
    .line 265
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/b;->Vn(I)V

    .line 266
    return-void
.end method

.method public VY(II)V
    .locals 1

    .prologue
    .line 1009
    invoke-static {p1, p2}, Lcom/google/protobuf/nano/f;->WQ(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/b;->VU(I)V

    .line 1010
    return-void
.end method

.method public Vg(J)V
    .locals 5

    .prologue
    .line 1049
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1050
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/b;->VO(I)V

    .line 1051
    return-void

    .line 1053
    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/b;->VO(I)V

    .line 1054
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public Vi(B)V
    .locals 3

    .prologue
    .line 977
    iget-object v0, p0, Lcom/google/protobuf/nano/b;->Pu:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 979
    new-instance v0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v1, p0, Lcom/google/protobuf/nano/b;->Pu:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/nano/b;->Pu:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw v0

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/b;->Pu:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 983
    return-void
.end method

.method public Vj(I[B)V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/b;->VY(II)V

    .line 174
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/b;->VF([B)V

    .line 175
    return-void
.end method

.method public Vk(ID)V
    .locals 2

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/b;->VY(II)V

    .line 96
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/nano/b;->VQ(D)V

    .line 97
    return-void
.end method

.method public Vl(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 309
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/nano/b;->VN(I)I

    move-result v0

    .line 310
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->VN(I)I

    move-result v1

    .line 311
    if-ne v0, v1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/google/protobuf/nano/b;->Pu:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 316
    iget-object v2, p0, Lcom/google/protobuf/nano/b;->Pu:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ge v2, v0, :cond_0

    .line 317
    new-instance v2, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/protobuf/nano/b;->Pu:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-direct {v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw v2
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    new-instance v1, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v2, p0, Lcom/google/protobuf/nano/b;->Pu:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 331
    iget-object v3, p0, Lcom/google/protobuf/nano/b;->Pu:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 330
    invoke-direct {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    .line 332
    invoke-virtual {v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 333
    throw v1

    .line 319
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/protobuf/nano/b;->Pu:Ljava/nio/ByteBuffer;

    add-int v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 320
    iget-object v2, p0, Lcom/google/protobuf/nano/b;->Pu:Ljava/nio/ByteBuffer;

    invoke-static {p1, v2}, Lcom/google/protobuf/nano/b;->Wd(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 321
    iget-object v2, p0, Lcom/google/protobuf/nano/b;->Pu:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 322
    iget-object v3, p0, Lcom/google/protobuf/nano/b;->Pu:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 323
    sub-int v1, v2, v1

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/b;->VU(I)V

    .line 324
    iget-object v0, p0, Lcom/google/protobuf/nano/b;->Pu:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 335
    :goto_0
    return-void

    .line 326
    :cond_1
    invoke-static {p1}, Lcom/google/protobuf/nano/b;->Vd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/b;->VU(I)V

    .line 327
    iget-object v0, p0, Lcom/google/protobuf/nano/b;->Pu:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/b;->Wd(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/nio/BufferOverflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public Vm([B)V
    .locals 2

    .prologue
    .line 992
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/protobuf/nano/b;->Wb([BII)V

    .line 993
    return-void
.end method

.method public Vn(I)V
    .locals 3

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/google/protobuf/nano/b;->Pu:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 1076
    new-instance v0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v1, p0, Lcom/google/protobuf/nano/b;->Pu:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/nano/b;->Pu:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw v0

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/b;->Pu:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1079
    return-void
.end method

.method public Vp()I
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/google/protobuf/nano/b;->Pu:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public Vt(J)V
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/nano/b;->Vg(J)V

    .line 276
    return-void
.end method

.method public Vv(II)V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/b;->VY(II)V

    .line 124
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/b;->Vw(I)V

    .line 125
    return-void
.end method

.method public Vw(I)V
    .locals 2

    .prologue
    .line 280
    if-ltz p1, :cond_0

    .line 281
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/b;->VU(I)V

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/nano/b;->Vg(J)V

    goto :goto_0
.end method

.method public Vx(J)V
    .locals 3

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/google/protobuf/nano/b;->Pu:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 1086
    new-instance v0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v1, p0, Lcom/google/protobuf/nano/b;->Pu:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/nano/b;->Pu:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw v0

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/b;->Pu:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1089
    return-void
.end method

.method public Wb([BII)V
    .locals 3

    .prologue
    .line 998
    iget-object v0, p0, Lcom/google/protobuf/nano/b;->Pu:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, p3, :cond_0

    .line 999
    iget-object v0, p0, Lcom/google/protobuf/nano/b;->Pu:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1004
    return-void

    .line 1002
    :cond_0
    new-instance v0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v1, p0, Lcom/google/protobuf/nano/b;->Pu:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/nano/b;->Pu:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw v0
.end method

.method public Wc(IJ)V
    .locals 2

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/b;->VY(II)V

    .line 117
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/nano/b;->Vt(J)V

    .line 118
    return-void
.end method
