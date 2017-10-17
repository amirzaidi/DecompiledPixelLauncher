.class Landroid/support/v7/widget/ay;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final Sz:Landroid/support/v7/widget/Y;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/Y;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/support/v7/widget/ay;->Sz:Landroid/support/v7/widget/Y;

    .line 34
    return-void
.end method

.method private abN(Ljava/util/List;ILandroid/support/v7/widget/aK;ILandroid/support/v7/widget/aK;)V
    .locals 3

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 164
    iget v1, p3, Landroid/support/v7/widget/aK;->SR:I

    iget v2, p5, Landroid/support/v7/widget/aK;->SQ:I

    if-lt v1, v2, :cond_0

    .line 167
    :goto_0
    iget v1, p3, Landroid/support/v7/widget/aK;->SQ:I

    iget v2, p5, Landroid/support/v7/widget/aK;->SQ:I

    if-lt v1, v2, :cond_1

    .line 170
    :goto_1
    iget v1, p5, Landroid/support/v7/widget/aK;->SQ:I

    iget v2, p3, Landroid/support/v7/widget/aK;->SQ:I

    if-le v1, v2, :cond_2

    .line 173
    :goto_2
    iget v1, p5, Landroid/support/v7/widget/aK;->SQ:I

    iget v2, p3, Landroid/support/v7/widget/aK;->SR:I

    if-le v1, v2, :cond_3

    .line 176
    :goto_3
    iget v1, p5, Landroid/support/v7/widget/aK;->SQ:I

    add-int/2addr v0, v1

    iput v0, p5, Landroid/support/v7/widget/aK;->SQ:I

    .line 177
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-void

    .line 165
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 168
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    :cond_2
    iget v1, p3, Landroid/support/v7/widget/aK;->SQ:I

    iget v2, p5, Landroid/support/v7/widget/aK;->SR:I

    add-int/2addr v1, v2

    iput v1, p3, Landroid/support/v7/widget/aK;->SQ:I

    goto :goto_2

    .line 174
    :cond_3
    iget v1, p3, Landroid/support/v7/widget/aK;->SR:I

    iget v2, p5, Landroid/support/v7/widget/aK;->SR:I

    add-int/2addr v1, v2

    iput v1, p3, Landroid/support/v7/widget/aK;->SR:I

    goto :goto_3
.end method

.method private abO(Ljava/util/List;II)V
    .locals 6

    .prologue
    .line 46
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/aK;

    .line 47
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/aK;

    .line 48
    iget v0, v5, Landroid/support/v7/widget/aK;->SO:I

    packed-switch v0, :pswitch_data_0

    .line 59
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    .line 50
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/ay;->abM(Ljava/util/List;ILandroid/support/v7/widget/aK;ILandroid/support/v7/widget/aK;)V

    goto :goto_0

    :pswitch_2
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    .line 53
    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/ay;->abN(Ljava/util/List;ILandroid/support/v7/widget/aK;ILandroid/support/v7/widget/aK;)V

    goto :goto_0

    :pswitch_3
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    .line 56
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/ay;->abP(Ljava/util/List;ILandroid/support/v7/widget/aK;ILandroid/support/v7/widget/aK;)V

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private abQ(Ljava/util/List;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 220
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-gez v2, :cond_0

    .line 230
    const/4 v0, -0x1

    return v0

    .line 221
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aK;

    .line 222
    iget v0, v0, Landroid/support/v7/widget/aK;->SO:I

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    .line 227
    const/4 v0, 0x1

    .line 220
    :goto_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 223
    :cond_1
    if-nez v1, :cond_2

    move v0, v1

    goto :goto_1

    .line 224
    :cond_2
    return v2
.end method


# virtual methods
.method abM(Ljava/util/List;ILandroid/support/v7/widget/aK;ILandroid/support/v7/widget/aK;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 68
    iget v2, p3, Landroid/support/v7/widget/aK;->SQ:I

    iget v4, p3, Landroid/support/v7/widget/aK;->SR:I

    if-lt v2, v4, :cond_3

    .line 76
    iget v2, p5, Landroid/support/v7/widget/aK;->SQ:I

    iget v4, p3, Landroid/support/v7/widget/aK;->SR:I

    add-int/lit8 v4, v4, 0x1

    if-eq v2, v4, :cond_6

    :cond_0
    move v2, v0

    move v0, v1

    .line 83
    :goto_0
    iget v4, p3, Landroid/support/v7/widget/aK;->SR:I

    iget v5, p5, Landroid/support/v7/widget/aK;->SQ:I

    if-lt v4, v5, :cond_7

    .line 85
    iget v4, p3, Landroid/support/v7/widget/aK;->SR:I

    iget v5, p5, Landroid/support/v7/widget/aK;->SQ:I

    iget v6, p5, Landroid/support/v7/widget/aK;->SR:I

    add-int/2addr v5, v6

    if-lt v4, v5, :cond_8

    .line 99
    :goto_1
    iget v1, p3, Landroid/support/v7/widget/aK;->SQ:I

    iget v4, p5, Landroid/support/v7/widget/aK;->SQ:I

    if-le v1, v4, :cond_a

    .line 101
    iget v1, p3, Landroid/support/v7/widget/aK;->SQ:I

    iget v4, p5, Landroid/support/v7/widget/aK;->SQ:I

    iget v5, p5, Landroid/support/v7/widget/aK;->SR:I

    add-int/2addr v4, v5

    if-lt v1, v4, :cond_b

    move-object v1, v3

    .line 109
    :goto_2
    if-nez v2, :cond_c

    .line 117
    if-nez v0, :cond_d

    .line 133
    if-nez v1, :cond_12

    .line 141
    :cond_1
    :goto_3
    iget v0, p3, Landroid/support/v7/widget/aK;->SQ:I

    iget v2, p5, Landroid/support/v7/widget/aK;->SQ:I

    if-ge v0, v2, :cond_14

    .line 144
    :goto_4
    iget v0, p3, Landroid/support/v7/widget/aK;->SR:I

    iget v2, p5, Landroid/support/v7/widget/aK;->SQ:I

    if-ge v0, v2, :cond_15

    .line 149
    :cond_2
    :goto_5
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget v0, p3, Landroid/support/v7/widget/aK;->SQ:I

    iget v2, p3, Landroid/support/v7/widget/aK;->SR:I

    if-ne v0, v2, :cond_16

    .line 153
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 155
    :goto_6
    if-nez v1, :cond_17

    .line 158
    :goto_7
    return-void

    .line 70
    :cond_3
    iget v2, p5, Landroid/support/v7/widget/aK;->SQ:I

    iget v4, p3, Landroid/support/v7/widget/aK;->SQ:I

    if-eq v2, v4, :cond_5

    :cond_4
    move v2, v0

    goto :goto_0

    :cond_5
    iget v2, p5, Landroid/support/v7/widget/aK;->SR:I

    iget v4, p3, Landroid/support/v7/widget/aK;->SR:I

    iget v5, p3, Landroid/support/v7/widget/aK;->SQ:I

    sub-int/2addr v4, v5

    if-ne v2, v4, :cond_4

    move v2, v1

    .line 72
    goto :goto_0

    .line 76
    :cond_6
    iget v2, p5, Landroid/support/v7/widget/aK;->SR:I

    iget v4, p3, Landroid/support/v7/widget/aK;->SQ:I

    iget v5, p3, Landroid/support/v7/widget/aK;->SR:I

    sub-int/2addr v4, v5

    if-ne v2, v4, :cond_0

    move v0, v1

    move v2, v1

    .line 78
    goto :goto_0

    .line 84
    :cond_7
    iget v1, p5, Landroid/support/v7/widget/aK;->SQ:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p5, Landroid/support/v7/widget/aK;->SQ:I

    goto :goto_1

    .line 87
    :cond_8
    iget v0, p5, Landroid/support/v7/widget/aK;->SR:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p5, Landroid/support/v7/widget/aK;->SR:I

    .line 88
    iput v7, p3, Landroid/support/v7/widget/aK;->SO:I

    .line 89
    iput v1, p3, Landroid/support/v7/widget/aK;->SR:I

    .line 90
    iget v0, p5, Landroid/support/v7/widget/aK;->SR:I

    if-eqz v0, :cond_9

    .line 95
    :goto_8
    return-void

    .line 91
    :cond_9
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Landroid/support/v7/widget/ay;->Sz:Landroid/support/v7/widget/Y;

    invoke-interface {v0, p5}, Landroid/support/v7/widget/Y;->YY(Landroid/support/v7/widget/aK;)V

    goto :goto_8

    .line 100
    :cond_a
    iget v1, p5, Landroid/support/v7/widget/aK;->SQ:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p5, Landroid/support/v7/widget/aK;->SQ:I

    move-object v1, v3

    goto :goto_2

    .line 102
    :cond_b
    iget v1, p5, Landroid/support/v7/widget/aK;->SQ:I

    iget v4, p5, Landroid/support/v7/widget/aK;->SR:I

    add-int/2addr v1, v4

    iget v4, p3, Landroid/support/v7/widget/aK;->SQ:I

    sub-int/2addr v1, v4

    .line 104
    iget-object v4, p0, Landroid/support/v7/widget/ay;->Sz:Landroid/support/v7/widget/Y;

    iget v5, p3, Landroid/support/v7/widget/aK;->SQ:I

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v4, v7, v5, v1, v3}, Landroid/support/v7/widget/Y;->YX(IIILjava/lang/Object;)Landroid/support/v7/widget/aK;

    move-result-object v1

    .line 105
    iget v3, p3, Landroid/support/v7/widget/aK;->SQ:I

    iget v4, p5, Landroid/support/v7/widget/aK;->SQ:I

    sub-int/2addr v3, v4

    iput v3, p5, Landroid/support/v7/widget/aK;->SR:I

    goto :goto_2

    .line 110
    :cond_c
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Landroid/support/v7/widget/ay;->Sz:Landroid/support/v7/widget/Y;

    invoke-interface {v0, p3}, Landroid/support/v7/widget/Y;->YY(Landroid/support/v7/widget/aK;)V

    .line 113
    return-void

    .line 118
    :cond_d
    if-nez v1, :cond_f

    .line 126
    :cond_e
    :goto_9
    iget v0, p3, Landroid/support/v7/widget/aK;->SQ:I

    iget v2, p5, Landroid/support/v7/widget/aK;->SQ:I

    if-gt v0, v2, :cond_11

    .line 129
    :goto_a
    iget v0, p3, Landroid/support/v7/widget/aK;->SR:I

    iget v2, p5, Landroid/support/v7/widget/aK;->SQ:I

    if-le v0, v2, :cond_2

    .line 130
    iget v0, p3, Landroid/support/v7/widget/aK;->SR:I

    iget v2, p5, Landroid/support/v7/widget/aK;->SR:I

    sub-int/2addr v0, v2

    iput v0, p3, Landroid/support/v7/widget/aK;->SR:I

    goto/16 :goto_5

    .line 119
    :cond_f
    iget v0, p3, Landroid/support/v7/widget/aK;->SQ:I

    iget v2, v1, Landroid/support/v7/widget/aK;->SQ:I

    if-gt v0, v2, :cond_10

    .line 122
    :goto_b
    iget v0, p3, Landroid/support/v7/widget/aK;->SR:I

    iget v2, v1, Landroid/support/v7/widget/aK;->SQ:I

    if-le v0, v2, :cond_e

    .line 123
    iget v0, p3, Landroid/support/v7/widget/aK;->SR:I

    iget v2, v1, Landroid/support/v7/widget/aK;->SR:I

    sub-int/2addr v0, v2

    iput v0, p3, Landroid/support/v7/widget/aK;->SR:I

    goto :goto_9

    .line 120
    :cond_10
    iget v0, p3, Landroid/support/v7/widget/aK;->SQ:I

    iget v2, v1, Landroid/support/v7/widget/aK;->SR:I

    sub-int/2addr v0, v2

    iput v0, p3, Landroid/support/v7/widget/aK;->SQ:I

    goto :goto_b

    .line 127
    :cond_11
    iget v0, p3, Landroid/support/v7/widget/aK;->SQ:I

    iget v2, p5, Landroid/support/v7/widget/aK;->SR:I

    sub-int/2addr v0, v2

    iput v0, p3, Landroid/support/v7/widget/aK;->SQ:I

    goto :goto_a

    .line 134
    :cond_12
    iget v0, p3, Landroid/support/v7/widget/aK;->SQ:I

    iget v2, v1, Landroid/support/v7/widget/aK;->SQ:I

    if-ge v0, v2, :cond_13

    .line 137
    :goto_c
    iget v0, p3, Landroid/support/v7/widget/aK;->SR:I

    iget v2, v1, Landroid/support/v7/widget/aK;->SQ:I

    if-lt v0, v2, :cond_1

    .line 138
    iget v0, p3, Landroid/support/v7/widget/aK;->SR:I

    iget v2, v1, Landroid/support/v7/widget/aK;->SR:I

    sub-int/2addr v0, v2

    iput v0, p3, Landroid/support/v7/widget/aK;->SR:I

    goto/16 :goto_3

    .line 135
    :cond_13
    iget v0, p3, Landroid/support/v7/widget/aK;->SQ:I

    iget v2, v1, Landroid/support/v7/widget/aK;->SR:I

    sub-int/2addr v0, v2

    iput v0, p3, Landroid/support/v7/widget/aK;->SQ:I

    goto :goto_c

    .line 142
    :cond_14
    iget v0, p3, Landroid/support/v7/widget/aK;->SQ:I

    iget v2, p5, Landroid/support/v7/widget/aK;->SR:I

    sub-int/2addr v0, v2

    iput v0, p3, Landroid/support/v7/widget/aK;->SQ:I

    goto/16 :goto_4

    .line 145
    :cond_15
    iget v0, p3, Landroid/support/v7/widget/aK;->SR:I

    iget v2, p5, Landroid/support/v7/widget/aK;->SR:I

    sub-int/2addr v0, v2

    iput v0, p3, Landroid/support/v7/widget/aK;->SR:I

    goto/16 :goto_5

    .line 151
    :cond_16
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 156
    :cond_17
    invoke-interface {p1, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_7
.end method

.method abP(Ljava/util/List;ILandroid/support/v7/widget/aK;ILandroid/support/v7/widget/aK;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x0

    .line 186
    iget v0, p3, Landroid/support/v7/widget/aK;->SR:I

    iget v2, p5, Landroid/support/v7/widget/aK;->SQ:I

    if-lt v0, v2, :cond_0

    .line 188
    iget v0, p3, Landroid/support/v7/widget/aK;->SR:I

    iget v2, p5, Landroid/support/v7/widget/aK;->SQ:I

    iget v3, p5, Landroid/support/v7/widget/aK;->SR:I

    add-int/2addr v2, v3

    if-lt v0, v2, :cond_1

    move-object v0, v1

    .line 194
    :goto_0
    iget v2, p3, Landroid/support/v7/widget/aK;->SQ:I

    iget v3, p5, Landroid/support/v7/widget/aK;->SQ:I

    if-le v2, v3, :cond_2

    .line 196
    iget v2, p3, Landroid/support/v7/widget/aK;->SQ:I

    iget v3, p5, Landroid/support/v7/widget/aK;->SQ:I

    iget v4, p5, Landroid/support/v7/widget/aK;->SR:I

    add-int/2addr v3, v4

    if-lt v2, v3, :cond_3

    .line 203
    :goto_1
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget v2, p5, Landroid/support/v7/widget/aK;->SR:I

    if-gtz v2, :cond_4

    .line 207
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 208
    iget-object v2, p0, Landroid/support/v7/widget/ay;->Sz:Landroid/support/v7/widget/Y;

    invoke-interface {v2, p5}, Landroid/support/v7/widget/Y;->YY(Landroid/support/v7/widget/aK;)V

    .line 210
    :goto_2
    if-nez v0, :cond_5

    .line 213
    :goto_3
    if-nez v1, :cond_6

    .line 216
    :goto_4
    return-void

    .line 187
    :cond_0
    iget v0, p5, Landroid/support/v7/widget/aK;->SQ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p5, Landroid/support/v7/widget/aK;->SQ:I

    move-object v0, v1

    goto :goto_0

    .line 190
    :cond_1
    iget v0, p5, Landroid/support/v7/widget/aK;->SR:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p5, Landroid/support/v7/widget/aK;->SR:I

    .line 191
    iget-object v0, p0, Landroid/support/v7/widget/ay;->Sz:Landroid/support/v7/widget/Y;

    iget v2, p3, Landroid/support/v7/widget/aK;->SQ:I

    iget-object v3, p5, Landroid/support/v7/widget/aK;->SP:Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-interface {v0, v5, v2, v4, v3}, Landroid/support/v7/widget/Y;->YX(IIILjava/lang/Object;)Landroid/support/v7/widget/aK;

    move-result-object v0

    goto :goto_0

    .line 195
    :cond_2
    iget v2, p5, Landroid/support/v7/widget/aK;->SQ:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p5, Landroid/support/v7/widget/aK;->SQ:I

    goto :goto_1

    .line 197
    :cond_3
    iget v1, p5, Landroid/support/v7/widget/aK;->SQ:I

    iget v2, p5, Landroid/support/v7/widget/aK;->SR:I

    add-int/2addr v1, v2

    iget v2, p3, Landroid/support/v7/widget/aK;->SQ:I

    sub-int v2, v1, v2

    .line 199
    iget-object v1, p0, Landroid/support/v7/widget/ay;->Sz:Landroid/support/v7/widget/Y;

    iget v3, p3, Landroid/support/v7/widget/aK;->SQ:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p5, Landroid/support/v7/widget/aK;->SP:Ljava/lang/Object;

    invoke-interface {v1, v5, v3, v2, v4}, Landroid/support/v7/widget/Y;->YX(IIILjava/lang/Object;)Landroid/support/v7/widget/aK;

    move-result-object v1

    .line 201
    iget v3, p5, Landroid/support/v7/widget/aK;->SR:I

    sub-int v2, v3, v2

    iput v2, p5, Landroid/support/v7/widget/aK;->SR:I

    goto :goto_1

    .line 205
    :cond_4
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 211
    :cond_5
    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 214
    :cond_6
    invoke-interface {p1, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4
.end method

.method abR(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 40
    :goto_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ay;->abQ(Ljava/util/List;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 43
    return-void

    .line 41
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/ay;->abO(Ljava/util/List;II)V

    goto :goto_0
.end method
