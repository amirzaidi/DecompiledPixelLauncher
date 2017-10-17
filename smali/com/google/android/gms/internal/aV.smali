.class public final Lcom/google/android/gms/internal/aV;
.super Ljava/lang/Object;


# instance fields
.field private final tf:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/aV;->tf:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->tf:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private constructor <init>([BII)V
    .locals 1

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aV;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static vL(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/aN;->vj(II)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/aV;->vZ(I)I

    move-result v0

    return v0
.end method

.method public static vM(J)I
    .locals 4

    const-wide/16 v2, 0x0

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    return v0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    return v0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    return v0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    return v0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    return v0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    return v0

    :cond_8
    const/16 v0, 0xa

    return v0
.end method

.method private static vN(Ljava/lang/CharSequence;I)I
    .locals 5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v1, 0x0

    move v0, p1

    :goto_0
    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x800

    if-lt v3, v4, :cond_2

    add-int/lit8 v1, v1, 0x2

    const v4, 0xd800

    if-le v4, v3, :cond_3

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    rsub-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/2addr v1, v3

    goto :goto_1

    :cond_3
    const v4, 0xdfff

    if-gt v3, v4, :cond_1

    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    const/high16 v4, 0x10000

    if-lt v3, v4, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Unpaired surrogate at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static vR(IJ)I
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/internal/aV;->vL(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/aV;->wg(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static vS([B)Lcom/google/android/gms/internal/aV;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/aV;->wE([BII)Lcom/google/android/gms/internal/aV;

    move-result-object v0

    return-object v0
.end method

.method public static vZ(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-eqz v0, :cond_0

    and-int/lit16 v0, p0, -0x4000

    if-eqz v0, :cond_1

    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-eqz v0, :cond_2

    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x3

    return v0

    :cond_3
    const/4 v0, 0x4

    return v0
.end method

.method public static wC(F)I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static wD(J)I
    .locals 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/aV;->vM(J)I

    move-result v0

    return v0
.end method

.method public static wE([BII)Lcom/google/android/gms/internal/aV;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/aV;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/aV;-><init>([BII)V

    return-object v0
.end method

.method private static wG(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/aV;->ww(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gms/internal/aV;->ws(Ljava/lang/CharSequence;[BII)I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/nio/BufferOverflowException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public static wL(ILcom/google/android/gms/internal/aI;)I
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/aV;->vL(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/aV;->wq(Lcom/google/android/gms/internal/aI;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static wM(I[B)I
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/aV;->vL(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/aV;->wj([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static wN(ID)I
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/internal/aV;->vL(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/aV;->wy(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static wO(IZ)I
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/aV;->vL(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/aV;->wx(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static wR(J)J
    .locals 4

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static wd(IF)I
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/aV;->vL(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/aV;->wC(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static wf(ILcom/google/android/gms/internal/aI;)I
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/aV;->vL(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Lcom/google/android/gms/internal/aV;->wp(Lcom/google/android/gms/internal/aI;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static wg(J)I
    .locals 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/aV;->wR(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/aV;->vM(J)I

    move-result v0

    return v0
.end method

.method public static wh(I)I
    .locals 1

    if-gez p0, :cond_0

    const/16 v0, 0xa

    return v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/aV;->vZ(I)I

    move-result v0

    return v0
.end method

.method public static wi(Ljava/lang/String;)I
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/aV;->wu(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/aV;->vZ(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static wj([B)I
    .locals 2

    array-length v0, p0

    invoke-static {v0}, Lcom/google/android/gms/internal/aV;->vZ(I)I

    move-result v0

    array-length v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method public static wl(ILjava/lang/String;)I
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/aV;->vL(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/aV;->wi(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static wn(II)I
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/aV;->vL(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/aV;->wh(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static wp(Lcom/google/android/gms/internal/aI;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aI;->uY()I

    move-result v0

    return v0
.end method

.method public static wq(Lcom/google/android/gms/internal/aI;)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aI;->uY()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/aV;->vZ(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static ws(Ljava/lang/CharSequence;[BII)I
    .locals 8

    const/4 v0, 0x0

    const/16 v7, 0x80

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int v4, p2, p3

    :goto_0
    if-lt v0, v3, :cond_1

    :cond_0
    if-eq v0, v3, :cond_2

    add-int v1, p2, v0

    move v2, v1

    :goto_1
    if-lt v0, v3, :cond_3

    return v2

    :cond_1
    add-int v1, v0, p2

    if-ge v1, v4, :cond_0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ge v1, v7, :cond_0

    add-int v2, p2, v0

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int v0, p2, v3

    return v0

    :cond_3
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-lt v5, v7, :cond_7

    :cond_4
    const/16 v1, 0x800

    if-lt v5, v1, :cond_8

    :cond_5
    const v1, 0xd800

    if-ge v5, v1, :cond_9

    :cond_6
    add-int/lit8 v1, v4, -0x3

    if-le v2, v1, :cond_a

    :goto_2
    add-int/lit8 v1, v4, -0x4

    if-le v2, v1, :cond_b

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

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

    :cond_7
    if-ge v2, v4, :cond_4

    add-int/lit8 v1, v2, 0x1

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, p1, v2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_1

    :cond_8
    add-int/lit8 v1, v4, -0x2

    if-gt v2, v1, :cond_5

    add-int/lit8 v6, v2, 0x1

    ushr-int/lit8 v1, v5, 0x6

    or-int/lit16 v1, v1, 0x3c0

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    :goto_4
    add-int/lit8 v1, v6, 0x1

    and-int/lit8 v2, v5, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v6

    goto :goto_3

    :cond_9
    const v1, 0xdfff

    if-lt v1, v5, :cond_6

    goto :goto_2

    :cond_a
    add-int/lit8 v1, v2, 0x1

    ushr-int/lit8 v6, v5, 0xc

    or-int/lit16 v6, v6, 0x1e0

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, p1, v2

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, p1, v1

    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, p1, v2

    goto :goto_3

    :cond_b
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ne v1, v6, :cond_d

    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    add-int/lit8 v0, v0, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Unpaired surrogate at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {v5, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    add-int/lit8 v1, v2, 0x1

    ushr-int/lit8 v6, v5, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, p1, v2

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v6, v5, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, p1, v1

    add-int/lit8 v6, v2, 0x1

    ushr-int/lit8 v1, v5, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    goto/16 :goto_4
.end method

.method private static wu(Ljava/lang/CharSequence;)I
    .locals 6

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    :cond_0
    move v1, v0

    move v0, v2

    :goto_1
    if-lt v1, v2, :cond_2

    :goto_2
    if-lt v0, v2, :cond_4

    return v0

    :cond_1
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x80

    if-ge v1, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x800

    if-lt v3, v4, :cond_3

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/aV;->vN(Ljava/lang/CharSequence;I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2

    :cond_3
    rsub-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    int-to-long v2, v0

    const-wide v4, 0x100000000L

    add-long/2addr v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x36

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "UTF-8 length does not fit in int: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static wv(IJ)I
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/internal/aV;->vL(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/aV;->wD(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static ww(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 6

    const/4 v0, 0x0

    const/16 v5, 0x80

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-lt v2, v5, :cond_2

    const/16 v3, 0x800

    if-lt v2, v3, :cond_3

    const v3, 0xd800

    if-ge v2, v3, :cond_4

    :cond_1
    ushr-int/lit8 v3, v2, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_3
    ushr-int/lit8 v3, v2, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_4
    const v3, 0xdfff

    if-lt v3, v2, :cond_1

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v3, v4, :cond_6

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    add-int/lit8 v0, v0, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Unpaired surrogate at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    ushr-int/lit8 v3, v2, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v3, v2, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1
.end method

.method public static wx(Z)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static wy(D)I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method


# virtual methods
.method public vO(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/aV;->vV(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/aV;->wJ(Z)V

    return-void
.end method

.method public vP(J)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/aV;->wa(J)V

    return-void
.end method

.method public vQ()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aV;->vW()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public vT([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/aV;->wc([BII)V

    return-void
.end method

.method public vU(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/aV;->vV(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/aV;->we(Ljava/lang/String;)V

    return-void
.end method

.method public vV(II)V
    .locals 1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/aN;->vj(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aV;->wb(I)V

    return-void
.end method

.method public vW()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->tf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public vX(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/aV;->vV(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/aV;->wm(I)V

    return-void
.end method

.method public vY(IJ)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/aV;->vV(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/aV;->vP(J)V

    return-void
.end method

.method public wA(Lcom/google/android/gms/internal/aI;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/aI;->sa(Lcom/google/android/gms/internal/aV;)V

    return-void
.end method

.method public wB(D)V
    .locals 3

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/aV;->wT(J)V

    return-void
.end method

.method public wF([B)V
    .locals 1

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aV;->wb(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aV;->vT([B)V

    return-void
.end method

.method public wH(Lcom/google/android/gms/internal/aI;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aI;->uX()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aV;->wb(I)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/aI;->sa(Lcom/google/android/gms/internal/aV;)V

    return-void
.end method

.method public wI(J)V
    .locals 3

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/aV;->wR(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/aV;->wa(J)V

    return-void
.end method

.method public wJ(Z)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aV;->wP(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public wK(B)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->tf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->tf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzaxp$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/aV;->tf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/aV;->tf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzaxp$zza;-><init>(II)V

    throw v0
.end method

.method public wP(I)V
    .locals 1

    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aV;->wK(B)V

    return-void
.end method

.method public wQ(ILcom/google/android/gms/internal/aI;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/aV;->vV(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/aV;->wH(Lcom/google/android/gms/internal/aI;)V

    return-void
.end method

.method public wS(IJ)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/aV;->vV(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/aV;->wI(J)V

    return-void
.end method

.method public wT(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->tf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->tf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzaxp$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/aV;->tf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/aV;->tf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzaxp$zza;-><init>(II)V

    throw v0
.end method

.method public wa(J)V
    .locals 5

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aV;->wP(I)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aV;->wP(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public wb(I)V
    .locals 1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aV;->wP(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aV;->wP(I)V

    return-void
.end method

.method public wc([BII)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->tf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, p3, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzaxp$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/aV;->tf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/aV;->tf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzaxp$zza;-><init>(II)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->tf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public we(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/aV;->vZ(I)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/aV;->vZ(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/aV;->wu(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aV;->wb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->tf:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aV;->wG(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aV;->tf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/aV;->tf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/aV;->tf:Ljava/nio/ByteBuffer;

    add-int v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/google/android/gms/internal/aV;->tf:Ljava/nio/ByteBuffer;

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/aV;->wG(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/aV;->tf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/aV;->tf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sub-int v1, v2, v1

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aV;->wb(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->tf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzaxp$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/aV;->tf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/aV;->tf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzaxp$zza;-><init>(II)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzaxp$zza;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_1
    :try_start_1
    new-instance v2, Lcom/google/android/gms/internal/zzaxp$zza;

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/aV;->tf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/zzaxp$zza;-><init>(II)V

    throw v2
    :try_end_1
    .catch Ljava/nio/BufferOverflowException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public wk(ID)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/aV;->vV(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/aV;->wB(D)V

    return-void
.end method

.method public wm(I)V
    .locals 2

    if-gez p1, :cond_0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/aV;->wa(J)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aV;->wb(I)V

    goto :goto_0
.end method

.method public wo(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->tf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->tf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzaxp$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/aV;->tf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/aV;->tf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzaxp$zza;-><init>(II)V

    throw v0
.end method

.method public wr(IF)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/aV;->vV(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/aV;->wt(F)V

    return-void
.end method

.method public wt(F)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aV;->wo(I)V

    return-void
.end method

.method public wz(I[B)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/aV;->vV(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/aV;->wF([B)V

    return-void
.end method
