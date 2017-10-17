.class public Lcom/google/research/reflection/predictor/g;
.super Lcom/google/research/reflection/predictor/b;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/b/a;


# instance fields
.field protected MM:Lcom/google/research/reflection/b/b;

.field protected MN:Lcom/google/research/reflection/layers/a;

.field protected MO:Lcom/google/research/reflection/b/a;

.field protected MP:Lcom/google/research/reflection/layers/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/research/reflection/predictor/b;-><init>()V

    .line 49
    invoke-static {}, Lcom/google/research/reflection/predictor/g;->SQ()Lcom/google/research/reflection/b/c;

    move-result-object v0

    const/16 v1, 0x64

    invoke-direct {p0, v1, v0}, Lcom/google/research/reflection/predictor/g;->SP(ILcom/google/research/reflection/b/b;)V

    .line 50
    return-void
.end method

.method private SP(ILcom/google/research/reflection/b/b;)V
    .locals 12

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/research/reflection/layers/e;->Nu:Z

    .line 63
    new-instance v0, Lcom/google/research/reflection/layers/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/g;->MP:Lcom/google/research/reflection/layers/b;

    .line 65
    iput-object p2, p0, Lcom/google/research/reflection/predictor/g;->MM:Lcom/google/research/reflection/b/b;

    .line 66
    invoke-virtual {p2, p0}, Lcom/google/research/reflection/b/b;->Tq(Lcom/google/research/reflection/b/a;)V

    .line 68
    new-instance v0, Lcom/google/research/reflection/layers/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/research/reflection/layers/a;-><init>(I)V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/g;->MN:Lcom/google/research/reflection/layers/a;

    .line 69
    new-instance v0, Lcom/google/research/reflection/layers/o;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 70
    invoke-virtual {p2}, Lcom/google/research/reflection/b/b;->Ts()I

    move-result v5

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v11, 0x0

    move v6, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/research/reflection/layers/o;-><init>(ZIIIIIIIZZF)V

    .line 71
    iget-object v1, p0, Lcom/google/research/reflection/predictor/g;->MN:Lcom/google/research/reflection/layers/a;

    invoke-virtual {v1, v0}, Lcom/google/research/reflection/layers/a;->TK(Lcom/google/research/reflection/layers/v;)V

    .line 72
    new-instance v0, Lcom/google/research/reflection/layers/m;

    const/4 v9, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    move v5, p1

    move v6, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/research/reflection/layers/m;-><init>(IIIIIIIIZ)V

    .line 75
    iget-object v1, p0, Lcom/google/research/reflection/predictor/g;->MN:Lcom/google/research/reflection/layers/a;

    invoke-virtual {v1, v0}, Lcom/google/research/reflection/layers/a;->TK(Lcom/google/research/reflection/layers/v;)V

    .line 76
    return-void
.end method

.method public static SQ()Lcom/google/research/reflection/b/c;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/google/research/reflection/b/c;

    invoke-direct {v0}, Lcom/google/research/reflection/b/c;-><init>()V

    .line 98
    new-instance v1, Lcom/google/research/reflection/b/d;

    invoke-direct {v1}, Lcom/google/research/reflection/b/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/b/c;->Tz(Lcom/google/research/reflection/b/b;)V

    .line 99
    new-instance v1, Lcom/google/research/reflection/b/f;

    invoke-direct {v1}, Lcom/google/research/reflection/b/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/b/c;->Tz(Lcom/google/research/reflection/b/b;)V

    .line 100
    new-instance v1, Lcom/google/research/reflection/b/e;

    invoke-direct {v1}, Lcom/google/research/reflection/b/e;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/b/c;->Tz(Lcom/google/research/reflection/b/b;)V

    .line 101
    new-instance v1, Lcom/google/research/reflection/b/j;

    invoke-direct {v1}, Lcom/google/research/reflection/b/j;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/b/c;->Tz(Lcom/google/research/reflection/b/b;)V

    .line 102
    new-instance v1, Lcom/google/research/reflection/b/i;

    invoke-direct {v1}, Lcom/google/research/reflection/b/i;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/b/c;->Tz(Lcom/google/research/reflection/b/b;)V

    .line 103
    new-instance v1, Lcom/google/research/reflection/b/g;

    invoke-direct {v1}, Lcom/google/research/reflection/b/g;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/b/c;->Tz(Lcom/google/research/reflection/b/b;)V

    .line 104
    new-instance v1, Lcom/google/research/reflection/b/k;

    invoke-direct {v1}, Lcom/google/research/reflection/b/k;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/b/c;->Tz(Lcom/google/research/reflection/b/b;)V

    .line 105
    return-object v0
.end method


# virtual methods
.method public SR(Lcom/google/research/reflection/b/b;I)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/google/research/reflection/predictor/g;->MO:Lcom/google/research/reflection/b/a;

    if-nez v0, :cond_0

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/google/research/reflection/predictor/g;->MN:Lcom/google/research/reflection/layers/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/a;->TF()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/layers/o;

    .line 84
    iget-object v2, p0, Lcom/google/research/reflection/predictor/g;->MN:Lcom/google/research/reflection/layers/a;

    invoke-virtual {v0, v2}, Lcom/google/research/reflection/layers/o;->UE(Lcom/google/research/reflection/layers/a;)Lcom/google/research/reflection/layers/b;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v1}, Lcom/google/research/reflection/layers/b;->TW(Z)I

    move-result v6

    move v3, v1

    .line 86
    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/research/reflection/layers/b;->TU(Z)I

    move-result v2

    if-lt v3, v2, :cond_1

    .line 94
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/google/research/reflection/predictor/g;->MO:Lcom/google/research/reflection/b/a;

    invoke-interface {v0, p1, p2}, Lcom/google/research/reflection/b/a;->SR(Lcom/google/research/reflection/b/b;I)V

    goto :goto_0

    .line 87
    :cond_1
    const-wide/16 v4, 0x0

    move v2, v1

    .line 88
    :goto_2
    if-lt v2, v6, :cond_2

    .line 91
    int-to-double v8, v6

    div-double/2addr v4, v8

    move v2, p2

    .line 92
    invoke-virtual/range {v0 .. v5}, Lcom/google/research/reflection/layers/b;->TQ(ZIID)V

    .line 86
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/research/reflection/layers/b;->TP(ZII)D

    move-result-wide v8

    add-double/2addr v4, v8

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public So(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/research/reflection/predictor/g;->MM:Lcom/google/research/reflection/b/b;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, ".*"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/b/b;->Tu(Ljava/util/List;)V

    .line 209
    return-void
.end method

.method public Sq(Lcom/google/research/reflection/a/b;)Lcom/google/research/reflection/predictor/e;
    .locals 8

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/google/research/reflection/predictor/g;->Sx()Lcom/google/research/reflection/predictor/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/research/reflection/predictor/a;->Si(Lcom/google/research/reflection/a/b;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 155
    new-instance v6, Lcom/google/research/reflection/predictor/e;

    invoke-direct {v6}, Lcom/google/research/reflection/predictor/e;-><init>()V

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/google/research/reflection/predictor/g;->MM:Lcom/google/research/reflection/b/b;

    .line 158
    invoke-virtual {p0}, Lcom/google/research/reflection/predictor/g;->Sx()Lcom/google/research/reflection/predictor/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/research/reflection/predictor/a;->Sd()Lcom/google/research/reflection/predictor/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/research/reflection/predictor/d;->SE()Lcom/google/research/reflection/common/a;

    move-result-object v2

    .line 157
    invoke-virtual {v0, v2, p1}, Lcom/google/research/reflection/b/b;->Tt(Lcom/google/research/reflection/common/a;Lcom/google/research/reflection/a/b;)Lcom/google/research/reflection/layers/b;

    move-result-object v7

    .line 159
    iget-object v0, p0, Lcom/google/research/reflection/predictor/g;->MN:Lcom/google/research/reflection/layers/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/a;->TE()V

    .line 160
    iget-object v0, p0, Lcom/google/research/reflection/predictor/g;->MN:Lcom/google/research/reflection/layers/a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v7, v4}, Lcom/google/research/reflection/layers/a;->TJ(Z[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;Z)Lcom/google/research/reflection/layers/b;

    .line 161
    iget-object v0, p0, Lcom/google/research/reflection/predictor/g;->MP:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    invoke-static {v0}, Lcom/google/research/reflection/layers/k;->Up([D)V

    .line 162
    iget-object v0, p0, Lcom/google/research/reflection/predictor/g;->MP:Lcom/google/research/reflection/layers/b;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v0 .. v5}, Lcom/google/research/reflection/layers/b;->TQ(ZIID)V

    .line 163
    iget-object v0, p0, Lcom/google/research/reflection/predictor/g;->MN:Lcom/google/research/reflection/layers/a;

    iget-object v1, p0, Lcom/google/research/reflection/predictor/g;->MP:Lcom/google/research/reflection/layers/b;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/google/research/reflection/layers/a;->TH(Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;IZ)V

    .line 164
    iget-object v0, p0, Lcom/google/research/reflection/predictor/g;->MN:Lcom/google/research/reflection/layers/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/a;->update()V

    .line 165
    iget-object v0, v7, Lcom/google/research/reflection/layers/b;->Nl:[D

    invoke-virtual {v6, v0}, Lcom/google/research/reflection/predictor/e;->SL([D)V
    :try_end_0
    .catch Lcom/google/research/reflection/layers/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-object v6

    .line 166
    :catch_0
    move-exception v0

    .line 167
    invoke-virtual {v0}, Lcom/google/research/reflection/layers/InvalidValueException;->printStackTrace()V

    goto :goto_0
.end method

.method public Ss(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 12

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 214
    iget-object v0, p0, Lcom/google/research/reflection/predictor/g;->MN:Lcom/google/research/reflection/layers/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/a;->TN()Lcom/google/research/reflection/layers/v;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/research/reflection/layers/m;

    .line 215
    iget-object v0, p0, Lcom/google/research/reflection/predictor/g;->MN:Lcom/google/research/reflection/layers/a;

    invoke-virtual {v6, v0}, Lcom/google/research/reflection/layers/m;->UE(Lcom/google/research/reflection/layers/a;)Lcom/google/research/reflection/layers/b;

    move-result-object v0

    .line 216
    invoke-virtual {v0, v1}, Lcom/google/research/reflection/layers/b;->TU(Z)I

    move-result v7

    move v2, v1

    .line 217
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/research/reflection/layers/b;->TW(Z)I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 228
    invoke-virtual {v6}, Lcom/google/research/reflection/layers/m;->UN()Lcom/google/research/reflection/layers/b;

    move-result-object v0

    move-wide v2, v8

    .line 230
    :goto_1
    if-lt v1, v7, :cond_3

    .line 233
    int-to-double v4, v7

    div-double/2addr v2, v4

    .line 234
    invoke-virtual {p1, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 237
    :goto_2
    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput-wide v2, v0, v1

    .line 238
    return-void

    :cond_0
    move v3, v1

    move-wide v4, v8

    .line 219
    :goto_3
    if-lt v3, v7, :cond_1

    .line 222
    int-to-double v10, v7

    div-double v10, v4, v10

    .line 223
    invoke-virtual {p1, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 226
    :goto_4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-wide v4, v10

    invoke-virtual/range {v0 .. v5}, Lcom/google/research/reflection/layers/b;->TQ(ZIID)V

    .line 217
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/research/reflection/layers/b;->TP(ZII)D

    move-result-wide v10

    add-double/2addr v4, v10

    .line 219
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 224
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/research/reflection/layers/b;->TP(ZII)D

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/research/reflection/layers/b;->TQ(ZIID)V

    goto :goto_4

    .line 231
    :cond_3
    iget-object v4, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    aget-wide v4, v4, v1

    add-double/2addr v2, v4

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 235
    :cond_4
    iget-object v1, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-wide v6, v5, v6

    aput-wide v6, v1, v4

    goto :goto_2
.end method

.method public Su(Ljava/io/DataOutputStream;)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/research/reflection/predictor/g;->MM:Lcom/google/research/reflection/b/b;

    invoke-static {v0}, Lcom/google/research/reflection/b/b;->Tr(Lcom/google/research/reflection/b/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/google/research/reflection/predictor/g;->MM:Lcom/google/research/reflection/b/b;

    invoke-virtual {v0, p1}, Lcom/google/research/reflection/b/b;->Tw(Ljava/io/DataOutputStream;)V

    .line 181
    iget-object v0, p0, Lcom/google/research/reflection/predictor/g;->MN:Lcom/google/research/reflection/layers/a;

    invoke-virtual {v0, p1}, Lcom/google/research/reflection/layers/a;->TL(Ljava/io/DataOutputStream;)V

    .line 182
    return-void
.end method

.method public Sv([FLcom/google/research/reflection/a/b;)Lcom/google/research/reflection/predictor/e;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 132
    iget-object v0, p0, Lcom/google/research/reflection/predictor/g;->MM:Lcom/google/research/reflection/b/b;

    invoke-virtual {p0}, Lcom/google/research/reflection/predictor/g;->Sx()Lcom/google/research/reflection/predictor/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/research/reflection/predictor/a;->Sd()Lcom/google/research/reflection/predictor/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/research/reflection/predictor/d;->SE()Lcom/google/research/reflection/common/a;

    move-result-object v3

    invoke-virtual {v0, v3, p2}, Lcom/google/research/reflection/b/b;->Tt(Lcom/google/research/reflection/common/a;Lcom/google/research/reflection/a/b;)Lcom/google/research/reflection/layers/b;

    move-result-object v3

    .line 133
    invoke-virtual {p0}, Lcom/google/research/reflection/predictor/g;->Sx()Lcom/google/research/reflection/predictor/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/research/reflection/predictor/a;->Sn()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/google/research/reflection/predictor/g;->Sx()Lcom/google/research/reflection/predictor/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/research/reflection/predictor/a;->Sn()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gt v0, v4, :cond_2

    .line 146
    :cond_0
    :goto_0
    new-instance v0, Lcom/google/research/reflection/predictor/e;

    invoke-direct {v0}, Lcom/google/research/reflection/predictor/e;-><init>()V

    .line 147
    iget-object v1, v3, Lcom/google/research/reflection/layers/b;->Nl:[D

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/predictor/e;->SL([D)V

    .line 148
    invoke-virtual {v0, p1}, Lcom/google/research/reflection/predictor/e;->SM([F)V

    .line 149
    return-object v0

    .line 134
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, p1, v2

    goto :goto_0

    .line 138
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/research/reflection/predictor/g;->MN:Lcom/google/research/reflection/layers/a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v5, v3, v6}, Lcom/google/research/reflection/layers/a;->TJ(Z[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;Z)Lcom/google/research/reflection/layers/b;
    :try_end_0
    .catch Lcom/google/research/reflection/layers/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move v1, v2

    .line 142
    :goto_2
    array-length v4, p1

    if-ge v1, v4, :cond_0

    .line 143
    invoke-virtual {v0, v2, v2, v1}, Lcom/google/research/reflection/layers/b;->TP(ZII)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, p1, v1

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Lcom/google/research/reflection/layers/InvalidValueException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method

.method public Sw(Ljava/io/DataInputStream;)V
    .locals 5

    .prologue
    .line 186
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v0}, Lcom/google/research/reflection/b/b;->Tp(Ljava/lang/String;)Lcom/google/research/reflection/b/b;

    move-result-object v1

    .line 188
    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {v1, p1}, Lcom/google/research/reflection/b/b;->Tv(Ljava/io/DataInputStream;)V

    .line 192
    invoke-virtual {v1, p0}, Lcom/google/research/reflection/b/b;->Tq(Lcom/google/research/reflection/b/a;)V

    .line 194
    new-instance v0, Lcom/google/research/reflection/layers/a;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/google/research/reflection/layers/a;-><init>(I)V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/g;->MN:Lcom/google/research/reflection/layers/a;

    .line 195
    iget-object v0, p0, Lcom/google/research/reflection/predictor/g;->MN:Lcom/google/research/reflection/layers/a;

    invoke-virtual {v0, p1}, Lcom/google/research/reflection/layers/a;->TM(Ljava/io/DataInputStream;)V

    .line 196
    iget-object v0, p0, Lcom/google/research/reflection/predictor/g;->MN:Lcom/google/research/reflection/layers/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/a;->TI()I

    move-result v0

    invoke-virtual {v1}, Lcom/google/research/reflection/b/b;->Ts()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 200
    iget-object v0, p0, Lcom/google/research/reflection/predictor/g;->MN:Lcom/google/research/reflection/layers/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/a;->TN()Lcom/google/research/reflection/layers/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/v;->UX()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/research/reflection/predictor/g;->Sx()Lcom/google/research/reflection/predictor/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/research/reflection/predictor/a;->Sk()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 204
    return-void

    .line 189
    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, "Cannot find extractor with "

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 197
    :cond_2
    new-instance v0, Ljava/io/IOException;

    iget-object v2, p0, Lcom/google/research/reflection/predictor/g;->MN:Lcom/google/research/reflection/layers/a;

    .line 198
    invoke-virtual {v2}, Lcom/google/research/reflection/layers/a;->TI()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/research/reflection/b/b;->Ts()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x4c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Model to be loaded has an inconsistent input size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_3
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lcom/google/research/reflection/predictor/g;->MN:Lcom/google/research/reflection/layers/a;

    .line 202
    invoke-virtual {v1}, Lcom/google/research/reflection/layers/a;->TN()Lcom/google/research/reflection/layers/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/v;->UX()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/research/reflection/predictor/g;->Sx()Lcom/google/research/reflection/predictor/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/research/reflection/predictor/a;->Sk()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x39

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Inconsistent model output size..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "!="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clone()Lcom/google/research/reflection/predictor/g;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lcom/google/research/reflection/predictor/g;

    invoke-direct {v0}, Lcom/google/research/reflection/predictor/g;-><init>()V

    .line 123
    invoke-virtual {p0}, Lcom/google/research/reflection/predictor/g;->Sx()Lcom/google/research/reflection/predictor/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/predictor/g;->Sr(Lcom/google/research/reflection/predictor/a;)V

    .line 124
    iget-object v1, p0, Lcom/google/research/reflection/predictor/g;->MN:Lcom/google/research/reflection/layers/a;

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/a;->clone()Lcom/google/research/reflection/layers/a;

    move-result-object v1

    iput-object v1, v0, Lcom/google/research/reflection/predictor/g;->MN:Lcom/google/research/reflection/layers/a;

    .line 125
    iget-object v1, p0, Lcom/google/research/reflection/predictor/g;->MP:Lcom/google/research/reflection/layers/b;

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/b;->clone()Lcom/google/research/reflection/layers/b;

    move-result-object v1

    iput-object v1, v0, Lcom/google/research/reflection/predictor/g;->MP:Lcom/google/research/reflection/layers/b;

    .line 126
    iget-object v1, p0, Lcom/google/research/reflection/predictor/g;->MM:Lcom/google/research/reflection/b/b;

    invoke-virtual {v1}, Lcom/google/research/reflection/b/b;->clone()Lcom/google/research/reflection/b/b;

    move-result-object v1

    iput-object v1, v0, Lcom/google/research/reflection/predictor/g;->MM:Lcom/google/research/reflection/b/b;

    .line 127
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/research/reflection/predictor/g;->clone()Lcom/google/research/reflection/predictor/g;

    move-result-object v0

    return-object v0
.end method
