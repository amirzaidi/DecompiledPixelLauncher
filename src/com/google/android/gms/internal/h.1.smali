.class public final Lcom/google/android/gms/internal/h;
.super Lcom/google/android/gms/internal/aU;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public oA:J

.field public oB:[B

.field public oC:J

.field public oD:Lcom/google/android/gms/internal/aG;

.field public oE:Ljava/lang/String;

.field public oF:J

.field public oG:I

.field public oH:[B

.field public oI:Lcom/google/android/gms/internal/ax;

.field public oJ:[I

.field public oK:[Lcom/google/android/gms/internal/aE;

.field public oL:Ljava/lang/String;

.field public oM:J

.field public oN:Ljava/lang/String;

.field public oO:Lcom/google/android/gms/internal/au;

.field public os:J

.field public ot:I

.field public ou:Ljava/lang/String;

.field public ov:Lcom/google/android/gms/internal/aQ;

.field public ow:Z

.field public ox:Ljava/lang/String;

.field public oy:[B

.field public oz:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aU;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/h;->sf()Lcom/google/android/gms/internal/h;

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/h;->sd()Lcom/google/android/gms/internal/h;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 8

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/aU;->computeSerializedSize()I

    move-result v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/h;->oC:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/h;->oC:J

    const/4 v4, 0x1

    invoke-static {v4, v2, v3}, Lcom/google/android/gms/internal/aP;->wu(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->ou:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oK:[Lcom/google/android/gms/internal/aE;

    if-nez v2, :cond_8

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oH:[B

    sget-object v3, Lcom/google/android/gms/internal/aH;->sW:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_b

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oy:[B

    sget-object v3, Lcom/google/android/gms/internal/aH;->sW:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_c

    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oI:Lcom/google/android/gms/internal/ax;

    if-nez v2, :cond_d

    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oL:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :goto_5
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oD:Lcom/google/android/gms/internal/aG;

    if-nez v2, :cond_f

    :goto_6
    iget-boolean v2, p0, Lcom/google/android/gms/internal/h;->ow:Z

    if-nez v2, :cond_10

    :goto_7
    iget v2, p0, Lcom/google/android/gms/internal/h;->oz:I

    if-nez v2, :cond_11

    :goto_8
    iget v2, p0, Lcom/google/android/gms/internal/h;->oG:I

    if-nez v2, :cond_12

    :goto_9
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oN:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :goto_a
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oE:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    :goto_b
    iget-wide v2, p0, Lcom/google/android/gms/internal/h;->oM:J

    const-wide/32 v4, 0x2bf20

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/h;->oM:J

    const/16 v4, 0xf

    invoke-static {v4, v2, v3}, Lcom/google/android/gms/internal/aP;->vQ(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->ov:Lcom/google/android/gms/internal/aQ;

    if-nez v2, :cond_15

    :goto_c
    iget-wide v2, p0, Lcom/google/android/gms/internal/h;->oF:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/internal/h;->oF:J

    const/16 v4, 0x11

    invoke-static {v4, v2, v3}, Lcom/google/android/gms/internal/aP;->wu(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oB:[B

    sget-object v3, Lcom/google/android/gms/internal/aH;->sW:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_16

    :goto_d
    iget v2, p0, Lcom/google/android/gms/internal/h;->ot:I

    if-nez v2, :cond_17

    :goto_e
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oJ:[I

    if-nez v2, :cond_18

    :cond_4
    :goto_f
    iget-wide v2, p0, Lcom/google/android/gms/internal/h;->oA:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_5

    iget-wide v2, p0, Lcom/google/android/gms/internal/h;->oA:J

    const/16 v1, 0x15

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/aP;->wu(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-wide v2, p0, Lcom/google/android/gms/internal/h;->os:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_6

    iget-wide v2, p0, Lcom/google/android/gms/internal/h;->os:J

    const/16 v1, 0x16

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/aP;->wu(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/h;->oO:Lcom/google/android/gms/internal/au;

    if-nez v1, :cond_1a

    :goto_10
    iget-object v1, p0, Lcom/google/android/gms/internal/h;->ox:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    :goto_11
    return v0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->ou:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/aP;->wk(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oK:[Lcom/google/android/gms/internal/aE;

    array-length v2, v2

    if-lez v2, :cond_1

    move v2, v0

    move v0, v1

    :goto_12
    iget-object v3, p0, Lcom/google/android/gms/internal/h;->oK:[Lcom/google/android/gms/internal/aE;

    array-length v3, v3

    if-lt v0, v3, :cond_9

    move v0, v2

    goto/16 :goto_1

    :cond_9
    iget-object v3, p0, Lcom/google/android/gms/internal/h;->oK:[Lcom/google/android/gms/internal/aE;

    aget-object v3, v3, v0

    if-nez v3, :cond_a

    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_a
    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/aP;->wK(ILcom/google/android/gms/internal/aC;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_13

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oH:[B

    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/aP;->wL(I[B)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_2

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oy:[B

    const/4 v3, 0x6

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/aP;->wL(I[B)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_3

    :cond_d
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oI:Lcom/google/android/gms/internal/ax;

    const/4 v3, 0x7

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/aP;->wK(ILcom/google/android/gms/internal/aC;)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_4

    :cond_e
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oL:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/aP;->wk(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_5

    :cond_f
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oD:Lcom/google/android/gms/internal/aG;

    const/16 v3, 0x9

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/aP;->wK(ILcom/google/android/gms/internal/aC;)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_6

    :cond_10
    iget-boolean v2, p0, Lcom/google/android/gms/internal/h;->ow:Z

    const/16 v3, 0xa

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/aP;->wN(IZ)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_7

    :cond_11
    iget v2, p0, Lcom/google/android/gms/internal/h;->oz:I

    const/16 v3, 0xb

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/aP;->wm(II)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_8

    :cond_12
    iget v2, p0, Lcom/google/android/gms/internal/h;->oG:I

    const/16 v3, 0xc

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/aP;->wm(II)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_9

    :cond_13
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oN:Ljava/lang/String;

    const/16 v3, 0xd

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/aP;->wk(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_a

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oE:Ljava/lang/String;

    const/16 v3, 0xe

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/aP;->wk(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_b

    :cond_15
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->ov:Lcom/google/android/gms/internal/aQ;

    const/16 v3, 0x10

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/aP;->wK(ILcom/google/android/gms/internal/aC;)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_c

    :cond_16
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oB:[B

    const/16 v3, 0x12

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/aP;->wL(I[B)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_d

    :cond_17
    iget v2, p0, Lcom/google/android/gms/internal/h;->ot:I

    const/16 v3, 0x13

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/aP;->wm(II)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_e

    :cond_18
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oJ:[I

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v1

    :goto_14
    iget-object v3, p0, Lcom/google/android/gms/internal/h;->oJ:[I

    array-length v3, v3

    if-lt v1, v3, :cond_19

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/h;->oJ:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto/16 :goto_f

    :cond_19
    iget-object v3, p0, Lcom/google/android/gms/internal/h;->oJ:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/aP;->wg(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/h;->oO:Lcom/google/android/gms/internal/au;

    const/16 v2, 0x17

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aP;->wK(ILcom/google/android/gms/internal/aC;)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_10

    :cond_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/h;->ox:Ljava/lang/String;

    const/16 v2, 0x18

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aP;->wk(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_11
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p1, p0, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/internal/h;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/h;

    iget-wide v2, p0, Lcom/google/android/gms/internal/h;->oC:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/h;->oC:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    return v0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/internal/h;->oF:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/h;->oF:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    return v0

    :cond_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/h;->oA:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/h;->oA:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    return v0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->ou:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/internal/h;->ou:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/h;->ou:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_5
    iget v2, p0, Lcom/google/android/gms/internal/h;->oz:I

    iget v3, p1, Lcom/google/android/gms/internal/h;->oz:I

    if-ne v2, v3, :cond_d

    iget v2, p0, Lcom/google/android/gms/internal/h;->oG:I

    iget v3, p1, Lcom/google/android/gms/internal/h;->oG:I

    if-ne v2, v3, :cond_e

    iget-boolean v2, p0, Lcom/google/android/gms/internal/h;->ow:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/h;->ow:Z

    if-ne v2, v3, :cond_f

    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oK:[Lcom/google/android/gms/internal/aE;

    iget-object v3, p1, Lcom/google/android/gms/internal/h;->oK:[Lcom/google/android/gms/internal/aE;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/aR;->wW([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oH:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/h;->oH:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oD:Lcom/google/android/gms/internal/aG;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oD:Lcom/google/android/gms/internal/aG;

    iget-object v3, p1, Lcom/google/android/gms/internal/h;->oD:Lcom/google/android/gms/internal/aG;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/aG;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oy:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/h;->oy:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oL:Ljava/lang/String;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oL:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/h;->oL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oN:Ljava/lang/String;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oN:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/h;->oN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oI:Lcom/google/android/gms/internal/ax;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oI:Lcom/google/android/gms/internal/ax;

    iget-object v3, p1, Lcom/google/android/gms/internal/h;->oI:Lcom/google/android/gms/internal/ax;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ax;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oE:Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oE:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/h;->oE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_a
    iget-wide v2, p0, Lcom/google/android/gms/internal/h;->oM:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/h;->oM:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1d

    return v0

    :cond_b
    iget-object v2, p1, Lcom/google/android/gms/internal/h;->ou:Ljava/lang/String;

    if-eqz v2, :cond_5

    return v0

    :cond_c
    return v0

    :cond_d
    return v0

    :cond_e
    return v0

    :cond_f
    return v0

    :cond_10
    return v0

    :cond_11
    return v0

    :cond_12
    iget-object v2, p1, Lcom/google/android/gms/internal/h;->oD:Lcom/google/android/gms/internal/aG;

    if-eqz v2, :cond_6

    return v0

    :cond_13
    return v0

    :cond_14
    return v0

    :cond_15
    iget-object v2, p1, Lcom/google/android/gms/internal/h;->oL:Ljava/lang/String;

    if-eqz v2, :cond_7

    return v0

    :cond_16
    return v0

    :cond_17
    iget-object v2, p1, Lcom/google/android/gms/internal/h;->oN:Ljava/lang/String;

    if-eqz v2, :cond_8

    return v0

    :cond_18
    return v0

    :cond_19
    iget-object v2, p1, Lcom/google/android/gms/internal/h;->oI:Lcom/google/android/gms/internal/ax;

    if-eqz v2, :cond_9

    return v0

    :cond_1a
    return v0

    :cond_1b
    iget-object v2, p1, Lcom/google/android/gms/internal/h;->oE:Ljava/lang/String;

    if-eqz v2, :cond_a

    return v0

    :cond_1c
    return v0

    :cond_1d
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->ov:Lcom/google/android/gms/internal/aQ;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/google/android/gms/internal/h;->ov:Lcom/google/android/gms/internal/aQ;

    iget-object v3, p1, Lcom/google/android/gms/internal/h;->ov:Lcom/google/android/gms/internal/aQ;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/aQ;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_1e
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oB:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/h;->oB:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/google/android/gms/internal/h;->ox:Ljava/lang/String;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/google/android/gms/internal/h;->ox:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/h;->ox:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_1f
    iget v2, p0, Lcom/google/android/gms/internal/h;->ot:I

    iget v3, p1, Lcom/google/android/gms/internal/h;->ot:I

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oJ:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/h;->oJ:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/aR;->xd([I[I)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-wide v2, p0, Lcom/google/android/gms/internal/h;->os:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/h;->os:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_27

    return v0

    :cond_20
    iget-object v2, p1, Lcom/google/android/gms/internal/h;->ov:Lcom/google/android/gms/internal/aQ;

    if-eqz v2, :cond_1e

    return v0

    :cond_21
    return v0

    :cond_22
    return v0

    :cond_23
    iget-object v2, p1, Lcom/google/android/gms/internal/h;->ox:Ljava/lang/String;

    if-eqz v2, :cond_1f

    return v0

    :cond_24
    return v0

    :cond_25
    return v0

    :cond_26
    return v0

    :cond_27
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oO:Lcom/google/android/gms/internal/au;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oO:Lcom/google/android/gms/internal/au;

    iget-object v3, p1, Lcom/google/android/gms/internal/h;->oO:Lcom/google/android/gms/internal/au;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/au;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    :cond_28
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->tz:Lcom/google/android/gms/internal/aL;

    if-nez v2, :cond_2d

    :cond_29
    iget-object v2, p1, Lcom/google/android/gms/internal/h;->tz:Lcom/google/android/gms/internal/aL;

    if-nez v2, :cond_2e

    :cond_2a
    move v0, v1

    :goto_0
    return v0

    :cond_2b
    iget-object v2, p1, Lcom/google/android/gms/internal/h;->oO:Lcom/google/android/gms/internal/au;

    if-eqz v2, :cond_28

    return v0

    :cond_2c
    return v0

    :cond_2d
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->tz:Lcom/google/android/gms/internal/aL;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aL;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->tz:Lcom/google/android/gms/internal/aL;

    iget-object v1, p1, Lcom/google/android/gms/internal/h;->tz:Lcom/google/android/gms/internal/aL;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aL;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2e
    iget-object v2, p1, Lcom/google/android/gms/internal/h;->tz:Lcom/google/android/gms/internal/aL;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aL;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2a

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/h;->oC:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/h;->oC:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/h;->oF:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/h;->oF:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/h;->oA:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/h;->oA:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->ou:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->ou:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/h;->oz:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/h;->oG:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/h;->ow:Z

    if-nez v0, :cond_2

    const/16 v0, 0x4d5

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oK:[Lcom/google/android/gms/internal/aE;

    invoke-static {v2}, Lcom/google/android/gms/internal/aR;->xe([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oH:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oD:Lcom/google/android/gms/internal/aG;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oD:Lcom/google/android/gms/internal/aG;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aG;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oy:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oL:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oN:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oN:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oI:Lcom/google/android/gms/internal/ax;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oI:Lcom/google/android/gms/internal/ax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ax;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oE:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/h;->oM:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/h;->oM:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->ov:Lcom/google/android/gms/internal/aQ;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->ov:Lcom/google/android/gms/internal/aQ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aQ;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oB:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->ox:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->ox:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/h;->ot:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oJ:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/aR;->xa([I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/h;->os:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/h;->os:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oO:Lcom/google/android/gms/internal/au;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oO:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/h;->tz:Lcom/google/android/gms/internal/aL;

    if-nez v2, :cond_b

    :cond_0
    :goto_a
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x4cf

    goto/16 :goto_1

    :cond_3
    move v0, v1

    goto/16 :goto_2

    :cond_4
    move v0, v1

    goto/16 :goto_3

    :cond_5
    move v0, v1

    goto/16 :goto_4

    :cond_6
    move v0, v1

    goto :goto_5

    :cond_7
    move v0, v1

    goto :goto_6

    :cond_8
    move v0, v1

    goto :goto_7

    :cond_9
    move v0, v1

    goto :goto_8

    :cond_a
    move v0, v1

    goto :goto_9

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->tz:Lcom/google/android/gms/internal/aL;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aL;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/h;->tz:Lcom/google/android/gms/internal/aL;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aL;->hashCode()I

    move-result v1

    goto :goto_a
.end method

.method public sc(Lcom/google/android/gms/internal/aP;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/h;->oC:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/h;->oC:J

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/aP;->vX(IJ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->ou:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oK:[Lcom/google/android/gms/internal/aE;

    if-nez v0, :cond_8

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oH:[B

    sget-object v2, Lcom/google/android/gms/internal/aH;->sW:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oy:[B

    sget-object v2, Lcom/google/android/gms/internal/aH;->sW:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oI:Lcom/google/android/gms/internal/ax;

    if-nez v0, :cond_c

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oL:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oD:Lcom/google/android/gms/internal/aG;

    if-nez v0, :cond_e

    :goto_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/h;->ow:Z

    if-nez v0, :cond_f

    :goto_6
    iget v0, p0, Lcom/google/android/gms/internal/h;->oz:I

    if-nez v0, :cond_10

    :goto_7
    iget v0, p0, Lcom/google/android/gms/internal/h;->oG:I

    if-nez v0, :cond_11

    :goto_8
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oN:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :goto_9
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oE:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    :goto_a
    iget-wide v2, p0, Lcom/google/android/gms/internal/h;->oM:J

    const-wide/32 v4, 0x2bf20

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/h;->oM:J

    const/16 v0, 0xf

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/aP;->wR(IJ)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->ov:Lcom/google/android/gms/internal/aQ;

    if-nez v0, :cond_14

    :goto_b
    iget-wide v2, p0, Lcom/google/android/gms/internal/h;->oF:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/internal/h;->oF:J

    const/16 v0, 0x11

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/aP;->vX(IJ)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oB:[B

    sget-object v2, Lcom/google/android/gms/internal/aH;->sW:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_15

    :goto_c
    iget v0, p0, Lcom/google/android/gms/internal/h;->ot:I

    if-nez v0, :cond_16

    :goto_d
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oJ:[I

    if-nez v0, :cond_17

    :cond_4
    iget-wide v0, p0, Lcom/google/android/gms/internal/h;->oA:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/google/android/gms/internal/h;->oA:J

    const/16 v2, 0x15

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/aP;->vX(IJ)V

    :cond_5
    iget-wide v0, p0, Lcom/google/android/gms/internal/h;->os:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/google/android/gms/internal/h;->os:J

    const/16 v2, 0x16

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/aP;->vX(IJ)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oO:Lcom/google/android/gms/internal/au;

    if-nez v0, :cond_18

    :goto_e
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->ox:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    :goto_f
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/aU;->sc(Lcom/google/android/gms/internal/aP;)V

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->ou:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/aP;->vT(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oK:[Lcom/google/android/gms/internal/aE;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_10
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oK:[Lcom/google/android/gms/internal/aE;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oK:[Lcom/google/android/gms/internal/aE;

    aget-object v2, v2, v0

    if-nez v2, :cond_9

    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_9
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/aP;->wP(ILcom/google/android/gms/internal/aC;)V

    goto :goto_11

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oH:[B

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/aP;->wy(I[B)V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oy:[B

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/aP;->wy(I[B)V

    goto/16 :goto_2

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oI:Lcom/google/android/gms/internal/ax;

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/aP;->wP(ILcom/google/android/gms/internal/aC;)V

    goto/16 :goto_3

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oL:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/aP;->vT(ILjava/lang/String;)V

    goto/16 :goto_4

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oD:Lcom/google/android/gms/internal/aG;

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/aP;->wP(ILcom/google/android/gms/internal/aC;)V

    goto/16 :goto_5

    :cond_f
    iget-boolean v0, p0, Lcom/google/android/gms/internal/h;->ow:Z

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/aP;->vN(IZ)V

    goto/16 :goto_6

    :cond_10
    iget v0, p0, Lcom/google/android/gms/internal/h;->oz:I

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/aP;->vW(II)V

    goto/16 :goto_7

    :cond_11
    iget v0, p0, Lcom/google/android/gms/internal/h;->oG:I

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/aP;->vW(II)V

    goto/16 :goto_8

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oN:Ljava/lang/String;

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/aP;->vT(ILjava/lang/String;)V

    goto/16 :goto_9

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oE:Ljava/lang/String;

    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/aP;->vT(ILjava/lang/String;)V

    goto/16 :goto_a

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->ov:Lcom/google/android/gms/internal/aQ;

    const/16 v2, 0x10

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/aP;->wP(ILcom/google/android/gms/internal/aC;)V

    goto/16 :goto_b

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oB:[B

    const/16 v2, 0x12

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/aP;->wy(I[B)V

    goto/16 :goto_c

    :cond_16
    iget v0, p0, Lcom/google/android/gms/internal/h;->ot:I

    const/16 v2, 0x13

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/aP;->vW(II)V

    goto/16 :goto_d

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oJ:[I

    array-length v0, v0

    if-lez v0, :cond_4

    :goto_12
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oJ:[I

    array-length v0, v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oJ:[I

    aget v0, v0, v1

    const/16 v2, 0x14

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/aP;->vW(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oO:Lcom/google/android/gms/internal/au;

    const/16 v1, 0x17

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aP;->wP(ILcom/google/android/gms/internal/aC;)V

    goto/16 :goto_e

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->ox:Ljava/lang/String;

    const/16 v1, 0x18

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aP;->vT(ILjava/lang/String;)V

    goto/16 :goto_f
.end method

.method public sd()Lcom/google/android/gms/internal/h;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/aU;->sg()Lcom/google/android/gms/internal/aU;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/h;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oK:[Lcom/google/android/gms/internal/aE;

    if-nez v2, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/h;->oD:Lcom/google/android/gms/internal/aG;

    if-nez v1, :cond_4

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/h;->oI:Lcom/google/android/gms/internal/ax;

    if-nez v1, :cond_5

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/h;->ov:Lcom/google/android/gms/internal/aQ;

    if-nez v1, :cond_6

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/h;->oJ:[I

    if-nez v1, :cond_7

    :cond_1
    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/h;->oO:Lcom/google/android/gms/internal/au;

    if-nez v1, :cond_8

    :goto_4
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oK:[Lcom/google/android/gms/internal/aE;

    array-length v2, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oK:[Lcom/google/android/gms/internal/aE;

    array-length v2, v2

    new-array v2, v2, [Lcom/google/android/gms/internal/aE;

    iput-object v2, v0, Lcom/google/android/gms/internal/h;->oK:[Lcom/google/android/gms/internal/aE;

    move v2, v1

    :goto_5
    iget-object v1, p0, Lcom/google/android/gms/internal/h;->oK:[Lcom/google/android/gms/internal/aE;

    array-length v1, v1

    if-ge v2, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/h;->oK:[Lcom/google/android/gms/internal/aE;

    aget-object v1, v1, v2

    if-nez v1, :cond_3

    :goto_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    :cond_3
    iget-object v3, v0, Lcom/google/android/gms/internal/h;->oK:[Lcom/google/android/gms/internal/aE;

    iget-object v1, p0, Lcom/google/android/gms/internal/h;->oK:[Lcom/google/android/gms/internal/aE;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aE;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/aE;

    aput-object v1, v3, v2

    goto :goto_6

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/h;->oD:Lcom/google/android/gms/internal/aG;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aG;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/aG;

    iput-object v1, v0, Lcom/google/android/gms/internal/h;->oD:Lcom/google/android/gms/internal/aG;

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/h;->oI:Lcom/google/android/gms/internal/ax;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ax;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ax;

    iput-object v1, v0, Lcom/google/android/gms/internal/h;->oI:Lcom/google/android/gms/internal/ax;

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/h;->ov:Lcom/google/android/gms/internal/aQ;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aQ;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/aQ;

    iput-object v1, v0, Lcom/google/android/gms/internal/h;->ov:Lcom/google/android/gms/internal/aQ;

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/h;->oJ:[I

    array-length v1, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/h;->oJ:[I

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/google/android/gms/internal/h;->oJ:[I

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/h;->oO:Lcom/google/android/gms/internal/au;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/au;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/au;

    iput-object v1, v0, Lcom/google/android/gms/internal/h;->oO:Lcom/google/android/gms/internal/au;

    goto :goto_4
.end method

.method public synthetic se(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/aC;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/h;->sh(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/h;

    move-result-object v0

    return-object v0
.end method

.method public sf()Lcom/google/android/gms/internal/h;
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-wide v4, p0, Lcom/google/android/gms/internal/h;->oC:J

    iput-wide v4, p0, Lcom/google/android/gms/internal/h;->oF:J

    iput-wide v4, p0, Lcom/google/android/gms/internal/h;->oA:J

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/h;->ou:Ljava/lang/String;

    iput v3, p0, Lcom/google/android/gms/internal/h;->oz:I

    iput v3, p0, Lcom/google/android/gms/internal/h;->oG:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/h;->ow:Z

    invoke-static {}, Lcom/google/android/gms/internal/aE;->va()[Lcom/google/android/gms/internal/aE;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/h;->oK:[Lcom/google/android/gms/internal/aE;

    sget-object v0, Lcom/google/android/gms/internal/aH;->sW:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/h;->oH:[B

    iput-object v2, p0, Lcom/google/android/gms/internal/h;->oD:Lcom/google/android/gms/internal/aG;

    sget-object v0, Lcom/google/android/gms/internal/aH;->sW:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/h;->oy:[B

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/h;->oL:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/h;->oN:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/h;->oI:Lcom/google/android/gms/internal/ax;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/h;->oE:Ljava/lang/String;

    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcom/google/android/gms/internal/h;->oM:J

    iput-object v2, p0, Lcom/google/android/gms/internal/h;->ov:Lcom/google/android/gms/internal/aQ;

    sget-object v0, Lcom/google/android/gms/internal/aH;->sW:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/h;->oB:[B

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/h;->ox:Ljava/lang/String;

    iput v3, p0, Lcom/google/android/gms/internal/h;->ot:I

    sget-object v0, Lcom/google/android/gms/internal/aH;->sU:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/h;->oJ:[I

    iput-wide v4, p0, Lcom/google/android/gms/internal/h;->os:J

    iput-object v2, p0, Lcom/google/android/gms/internal/h;->oO:Lcom/google/android/gms/internal/au;

    iput-object v2, p0, Lcom/google/android/gms/internal/h;->tz:Lcom/google/android/gms/internal/aL;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/h;->sH:I

    return-object p0
.end method

.method public synthetic sg()Lcom/google/android/gms/internal/aU;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/h;

    return-object v0
.end method

.method public sh(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/h;
    .locals 5

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xF()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/aU;->xs(Lcom/google/android/gms/internal/aY;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xW()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/h;->oC:J

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xZ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/h;->ou:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aH;->vj(Lcom/google/android/gms/internal/aY;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oK:[Lcom/google/android/gms/internal/aE;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oK:[Lcom/google/android/gms/internal/aE;

    array-length v0, v0

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/aE;

    if-nez v0, :cond_2

    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/aE;

    invoke-direct {v3}, Lcom/google/android/gms/internal/aE;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/aY;->xP(Lcom/google/android/gms/internal/aC;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/h;->oK:[Lcom/google/android/gms/internal/aE;

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/h;->oK:[Lcom/google/android/gms/internal/aE;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/aE;

    invoke-direct {v3}, Lcom/google/android/gms/internal/aE;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/aY;->xP(Lcom/google/android/gms/internal/aC;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xF()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xO()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/h;->oH:[B

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xO()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/h;->oy:[B

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oI:Lcom/google/android/gms/internal/ax;

    if-eqz v0, :cond_4

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oI:Lcom/google/android/gms/internal/ax;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/aY;->xP(Lcom/google/android/gms/internal/aC;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ax;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ax;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/h;->oI:Lcom/google/android/gms/internal/ax;

    goto :goto_3

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xZ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/h;->oL:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oD:Lcom/google/android/gms/internal/aG;

    if-eqz v0, :cond_5

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oD:Lcom/google/android/gms/internal/aG;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/aY;->xP(Lcom/google/android/gms/internal/aC;)V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/aG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aG;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/h;->oD:Lcom/google/android/gms/internal/aG;

    goto :goto_4

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xN()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/h;->ow:Z

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/h;->oz:I

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/h;->oG:I

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xZ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/h;->oN:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xZ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/h;->oE:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xI()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/h;->oM:J

    goto/16 :goto_0

    :sswitch_f
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->ov:Lcom/google/android/gms/internal/aQ;

    if-eqz v0, :cond_6

    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->ov:Lcom/google/android/gms/internal/aQ;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/aY;->xP(Lcom/google/android/gms/internal/aC;)V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/aQ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aQ;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/h;->ov:Lcom/google/android/gms/internal/aQ;

    goto :goto_5

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xW()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/h;->oF:J

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xO()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/h;->oB:[B

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/internal/h;->ot:I

    goto/16 :goto_0

    :sswitch_13
    const/16 v0, 0xa0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aH;->vj(Lcom/google/android/gms/internal/aY;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oJ:[I

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oJ:[I

    array-length v0, v0

    :goto_6
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-nez v0, :cond_8

    :goto_7
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/h;->oJ:[I

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_6

    :cond_8
    iget-object v3, p0, Lcom/google/android/gms/internal/h;->oJ:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    :cond_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xF()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :sswitch_14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->yb()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/aY;->ye(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xK()I

    move-result v2

    move v0, v1

    :goto_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xJ()I

    move-result v4

    if-gtz v4, :cond_a

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/aY;->xY(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oJ:[I

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/internal/h;->oJ:[I

    array-length v2, v2

    :goto_9
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-nez v2, :cond_c

    :goto_a
    array-length v4, v0

    if-lt v2, v4, :cond_d

    iput-object v0, p0, Lcom/google/android/gms/internal/h;->oJ:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/aY;->xS(I)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    move v2, v1

    goto :goto_9

    :cond_c
    iget-object v4, p0, Lcom/google/android/gms/internal/h;->oJ:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a

    :cond_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xW()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/h;->oA:J

    goto/16 :goto_0

    :sswitch_16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xW()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/h;->os:J

    goto/16 :goto_0

    :sswitch_17
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oO:Lcom/google/android/gms/internal/au;

    if-eqz v0, :cond_e

    :goto_b
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->oO:Lcom/google/android/gms/internal/au;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/aY;->xP(Lcom/google/android/gms/internal/aC;)V

    goto/16 :goto_0

    :cond_e
    new-instance v0, Lcom/google/android/gms/internal/au;

    invoke-direct {v0}, Lcom/google/android/gms/internal/au;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/h;->oO:Lcom/google/android/gms/internal/au;

    goto :goto_b

    :sswitch_18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xZ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/h;->ox:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x32 -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
        0x4a -> :sswitch_8
        0x50 -> :sswitch_9
        0x58 -> :sswitch_a
        0x60 -> :sswitch_b
        0x6a -> :sswitch_c
        0x72 -> :sswitch_d
        0x78 -> :sswitch_e
        0x82 -> :sswitch_f
        0x88 -> :sswitch_10
        0x92 -> :sswitch_11
        0x98 -> :sswitch_12
        0xa0 -> :sswitch_13
        0xa2 -> :sswitch_14
        0xa8 -> :sswitch_15
        0xb0 -> :sswitch_16
        0xba -> :sswitch_17
        0xc2 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic si()Lcom/google/android/gms/internal/aC;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/h;

    return-object v0
.end method
