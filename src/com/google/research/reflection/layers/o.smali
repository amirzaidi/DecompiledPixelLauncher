.class public Lcom/google/research/reflection/layers/o;
.super Lcom/google/research/reflection/layers/v;
.source "SourceFile"


# instance fields
.field private OA:Lcom/google/research/reflection/layers/b;

.field private OB:F

.field private OC:I

.field private OD:Lcom/google/research/reflection/layers/b;

.field private OE:I

.field private Ou:Lcom/google/research/reflection/layers/b;

.field private Ov:Lcom/google/research/reflection/layers/b;

.field Ow:I

.field private Ox:Z

.field private Oy:Lcom/google/research/reflection/layers/b;

.field private Oz:Lcom/google/research/reflection/layers/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/research/reflection/layers/v;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(ZIIIIIIIZZF)V
    .locals 7

    .prologue
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p4

    move v5, p5

    move v6, p6

    .line 50
    invoke-direct/range {v1 .. v6}, Lcom/google/research/reflection/layers/v;-><init>(ZIIII)V

    .line 51
    iput p7, p0, Lcom/google/research/reflection/layers/o;->OE:I

    .line 52
    move/from16 v0, p11

    iput v0, p0, Lcom/google/research/reflection/layers/o;->OB:F

    .line 53
    new-instance v1, Lcom/google/research/reflection/layers/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p6}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    iput-object v1, p0, Lcom/google/research/reflection/layers/o;->Oz:Lcom/google/research/reflection/layers/b;

    .line 54
    iput p3, p0, Lcom/google/research/reflection/layers/o;->Ow:I

    .line 55
    new-instance v1, Lcom/google/research/reflection/layers/b;

    invoke-direct {v1, p5, p6}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    iput-object v1, p0, Lcom/google/research/reflection/layers/o;->Ov:Lcom/google/research/reflection/layers/b;

    .line 56
    new-instance v1, Lcom/google/research/reflection/layers/b;

    invoke-direct {v1, p6, p6}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    iput-object v1, p0, Lcom/google/research/reflection/layers/o;->OD:Lcom/google/research/reflection/layers/b;

    .line 57
    new-instance v1, Lcom/google/research/reflection/layers/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p6}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    iput-object v1, p0, Lcom/google/research/reflection/layers/o;->OA:Lcom/google/research/reflection/layers/b;

    .line 58
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/google/research/reflection/layers/o;->Ox:Z

    .line 59
    if-ltz p7, :cond_0

    .line 64
    :goto_0
    iput p8, p0, Lcom/google/research/reflection/layers/o;->OC:I

    .line 65
    new-instance v1, Lcom/google/research/reflection/layers/b;

    invoke-direct {v1, p6, p6}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    iput-object v1, p0, Lcom/google/research/reflection/layers/o;->Oy:Lcom/google/research/reflection/layers/b;

    .line 66
    iget-object v1, p0, Lcom/google/research/reflection/layers/o;->Oy:Lcom/google/research/reflection/layers/b;

    move/from16 v0, p10

    invoke-static {v1, v0}, Lcom/google/research/reflection/layers/k;->Uo(Lcom/google/research/reflection/layers/b;Z)V

    .line 67
    return-void

    .line 60
    :cond_0
    new-instance v1, Lcom/google/research/reflection/layers/b;

    invoke-direct {v1, p5, p6}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    iput-object v1, p0, Lcom/google/research/reflection/layers/o;->Ou:Lcom/google/research/reflection/layers/b;

    .line 61
    iget-object v1, p0, Lcom/google/research/reflection/layers/o;->Ou:Lcom/google/research/reflection/layers/b;

    move/from16 v0, p10

    invoke-static {v1, v0}, Lcom/google/research/reflection/layers/k;->Uo(Lcom/google/research/reflection/layers/b;Z)V

    .line 62
    iget-object v1, p0, Lcom/google/research/reflection/layers/o;->Oz:Lcom/google/research/reflection/layers/b;

    iget-object v1, v1, Lcom/google/research/reflection/layers/b;->Nl:[D

    invoke-static {v1}, Lcom/google/research/reflection/layers/k;->Up([D)V

    goto :goto_0
.end method

.method static synthetic UF(Lcom/google/research/reflection/layers/o;)Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/google/research/reflection/layers/o;->Ox:Z

    return v0
.end method

.method private static UG(ILcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 305
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 306
    :cond_0
    invoke-static {}, Lcom/google/research/reflection/layers/e;->getInstance()Lcom/google/research/reflection/layers/e;

    move-result-object v0

    iget-object v1, p1, Lcom/google/research/reflection/layers/b;->Nl:[D

    array-length v1, v1

    new-instance v2, Lcom/google/research/reflection/layers/g;

    invoke-direct {v2, p0, p2, p1}, Lcom/google/research/reflection/layers/g;-><init>(ILcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/research/reflection/layers/e;->Uc(ILcom/google/research/reflection/layers/c;)V

    .line 331
    :goto_0
    return-void

    .line 305
    :cond_1
    if-eqz p0, :cond_0

    .line 320
    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    .line 329
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Unsupported activation function: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_2
    invoke-static {}, Lcom/google/research/reflection/layers/e;->getInstance()Lcom/google/research/reflection/layers/e;

    move-result-object v0

    invoke-virtual {p1, v1}, Lcom/google/research/reflection/layers/b;->TW(Z)I

    move-result v1

    new-instance v2, Lcom/google/research/reflection/layers/r;

    invoke-direct {v2, p1, p2}, Lcom/google/research/reflection/layers/r;-><init>(Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/research/reflection/layers/e;->Uc(ILcom/google/research/reflection/layers/c;)V

    goto :goto_0
.end method

.method static synthetic UH(Lcom/google/research/reflection/layers/o;)Lcom/google/research/reflection/layers/b;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->OA:Lcom/google/research/reflection/layers/b;

    return-object v0
.end method

.method static synthetic UI(Lcom/google/research/reflection/layers/o;)Lcom/google/research/reflection/layers/b;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->OD:Lcom/google/research/reflection/layers/b;

    return-object v0
.end method

.method static synthetic UJ(Lcom/google/research/reflection/layers/o;)Lcom/google/research/reflection/layers/b;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->Ou:Lcom/google/research/reflection/layers/b;

    return-object v0
.end method

.method static synthetic UK(Lcom/google/research/reflection/layers/o;)Lcom/google/research/reflection/layers/b;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->Oy:Lcom/google/research/reflection/layers/b;

    return-object v0
.end method

.method static synthetic UL(Lcom/google/research/reflection/layers/o;)Lcom/google/research/reflection/layers/b;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->Oz:Lcom/google/research/reflection/layers/b;

    return-object v0
.end method

.method static synthetic UM(Lcom/google/research/reflection/layers/o;)Lcom/google/research/reflection/layers/b;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->Ov:Lcom/google/research/reflection/layers/b;

    return-object v0
.end method


# virtual methods
.method public UA()I
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lcom/google/research/reflection/layers/o;->OE:I

    return v0
.end method

.method public UB(ZLcom/google/research/reflection/layers/a;[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;)Lcom/google/research/reflection/layers/b;
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 236
    if-nez p3, :cond_1

    .line 240
    iput-boolean v7, p0, Lcom/google/research/reflection/layers/o;->Pd:Z

    .line 241
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->Pb:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0, p4}, Lcom/google/research/reflection/common/a;->add(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-virtual {p4, v7}, Lcom/google/research/reflection/layers/b;->TU(Z)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/research/reflection/layers/o;->UT()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Inconsistent input matrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_1
    iput-boolean v2, p0, Lcom/google/research/reflection/layers/o;->Pd:Z

    .line 238
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->Pc:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0, p3}, Lcom/google/research/reflection/common/a;->add(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :goto_0
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->Pg:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/common/a;->SX()I

    move-result v0

    if-gt v0, v2, :cond_4

    .line 254
    :goto_1
    new-instance v6, Lcom/google/research/reflection/layers/b;

    iget v0, p0, Lcom/google/research/reflection/layers/o;->Pa:I

    iget v1, p0, Lcom/google/research/reflection/layers/o;->Pf:I

    invoke-direct {v6, v0, v1}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    .line 255
    invoke-static {}, Lcom/google/research/reflection/layers/e;->getInstance()Lcom/google/research/reflection/layers/e;

    move-result-object v8

    iget v0, p0, Lcom/google/research/reflection/layers/o;->Pa:I

    iget v1, p0, Lcom/google/research/reflection/layers/o;->Pf:I

    mul-int v9, v0, v1

    new-instance v0, Lcom/google/research/reflection/layers/x;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/research/reflection/layers/x;-><init>(Lcom/google/research/reflection/layers/o;Lcom/google/research/reflection/layers/a;[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V

    invoke-virtual {v8, v9, v0}, Lcom/google/research/reflection/layers/e;->Uc(ILcom/google/research/reflection/layers/c;)V

    .line 284
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->Pg:Lcom/google/research/reflection/common/a;

    new-instance v1, Lcom/google/research/reflection/layers/b;

    iget v2, p0, Lcom/google/research/reflection/layers/o;->Pa:I

    iget v3, p0, Lcom/google/research/reflection/layers/o;->Pf:I

    invoke-direct {v1, v2, v3}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/common/a;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/layers/b;

    .line 285
    iget v1, p0, Lcom/google/research/reflection/layers/o;->Ow:I

    invoke-static {v1, v6, v0}, Lcom/google/research/reflection/layers/o;->UG(ILcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V

    .line 286
    iget v1, p0, Lcom/google/research/reflection/layers/o;->OB:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 287
    if-nez p1, :cond_5

    .line 294
    :goto_2
    iget-object v1, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    array-length v1, v1

    if-lt v7, v1, :cond_7

    .line 299
    :cond_2
    return-object v0

    .line 243
    :cond_3
    invoke-virtual {p4, v7}, Lcom/google/research/reflection/layers/b;->TW(Z)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/research/reflection/layers/o;->UR()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 250
    :cond_4
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->Pg:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/common/a;->SU()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/layers/b;

    move-object v5, v0

    goto :goto_1

    :cond_5
    move v1, v7

    .line 288
    :goto_3
    iget-object v2, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 289
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget v4, p0, Lcom/google/research/reflection/layers/o;->OB:F

    float-to-double v4, v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_6

    .line 290
    iget-object v2, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v1

    .line 288
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 295
    :cond_7
    iget-object v1, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    aget-wide v2, v1, v7

    iget v4, p0, Lcom/google/research/reflection/layers/o;->OB:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    float-to-double v4, v4

    mul-double/2addr v2, v4

    aput-wide v2, v1, v7

    .line 294
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method UC()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/research/reflection/layers/v;->UC()V

    .line 72
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->Ov:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    invoke-static {v0}, Lcom/google/research/reflection/layers/k;->Up([D)V

    .line 73
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->OD:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    invoke-static {v0}, Lcom/google/research/reflection/layers/k;->Up([D)V

    .line 74
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->OA:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    invoke-static {v0}, Lcom/google/research/reflection/layers/k;->Up([D)V

    .line 75
    return-void
.end method

.method public UD(Lcom/google/research/reflection/layers/a;ILcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 125
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->Ph:Lcom/google/research/reflection/layers/b;

    invoke-static {p3, p4, v0, v1}, Lcom/google/research/reflection/layers/b;->TT(Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Z)Lcom/google/research/reflection/layers/b;

    .line 126
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->Pg:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0, p2}, Lcom/google/research/reflection/common/a;->ST(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/layers/b;

    .line 127
    iget v3, p0, Lcom/google/research/reflection/layers/o;->Ow:I

    iget-object v4, p0, Lcom/google/research/reflection/layers/o;->Ph:Lcom/google/research/reflection/layers/b;

    invoke-virtual {p0, v3, v4, v0, p5}, Lcom/google/research/reflection/layers/o;->Ux(ILcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V

    .line 129
    iget-object v3, p0, Lcom/google/research/reflection/layers/o;->Ph:Lcom/google/research/reflection/layers/b;

    invoke-virtual {p0, p1}, Lcom/google/research/reflection/layers/o;->UE(Lcom/google/research/reflection/layers/a;)Lcom/google/research/reflection/layers/b;

    move-result-object v4

    iget-boolean v0, p0, Lcom/google/research/reflection/layers/o;->Ox:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v5, p0, Lcom/google/research/reflection/layers/o;->OY:Lcom/google/research/reflection/layers/b;

    invoke-static {v3, v4, v0, v5, v1}, Lcom/google/research/reflection/layers/b;->TO(Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;ZLcom/google/research/reflection/layers/b;Z)Lcom/google/research/reflection/layers/b;

    .line 130
    iget-boolean v0, p0, Lcom/google/research/reflection/layers/o;->OW:Z

    if-nez v0, :cond_1

    .line 134
    :goto_1
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->Pb:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0, p2}, Lcom/google/research/reflection/common/a;->ST(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/layers/b;

    .line 135
    iget-object v1, p0, Lcom/google/research/reflection/layers/o;->Pc:Lcom/google/research/reflection/common/a;

    invoke-virtual {v1, p2}, Lcom/google/research/reflection/common/a;->ST(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/ArrayList;

    .line 136
    iget-object v2, p0, Lcom/google/research/reflection/layers/o;->Pg:Lcom/google/research/reflection/common/a;

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {v2, v3}, Lcom/google/research/reflection/common/a;->ST(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/reflection/layers/b;

    .line 137
    invoke-static {}, Lcom/google/research/reflection/layers/e;->getInstance()Lcom/google/research/reflection/layers/e;

    move-result-object v3

    iget v4, p0, Lcom/google/research/reflection/layers/o;->Pa:I

    iget v5, p0, Lcom/google/research/reflection/layers/o;->Pf:I

    mul-int/2addr v4, v5

    new-instance v5, Lcom/google/research/reflection/layers/u;

    invoke-direct {v5, p0, v1, v0, v2}, Lcom/google/research/reflection/layers/u;-><init>(Lcom/google/research/reflection/layers/o;[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V

    invoke-virtual {v3, v4, v5}, Lcom/google/research/reflection/layers/e;->Uc(ILcom/google/research/reflection/layers/c;)V

    .line 166
    return-void

    :cond_0
    move v0, v2

    .line 129
    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->Ph:Lcom/google/research/reflection/layers/b;

    iget-object v3, p0, Lcom/google/research/reflection/layers/o;->Oy:Lcom/google/research/reflection/layers/b;

    iget-object v4, p0, Lcom/google/research/reflection/layers/o;->OZ:Lcom/google/research/reflection/layers/b;

    invoke-static {v0, v3, v2, v4, v1}, Lcom/google/research/reflection/layers/b;->TO(Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;ZLcom/google/research/reflection/layers/b;Z)Lcom/google/research/reflection/layers/b;

    goto :goto_1
.end method

.method public UE(Lcom/google/research/reflection/layers/a;)Lcom/google/research/reflection/layers/b;
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lcom/google/research/reflection/layers/o;->OE:I

    if-gez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->Ou:Lcom/google/research/reflection/layers/b;

    return-object v0

    .line 79
    :cond_0
    invoke-virtual {p1}, Lcom/google/research/reflection/layers/a;->TF()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/research/reflection/layers/o;->OE:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/layers/o;

    iget-object v0, v0, Lcom/google/research/reflection/layers/o;->Ou:Lcom/google/research/reflection/layers/b;

    return-object v0
.end method

.method public UN()Lcom/google/research/reflection/layers/b;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->Oz:Lcom/google/research/reflection/layers/b;

    return-object v0
.end method

.method public Uu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    const-string/jumbo v0, "LinearLayer"

    return-object v0
.end method

.method public Uv(Ljava/io/DataOutputStream;)V
    .locals 1

    .prologue
    .line 335
    invoke-super {p0, p1}, Lcom/google/research/reflection/layers/v;->Uv(Ljava/io/DataOutputStream;)V

    .line 336
    iget v0, p0, Lcom/google/research/reflection/layers/o;->Ow:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 337
    iget-boolean v0, p0, Lcom/google/research/reflection/layers/o;->Ox:Z

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 338
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->Oy:Lcom/google/research/reflection/layers/b;

    invoke-virtual {v0, p1}, Lcom/google/research/reflection/layers/b;->TY(Ljava/io/DataOutputStream;)V

    .line 339
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->Oz:Lcom/google/research/reflection/layers/b;

    invoke-virtual {v0, p1}, Lcom/google/research/reflection/layers/b;->TY(Ljava/io/DataOutputStream;)V

    .line 340
    iget v0, p0, Lcom/google/research/reflection/layers/o;->OE:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 341
    iget v0, p0, Lcom/google/research/reflection/layers/o;->OE:I

    if-ltz v0, :cond_0

    .line 344
    :goto_0
    iget v0, p0, Lcom/google/research/reflection/layers/o;->OC:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 345
    invoke-virtual {p0, p1}, Lcom/google/research/reflection/layers/o;->UQ(Ljava/io/DataOutputStream;)V

    .line 346
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->Ou:Lcom/google/research/reflection/layers/b;

    invoke-virtual {v0, p1}, Lcom/google/research/reflection/layers/b;->TY(Ljava/io/DataOutputStream;)V

    goto :goto_0
.end method

.method public Uw(Ljava/io/DataInputStream;)V
    .locals 3

    .prologue
    .line 355
    invoke-super {p0, p1}, Lcom/google/research/reflection/layers/v;->Uw(Ljava/io/DataInputStream;)V

    .line 356
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/research/reflection/layers/o;->Ow:I

    .line 357
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/research/reflection/layers/o;->Ox:Z

    .line 358
    new-instance v0, Lcom/google/research/reflection/layers/b;

    invoke-direct {v0}, Lcom/google/research/reflection/layers/b;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/layers/o;->Oy:Lcom/google/research/reflection/layers/b;

    .line 359
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->Oy:Lcom/google/research/reflection/layers/b;

    invoke-virtual {v0, p1}, Lcom/google/research/reflection/layers/b;->TZ(Ljava/io/DataInputStream;)V

    .line 360
    new-instance v0, Lcom/google/research/reflection/layers/b;

    invoke-direct {v0}, Lcom/google/research/reflection/layers/b;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/layers/o;->Oz:Lcom/google/research/reflection/layers/b;

    .line 361
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->Oz:Lcom/google/research/reflection/layers/b;

    invoke-virtual {v0, p1}, Lcom/google/research/reflection/layers/b;->TZ(Ljava/io/DataInputStream;)V

    .line 362
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/research/reflection/layers/o;->OE:I

    .line 363
    iget v0, p0, Lcom/google/research/reflection/layers/o;->OE:I

    if-ltz v0, :cond_0

    .line 367
    :goto_0
    new-instance v0, Lcom/google/research/reflection/layers/b;

    iget v1, p0, Lcom/google/research/reflection/layers/o;->Pe:I

    iget v2, p0, Lcom/google/research/reflection/layers/o;->Pf:I

    invoke-direct {v0, v1, v2}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    iput-object v0, p0, Lcom/google/research/reflection/layers/o;->Ov:Lcom/google/research/reflection/layers/b;

    .line 368
    new-instance v0, Lcom/google/research/reflection/layers/b;

    iget v1, p0, Lcom/google/research/reflection/layers/o;->Pf:I

    iget v2, p0, Lcom/google/research/reflection/layers/o;->Pf:I

    invoke-direct {v0, v1, v2}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    iput-object v0, p0, Lcom/google/research/reflection/layers/o;->OD:Lcom/google/research/reflection/layers/b;

    .line 369
    new-instance v0, Lcom/google/research/reflection/layers/b;

    iget v1, p0, Lcom/google/research/reflection/layers/o;->Pf:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    iput-object v0, p0, Lcom/google/research/reflection/layers/o;->OA:Lcom/google/research/reflection/layers/b;

    .line 370
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/research/reflection/layers/o;->OC:I

    .line 371
    invoke-virtual {p0, p1}, Lcom/google/research/reflection/layers/o;->UP(Ljava/io/DataInputStream;)V

    .line 372
    return-void

    .line 364
    :cond_0
    new-instance v0, Lcom/google/research/reflection/layers/b;

    invoke-direct {v0}, Lcom/google/research/reflection/layers/b;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/layers/o;->Ou:Lcom/google/research/reflection/layers/b;

    .line 365
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->Ou:Lcom/google/research/reflection/layers/b;

    invoke-virtual {v0, p1}, Lcom/google/research/reflection/layers/b;->TZ(Ljava/io/DataInputStream;)V

    goto :goto_0
.end method

.method Ux(ILcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V
    .locals 3

    .prologue
    .line 171
    invoke-static {}, Lcom/google/research/reflection/layers/e;->getInstance()Lcom/google/research/reflection/layers/e;

    move-result-object v0

    iget-object v1, p2, Lcom/google/research/reflection/layers/b;->Nl:[D

    array-length v1, v1

    new-instance v2, Lcom/google/research/reflection/layers/t;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/google/research/reflection/layers/t;-><init>(Lcom/google/research/reflection/layers/o;ILcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/research/reflection/layers/e;->Uc(ILcom/google/research/reflection/layers/c;)V

    .line 187
    return-void
.end method

.method public Uz(Lcom/google/research/reflection/layers/o;)V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/google/research/reflection/layers/v;->UW(Lcom/google/research/reflection/layers/v;)V

    .line 108
    iget-boolean v0, p0, Lcom/google/research/reflection/layers/o;->Ox:Z

    iput-boolean v0, p1, Lcom/google/research/reflection/layers/o;->Ox:Z

    .line 109
    iget v0, p0, Lcom/google/research/reflection/layers/o;->Ow:I

    iput v0, p1, Lcom/google/research/reflection/layers/o;->Ow:I

    .line 110
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->Ou:Lcom/google/research/reflection/layers/b;

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/b;->clone()Lcom/google/research/reflection/layers/b;

    move-result-object v0

    iput-object v0, p1, Lcom/google/research/reflection/layers/o;->Ou:Lcom/google/research/reflection/layers/b;

    .line 111
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->Ov:Lcom/google/research/reflection/layers/b;

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/b;->clone()Lcom/google/research/reflection/layers/b;

    move-result-object v0

    iput-object v0, p1, Lcom/google/research/reflection/layers/o;->Ov:Lcom/google/research/reflection/layers/b;

    .line 112
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->Oy:Lcom/google/research/reflection/layers/b;

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/b;->clone()Lcom/google/research/reflection/layers/b;

    move-result-object v0

    iput-object v0, p1, Lcom/google/research/reflection/layers/o;->Oy:Lcom/google/research/reflection/layers/b;

    .line 113
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->OD:Lcom/google/research/reflection/layers/b;

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/b;->clone()Lcom/google/research/reflection/layers/b;

    move-result-object v0

    iput-object v0, p1, Lcom/google/research/reflection/layers/o;->OD:Lcom/google/research/reflection/layers/b;

    .line 114
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->Oz:Lcom/google/research/reflection/layers/b;

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/b;->clone()Lcom/google/research/reflection/layers/b;

    move-result-object v0

    iput-object v0, p1, Lcom/google/research/reflection/layers/o;->Oz:Lcom/google/research/reflection/layers/b;

    .line 115
    iget-object v0, p0, Lcom/google/research/reflection/layers/o;->OA:Lcom/google/research/reflection/layers/b;

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/b;->clone()Lcom/google/research/reflection/layers/b;

    move-result-object v0

    iput-object v0, p1, Lcom/google/research/reflection/layers/o;->OA:Lcom/google/research/reflection/layers/b;

    .line 116
    iget v0, p0, Lcom/google/research/reflection/layers/o;->OE:I

    iput v0, p1, Lcom/google/research/reflection/layers/o;->OE:I

    .line 117
    iget v0, p0, Lcom/google/research/reflection/layers/o;->OC:I

    iput v0, p1, Lcom/google/research/reflection/layers/o;->OC:I

    .line 118
    return-void
.end method

.method public clone()Lcom/google/research/reflection/layers/o;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/google/research/reflection/layers/o;

    invoke-direct {v0}, Lcom/google/research/reflection/layers/o;-><init>()V

    .line 92
    invoke-super {p0, v0}, Lcom/google/research/reflection/layers/v;->UW(Lcom/google/research/reflection/layers/v;)V

    .line 93
    iget-boolean v1, p0, Lcom/google/research/reflection/layers/o;->Ox:Z

    iput-boolean v1, v0, Lcom/google/research/reflection/layers/o;->Ox:Z

    .line 94
    iget v1, p0, Lcom/google/research/reflection/layers/o;->Ow:I

    iput v1, v0, Lcom/google/research/reflection/layers/o;->Ow:I

    .line 95
    iget-object v1, p0, Lcom/google/research/reflection/layers/o;->Ou:Lcom/google/research/reflection/layers/b;

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/b;->clone()Lcom/google/research/reflection/layers/b;

    move-result-object v1

    iput-object v1, v0, Lcom/google/research/reflection/layers/o;->Ou:Lcom/google/research/reflection/layers/b;

    .line 96
    iget-object v1, p0, Lcom/google/research/reflection/layers/o;->Ov:Lcom/google/research/reflection/layers/b;

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/b;->clone()Lcom/google/research/reflection/layers/b;

    move-result-object v1

    iput-object v1, v0, Lcom/google/research/reflection/layers/o;->Ov:Lcom/google/research/reflection/layers/b;

    .line 97
    iget-object v1, p0, Lcom/google/research/reflection/layers/o;->Oy:Lcom/google/research/reflection/layers/b;

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/b;->clone()Lcom/google/research/reflection/layers/b;

    move-result-object v1

    iput-object v1, v0, Lcom/google/research/reflection/layers/o;->Oy:Lcom/google/research/reflection/layers/b;

    .line 98
    iget-object v1, p0, Lcom/google/research/reflection/layers/o;->OD:Lcom/google/research/reflection/layers/b;

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/b;->clone()Lcom/google/research/reflection/layers/b;

    move-result-object v1

    iput-object v1, v0, Lcom/google/research/reflection/layers/o;->OD:Lcom/google/research/reflection/layers/b;

    .line 99
    iget-object v1, p0, Lcom/google/research/reflection/layers/o;->Oz:Lcom/google/research/reflection/layers/b;

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/b;->clone()Lcom/google/research/reflection/layers/b;

    move-result-object v1

    iput-object v1, v0, Lcom/google/research/reflection/layers/o;->Oz:Lcom/google/research/reflection/layers/b;

    .line 100
    iget-object v1, p0, Lcom/google/research/reflection/layers/o;->OA:Lcom/google/research/reflection/layers/b;

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/b;->clone()Lcom/google/research/reflection/layers/b;

    move-result-object v1

    iput-object v1, v0, Lcom/google/research/reflection/layers/o;->OA:Lcom/google/research/reflection/layers/b;

    .line 101
    iget v1, p0, Lcom/google/research/reflection/layers/o;->OE:I

    iput v1, v0, Lcom/google/research/reflection/layers/o;->OE:I

    .line 102
    iget v1, p0, Lcom/google/research/reflection/layers/o;->OC:I

    iput v1, v0, Lcom/google/research/reflection/layers/o;->OC:I

    .line 103
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/research/reflection/layers/v;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/research/reflection/layers/o;->clone()Lcom/google/research/reflection/layers/o;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/research/reflection/layers/o;->clone()Lcom/google/research/reflection/layers/o;

    move-result-object v0

    return-object v0
.end method

.method public update()V
    .locals 3

    .prologue
    .line 191
    invoke-static {}, Lcom/google/research/reflection/layers/e;->getInstance()Lcom/google/research/reflection/layers/e;

    move-result-object v0

    iget v1, p0, Lcom/google/research/reflection/layers/o;->Pf:I

    new-instance v2, Lcom/google/research/reflection/layers/l;

    invoke-direct {v2, p0}, Lcom/google/research/reflection/layers/l;-><init>(Lcom/google/research/reflection/layers/o;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/research/reflection/layers/e;->Uc(ILcom/google/research/reflection/layers/c;)V

    .line 214
    return-void
.end method
