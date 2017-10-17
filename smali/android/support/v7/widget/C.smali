.class Landroid/support/v7/widget/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/Y;


# instance fields
.field final PC:Ljava/util/ArrayList;

.field final PD:Ljava/util/ArrayList;

.field final PE:Landroid/support/v7/widget/am;

.field private PF:I

.field private PG:Landroid/support/v4/a/i;

.field final PH:Z

.field PI:Ljava/lang/Runnable;

.field final PJ:Landroid/support/v7/widget/ay;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/am;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/C;-><init>(Landroid/support/v7/widget/am;Z)V

    .line 72
    return-void
.end method

.method constructor <init>(Landroid/support/v7/widget/am;Z)V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/support/v4/a/d;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/support/v4/a/d;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/C;->PG:Landroid/support/v4/a/i;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/C;->PC:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/C;->PD:Ljava/util/ArrayList;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/C;->PF:I

    .line 75
    iput-object p1, p0, Landroid/support/v7/widget/C;->PE:Landroid/support/v7/widget/am;

    .line 76
    iput-boolean p2, p0, Landroid/support/v7/widget/C;->PH:Z

    .line 77
    new-instance v0, Landroid/support/v7/widget/ay;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ay;-><init>(Landroid/support/v7/widget/Y;)V

    iput-object v0, p0, Landroid/support/v7/widget/C;->PJ:Landroid/support/v7/widget/ay;

    .line 78
    return-void
.end method

.method private YZ(II)I
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 329
    iget-object v0, p0, Landroid/support/v7/widget/C;->PD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 330
    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v1, p1

    :goto_0
    if-gez v4, :cond_0

    .line 394
    iget-object v0, p0, Landroid/support/v7/widget/C;->PD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-gez v2, :cond_12

    .line 406
    return v1

    .line 331
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/C;->PD:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aK;

    .line 332
    iget v2, v0, Landroid/support/v7/widget/aK;->SO:I

    if-eq v2, v7, :cond_2

    .line 371
    iget v2, v0, Landroid/support/v7/widget/aK;->SQ:I

    if-le v2, v1, :cond_e

    .line 378
    if-eq p2, v5, :cond_10

    .line 380
    if-eq p2, v6, :cond_11

    .line 330
    :cond_1
    :goto_2
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    .line 334
    :cond_2
    iget v2, v0, Landroid/support/v7/widget/aK;->SQ:I

    iget v3, v0, Landroid/support/v7/widget/aK;->SR:I

    if-lt v2, v3, :cond_4

    .line 338
    iget v3, v0, Landroid/support/v7/widget/aK;->SR:I

    .line 339
    iget v2, v0, Landroid/support/v7/widget/aK;->SQ:I

    .line 341
    :goto_3
    if-ge v1, v3, :cond_5

    .line 360
    :cond_3
    iget v2, v0, Landroid/support/v7/widget/aK;->SQ:I

    if-lt v1, v2, :cond_b

    move v0, v1

    :goto_4
    move v1, v0

    .line 370
    goto :goto_2

    .line 335
    :cond_4
    iget v3, v0, Landroid/support/v7/widget/aK;->SQ:I

    .line 336
    iget v2, v0, Landroid/support/v7/widget/aK;->SR:I

    goto :goto_3

    .line 341
    :cond_5
    if-gt v1, v2, :cond_3

    .line 343
    iget v2, v0, Landroid/support/v7/widget/aK;->SQ:I

    if-eq v3, v2, :cond_6

    .line 352
    if-eq p2, v5, :cond_9

    .line 354
    if-eq p2, v6, :cond_a

    .line 358
    :goto_5
    add-int/lit8 v0, v1, -0x1

    goto :goto_4

    .line 344
    :cond_6
    if-eq p2, v5, :cond_7

    .line 346
    if-eq p2, v6, :cond_8

    .line 350
    :goto_6
    add-int/lit8 v0, v1, 0x1

    goto :goto_4

    .line 345
    :cond_7
    iget v2, v0, Landroid/support/v7/widget/aK;->SR:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/aK;->SR:I

    goto :goto_6

    .line 347
    :cond_8
    iget v2, v0, Landroid/support/v7/widget/aK;->SR:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/aK;->SR:I

    goto :goto_6

    .line 353
    :cond_9
    iget v2, v0, Landroid/support/v7/widget/aK;->SQ:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/aK;->SQ:I

    goto :goto_5

    .line 355
    :cond_a
    iget v2, v0, Landroid/support/v7/widget/aK;->SQ:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/aK;->SQ:I

    goto :goto_5

    .line 362
    :cond_b
    if-eq p2, v5, :cond_c

    .line 365
    if-eq p2, v6, :cond_d

    move v0, v1

    goto :goto_4

    .line 363
    :cond_c
    iget v2, v0, Landroid/support/v7/widget/aK;->SQ:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/aK;->SQ:I

    .line 364
    iget v2, v0, Landroid/support/v7/widget/aK;->SR:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/aK;->SR:I

    move v0, v1

    goto :goto_4

    .line 366
    :cond_d
    iget v2, v0, Landroid/support/v7/widget/aK;->SQ:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/aK;->SQ:I

    .line 367
    iget v2, v0, Landroid/support/v7/widget/aK;->SR:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/aK;->SR:I

    move v0, v1

    goto :goto_4

    .line 372
    :cond_e
    iget v2, v0, Landroid/support/v7/widget/aK;->SO:I

    if-eq v2, v5, :cond_f

    .line 374
    iget v2, v0, Landroid/support/v7/widget/aK;->SO:I

    if-ne v2, v6, :cond_1

    .line 375
    iget v0, v0, Landroid/support/v7/widget/aK;->SR:I

    add-int/2addr v1, v0

    goto :goto_2

    .line 373
    :cond_f
    iget v0, v0, Landroid/support/v7/widget/aK;->SR:I

    sub-int/2addr v1, v0

    goto :goto_2

    .line 379
    :cond_10
    iget v2, v0, Landroid/support/v7/widget/aK;->SQ:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/aK;->SQ:I

    goto/16 :goto_2

    .line 381
    :cond_11
    iget v2, v0, Landroid/support/v7/widget/aK;->SQ:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/aK;->SQ:I

    goto/16 :goto_2

    .line 395
    :cond_12
    iget-object v0, p0, Landroid/support/v7/widget/C;->PD:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aK;

    .line 396
    iget v3, v0, Landroid/support/v7/widget/aK;->SO:I

    if-eq v3, v7, :cond_13

    .line 401
    iget v3, v0, Landroid/support/v7/widget/aK;->SR:I

    if-lez v3, :cond_16

    .line 394
    :goto_7
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto/16 :goto_1

    .line 397
    :cond_13
    iget v3, v0, Landroid/support/v7/widget/aK;->SR:I

    iget v4, v0, Landroid/support/v7/widget/aK;->SQ:I

    if-ne v3, v4, :cond_15

    .line 398
    :cond_14
    iget-object v3, p0, Landroid/support/v7/widget/C;->PD:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 399
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/C;->YY(Landroid/support/v7/widget/aK;)V

    goto :goto_7

    .line 397
    :cond_15
    iget v3, v0, Landroid/support/v7/widget/aK;->SR:I

    if-ltz v3, :cond_14

    goto :goto_7

    .line 402
    :cond_16
    iget-object v3, p0, Landroid/support/v7/widget/C;->PD:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 403
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/C;->YY(Landroid/support/v7/widget/aK;)V

    goto :goto_7
.end method

.method private Za(I)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 410
    iget-object v0, p0, Landroid/support/v7/widget/C;->PD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 411
    :goto_0
    if-lt v1, v3, :cond_0

    .line 427
    return v2

    .line 412
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/C;->PD:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aK;

    .line 413
    iget v4, v0, Landroid/support/v7/widget/aK;->SO:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2

    .line 417
    iget v4, v0, Landroid/support/v7/widget/aK;->SO:I

    if-eq v4, v6, :cond_3

    .line 411
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 414
    :cond_2
    iget v0, v0, Landroid/support/v7/widget/aK;->SR:I

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v0, v4}, Landroid/support/v7/widget/C;->YW(II)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 415
    return v6

    .line 419
    :cond_3
    iget v4, v0, Landroid/support/v7/widget/aK;->SQ:I

    iget v5, v0, Landroid/support/v7/widget/aK;->SR:I

    add-int/2addr v4, v5

    .line 420
    iget v0, v0, Landroid/support/v7/widget/aK;->SQ:I

    :goto_1
    if-ge v0, v4, :cond_1

    .line 421
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v0, v5}, Landroid/support/v7/widget/C;->YW(II)I

    move-result v5

    if-eq v5, p1, :cond_4

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 422
    :cond_4
    return v6
.end method

.method private Zc(Landroid/support/v7/widget/aK;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 230
    iget v0, p1, Landroid/support/v7/widget/aK;->SO:I

    if-ne v0, v2, :cond_1

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "should not dispatch add or move for pre layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_1
    iget v0, p1, Landroid/support/v7/widget/aK;->SO:I

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    .line 244
    iget v0, p1, Landroid/support/v7/widget/aK;->SQ:I

    iget v3, p1, Landroid/support/v7/widget/aK;->SO:I

    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/C;->YZ(II)I

    move-result v4

    .line 249
    iget v3, p1, Landroid/support/v7/widget/aK;->SQ:I

    .line 251
    iget v0, p1, Landroid/support/v7/widget/aK;->SO:I

    packed-switch v0, :pswitch_data_0

    .line 259
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "op should be remove or update."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move v0, v2

    :goto_0
    move v5, v2

    move v6, v4

    move v4, v3

    move v3, v2

    .line 261
    :goto_1
    iget v7, p1, Landroid/support/v7/widget/aK;->SR:I

    if-lt v3, v7, :cond_2

    .line 293
    iget-object v0, p1, Landroid/support/v7/widget/aK;->SP:Ljava/lang/Object;

    .line 294
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/C;->YY(Landroid/support/v7/widget/aK;)V

    .line 295
    if-gtz v5, :cond_7

    .line 311
    :goto_2
    return-void

    :pswitch_2
    move v0, v1

    .line 257
    goto :goto_0

    .line 262
    :cond_2
    iget v7, p1, Landroid/support/v7/widget/aK;->SQ:I

    mul-int v8, v0, v3

    add-int/2addr v7, v8

    .line 263
    iget v8, p1, Landroid/support/v7/widget/aK;->SO:I

    invoke-direct {p0, v7, v8}, Landroid/support/v7/widget/C;->YZ(II)I

    move-result v8

    .line 268
    iget v7, p1, Landroid/support/v7/widget/aK;->SO:I

    packed-switch v7, :pswitch_data_1

    :pswitch_3
    move v7, v1

    .line 276
    :goto_3
    if-nez v7, :cond_5

    .line 280
    iget v7, p1, Landroid/support/v7/widget/aK;->SO:I

    iget-object v9, p1, Landroid/support/v7/widget/aK;->SP:Ljava/lang/Object;

    invoke-virtual {p0, v7, v6, v5, v9}, Landroid/support/v7/widget/C;->YX(IIILjava/lang/Object;)Landroid/support/v7/widget/aK;

    move-result-object v6

    .line 284
    invoke-virtual {p0, v6, v4}, Landroid/support/v7/widget/C;->Ze(Landroid/support/v7/widget/aK;I)V

    .line 285
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/C;->YY(Landroid/support/v7/widget/aK;)V

    .line 286
    iget v6, p1, Landroid/support/v7/widget/aK;->SO:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_6

    :goto_4
    move v5, v2

    move v6, v8

    .line 261
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 270
    :pswitch_4
    add-int/lit8 v7, v6, 0x1

    if-eq v8, v7, :cond_3

    move v7, v1

    goto :goto_3

    :cond_3
    move v7, v2

    goto :goto_3

    .line 273
    :pswitch_5
    if-eq v8, v6, :cond_4

    move v7, v1

    goto :goto_3

    :cond_4
    move v7, v2

    goto :goto_3

    .line 277
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 287
    :cond_6
    add-int/2addr v4, v5

    goto :goto_4

    .line 296
    :cond_7
    iget v1, p1, Landroid/support/v7/widget/aK;->SO:I

    invoke-virtual {p0, v1, v6, v5, v0}, Landroid/support/v7/widget/C;->YX(IIILjava/lang/Object;)Landroid/support/v7/widget/aK;

    move-result-object v0

    .line 300
    invoke-virtual {p0, v0, v4}, Landroid/support/v7/widget/C;->Ze(Landroid/support/v7/widget/aK;I)V

    .line 301
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/C;->YY(Landroid/support/v7/widget/aK;)V

    goto :goto_2

    .line 251
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 268
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private Zf(Landroid/support/v7/widget/aK;)V
    .locals 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 133
    iget v7, p1, Landroid/support/v7/widget/aK;->SQ:I

    .line 135
    iget v0, p1, Landroid/support/v7/widget/aK;->SQ:I

    iget v3, p1, Landroid/support/v7/widget/aK;->SR:I

    add-int v4, v0, v3

    .line 136
    const/4 v5, -0x1

    .line 137
    iget v3, p1, Landroid/support/v7/widget/aK;->SQ:I

    move v6, v1

    :goto_0
    if-lt v3, v4, :cond_0

    .line 175
    iget v0, p1, Landroid/support/v7/widget/aK;->SR:I

    if-ne v6, v0, :cond_6

    .line 179
    :goto_1
    if-eqz v5, :cond_7

    .line 182
    invoke-direct {p0, p1}, Landroid/support/v7/widget/C;->Zh(Landroid/support/v7/widget/aK;)V

    .line 184
    :goto_2
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/C;->PE:Landroid/support/v7/widget/am;

    invoke-interface {v0, v3}, Landroid/support/v7/widget/am;->abw(I)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_2

    .line 147
    :cond_1
    if-eqz v5, :cond_3

    move v0, v1

    :goto_3
    move v5, v2

    .line 167
    :goto_4
    if-nez v0, :cond_5

    .line 172
    add-int/lit8 v0, v6, 0x1

    move v10, v3

    move v3, v4

    move v4, v0

    move v0, v10

    .line 137
    :goto_5
    add-int/lit8 v0, v0, 0x1

    move v6, v4

    move v4, v3

    move v3, v0

    goto :goto_0

    .line 140
    :cond_2
    invoke-direct {p0, v3}, Landroid/support/v7/widget/C;->Za(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    if-eq v5, v2, :cond_4

    move v0, v1

    :goto_6
    move v5, v1

    .line 165
    goto :goto_4

    .line 150
    :cond_3
    invoke-virtual {p0, v9, v7, v6, v8}, Landroid/support/v7/widget/C;->YX(IIILjava/lang/Object;)Landroid/support/v7/widget/aK;

    move-result-object v0

    .line 151
    invoke-direct {p0, v0}, Landroid/support/v7/widget/C;->Zc(Landroid/support/v7/widget/aK;)V

    move v0, v2

    .line 152
    goto :goto_3

    .line 161
    :cond_4
    invoke-virtual {p0, v9, v7, v6, v8}, Landroid/support/v7/widget/C;->YX(IIILjava/lang/Object;)Landroid/support/v7/widget/aK;

    move-result-object v0

    .line 162
    invoke-direct {p0, v0}, Landroid/support/v7/widget/C;->Zh(Landroid/support/v7/widget/aK;)V

    move v0, v2

    .line 163
    goto :goto_6

    .line 168
    :cond_5
    sub-int v0, v3, v6

    .line 169
    sub-int v3, v4, v6

    move v4, v2

    .line 170
    goto :goto_5

    .line 176
    :cond_6
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/C;->YY(Landroid/support/v7/widget/aK;)V

    .line 177
    invoke-virtual {p0, v9, v7, v6, v8}, Landroid/support/v7/widget/C;->YX(IIILjava/lang/Object;)Landroid/support/v7/widget/aK;

    move-result-object p1

    goto :goto_1

    .line 180
    :cond_7
    invoke-direct {p0, p1}, Landroid/support/v7/widget/C;->Zc(Landroid/support/v7/widget/aK;)V

    goto :goto_2
.end method

.method private Zg(Landroid/support/v7/widget/aK;)V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x4

    const/4 v1, 0x0

    .line 187
    iget v2, p1, Landroid/support/v7/widget/aK;->SQ:I

    .line 189
    iget v0, p1, Landroid/support/v7/widget/aK;->SQ:I

    iget v3, p1, Landroid/support/v7/widget/aK;->SR:I

    add-int v6, v0, v3

    .line 190
    const/4 v0, -0x1

    .line 191
    iget v3, p1, Landroid/support/v7/widget/aK;->SQ:I

    move v5, v0

    move v0, v1

    :goto_0
    if-lt v3, v6, :cond_0

    .line 214
    iget v1, p1, Landroid/support/v7/widget/aK;->SR:I

    if-ne v0, v1, :cond_5

    .line 219
    :goto_1
    if-eqz v5, :cond_6

    .line 222
    invoke-direct {p0, p1}, Landroid/support/v7/widget/C;->Zh(Landroid/support/v7/widget/aK;)V

    .line 224
    :goto_2
    return-void

    .line 192
    :cond_0
    iget-object v7, p0, Landroid/support/v7/widget/C;->PE:Landroid/support/v7/widget/am;

    invoke-interface {v7, v3}, Landroid/support/v7/widget/am;->abw(I)Landroid/support/v7/widget/j;

    move-result-object v7

    .line 193
    if-eqz v7, :cond_2

    .line 194
    :cond_1
    if-eqz v5, :cond_3

    :goto_3
    move v5, v2

    move v2, v0

    move v0, v4

    .line 212
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 191
    add-int/lit8 v3, v3, 0x1

    move v9, v0

    move v0, v2

    move v2, v5

    move v5, v9

    goto :goto_0

    .line 193
    :cond_2
    invoke-direct {p0, v3}, Landroid/support/v7/widget/C;->Za(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 203
    if-eq v5, v4, :cond_4

    :goto_5
    move v5, v2

    move v2, v0

    move v0, v1

    .line 210
    goto :goto_4

    .line 195
    :cond_3
    iget-object v5, p1, Landroid/support/v7/widget/aK;->SP:Ljava/lang/Object;

    invoke-virtual {p0, v8, v2, v0, v5}, Landroid/support/v7/widget/C;->YX(IIILjava/lang/Object;)Landroid/support/v7/widget/aK;

    move-result-object v0

    .line 197
    invoke-direct {p0, v0}, Landroid/support/v7/widget/C;->Zc(Landroid/support/v7/widget/aK;)V

    move v0, v1

    move v2, v3

    .line 199
    goto :goto_3

    .line 204
    :cond_4
    iget-object v5, p1, Landroid/support/v7/widget/aK;->SP:Ljava/lang/Object;

    invoke-virtual {p0, v8, v2, v0, v5}, Landroid/support/v7/widget/C;->YX(IIILjava/lang/Object;)Landroid/support/v7/widget/aK;

    move-result-object v0

    .line 206
    invoke-direct {p0, v0}, Landroid/support/v7/widget/C;->Zh(Landroid/support/v7/widget/aK;)V

    move v0, v1

    move v2, v3

    .line 208
    goto :goto_5

    .line 215
    :cond_5
    iget-object v1, p1, Landroid/support/v7/widget/aK;->SP:Ljava/lang/Object;

    .line 216
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/C;->YY(Landroid/support/v7/widget/aK;)V

    .line 217
    invoke-virtual {p0, v8, v2, v0, v1}, Landroid/support/v7/widget/C;->YX(IIILjava/lang/Object;)Landroid/support/v7/widget/aK;

    move-result-object p1

    goto :goto_1

    .line 220
    :cond_6
    invoke-direct {p0, p1}, Landroid/support/v7/widget/C;->Zc(Landroid/support/v7/widget/aK;)V

    goto :goto_2
.end method

.method private Zh(Landroid/support/v7/widget/aK;)V
    .locals 4

    .prologue
    .line 438
    iget-object v0, p0, Landroid/support/v7/widget/C;->PD:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    iget v0, p1, Landroid/support/v7/widget/aK;->SO:I

    packed-switch v0, :pswitch_data_0

    .line 454
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/C;->PE:Landroid/support/v7/widget/am;

    iget v1, p1, Landroid/support/v7/widget/aK;->SQ:I

    iget v2, p1, Landroid/support/v7/widget/aK;->SR:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/am;->abr(II)V

    .line 456
    :goto_0
    return-void

    .line 444
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/widget/C;->PE:Landroid/support/v7/widget/am;

    iget v1, p1, Landroid/support/v7/widget/aK;->SQ:I

    iget v2, p1, Landroid/support/v7/widget/aK;->SR:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/am;->abu(II)V

    goto :goto_0

    .line 447
    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/widget/C;->PE:Landroid/support/v7/widget/am;

    iget v1, p1, Landroid/support/v7/widget/aK;->SQ:I

    iget v2, p1, Landroid/support/v7/widget/aK;->SR:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/am;->abx(II)V

    goto :goto_0

    .line 451
    :pswitch_4
    iget-object v0, p0, Landroid/support/v7/widget/C;->PE:Landroid/support/v7/widget/am;

    iget v1, p1, Landroid/support/v7/widget/aK;->SQ:I

    iget v2, p1, Landroid/support/v7/widget/aK;->SR:I

    iget-object v3, p1, Landroid/support/v7/widget/aK;->SP:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Landroid/support/v7/widget/am;->abv(IILjava/lang/Object;)V

    goto :goto_0

    .line 439
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private Zl(Landroid/support/v7/widget/aK;)V
    .locals 0

    .prologue
    .line 431
    invoke-direct {p0, p1}, Landroid/support/v7/widget/C;->Zh(Landroid/support/v7/widget/aK;)V

    .line 432
    return-void
.end method

.method private Zm(Landroid/support/v7/widget/aK;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0, p1}, Landroid/support/v7/widget/C;->Zh(Landroid/support/v7/widget/aK;)V

    .line 130
    return-void
.end method


# virtual methods
.method YV(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 463
    iget v1, p0, Landroid/support/v7/widget/C;->PF:I

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method YW(II)I
    .locals 5

    .prologue
    .line 471
    iget-object v0, p0, Landroid/support/v7/widget/C;->PD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, p1

    .line 472
    :goto_0
    if-lt p2, v2, :cond_0

    .line 496
    return v1

    .line 473
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/C;->PD:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aK;

    .line 474
    iget v3, v0, Landroid/support/v7/widget/aK;->SO:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    .line 485
    iget v3, v0, Landroid/support/v7/widget/aK;->SQ:I

    if-le v3, v1, :cond_5

    .line 472
    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 475
    :cond_2
    iget v3, v0, Landroid/support/v7/widget/aK;->SQ:I

    if-eq v3, v1, :cond_3

    .line 478
    iget v3, v0, Landroid/support/v7/widget/aK;->SQ:I

    if-lt v3, v1, :cond_4

    .line 481
    :goto_2
    iget v0, v0, Landroid/support/v7/widget/aK;->SR:I

    if-gt v0, v1, :cond_1

    .line 482
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 476
    :cond_3
    iget v1, v0, Landroid/support/v7/widget/aK;->SR:I

    goto :goto_1

    .line 479
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 486
    :cond_5
    iget v3, v0, Landroid/support/v7/widget/aK;->SO:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    .line 491
    iget v3, v0, Landroid/support/v7/widget/aK;->SO:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 492
    iget v0, v0, Landroid/support/v7/widget/aK;->SR:I

    add-int/2addr v1, v0

    goto :goto_1

    .line 487
    :cond_6
    iget v3, v0, Landroid/support/v7/widget/aK;->SQ:I

    iget v4, v0, Landroid/support/v7/widget/aK;->SR:I

    add-int/2addr v3, v4

    if-lt v1, v3, :cond_7

    .line 490
    iget v0, v0, Landroid/support/v7/widget/aK;->SR:I

    sub-int/2addr v1, v0

    goto :goto_1

    .line 488
    :cond_7
    const/4 v0, -0x1

    return v0
.end method

.method public YX(IIILjava/lang/Object;)Landroid/support/v7/widget/aK;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Landroid/support/v7/widget/C;->PG:Landroid/support/v4/a/i;

    invoke-interface {v0}, Landroid/support/v4/a/i;->agV()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aK;

    .line 727
    if-eqz v0, :cond_0

    .line 730
    iput p1, v0, Landroid/support/v7/widget/aK;->SO:I

    .line 731
    iput p2, v0, Landroid/support/v7/widget/aK;->SQ:I

    .line 732
    iput p3, v0, Landroid/support/v7/widget/aK;->SR:I

    .line 733
    iput-object p4, v0, Landroid/support/v7/widget/aK;->SP:Ljava/lang/Object;

    .line 735
    :goto_0
    return-object v0

    .line 728
    :cond_0
    new-instance v0, Landroid/support/v7/widget/aK;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/aK;-><init>(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method public YY(Landroid/support/v7/widget/aK;)V
    .locals 1

    .prologue
    .line 740
    iget-boolean v0, p0, Landroid/support/v7/widget/C;->PH:Z

    if-eqz v0, :cond_0

    .line 744
    :goto_0
    return-void

    .line 741
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/aK;->SP:Ljava/lang/Object;

    .line 742
    iget-object v0, p0, Landroid/support/v7/widget/C;->PG:Landroid/support/v4/a/i;

    invoke-interface {v0, p1}, Landroid/support/v4/a/i;->agT(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method Zb()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 623
    iget-object v1, p0, Landroid/support/v7/widget/C;->PD:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/C;->PC:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method Zd()V
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Landroid/support/v7/widget/C;->PJ:Landroid/support/v7/widget/ay;

    iget-object v1, p0, Landroid/support/v7/widget/C;->PC:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ay;->abR(Ljava/util/List;)V

    .line 93
    iget-object v0, p0, Landroid/support/v7/widget/C;->PC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 94
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 114
    iget-object v0, p0, Landroid/support/v7/widget/C;->PC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 115
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/C;->PC:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aK;

    .line 96
    iget v3, v0, Landroid/support/v7/widget/aK;->SO:I

    packed-switch v3, :pswitch_data_0

    .line 110
    :goto_1
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/C;->PI:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 94
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 98
    :pswitch_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/C;->Zl(Landroid/support/v7/widget/aK;)V

    goto :goto_1

    .line 101
    :pswitch_2
    invoke-direct {p0, v0}, Landroid/support/v7/widget/C;->Zf(Landroid/support/v7/widget/aK;)V

    goto :goto_1

    .line 104
    :pswitch_3
    invoke-direct {p0, v0}, Landroid/support/v7/widget/C;->Zg(Landroid/support/v7/widget/aK;)V

    goto :goto_1

    .line 107
    :pswitch_4
    invoke-direct {p0, v0}, Landroid/support/v7/widget/C;->Zm(Landroid/support/v7/widget/aK;)V

    goto :goto_1

    .line 111
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/C;->PI:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method Ze(Landroid/support/v7/widget/aK;I)V
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Landroid/support/v7/widget/C;->PE:Landroid/support/v7/widget/am;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/am;->aby(Landroid/support/v7/widget/aK;)V

    .line 315
    iget v0, p1, Landroid/support/v7/widget/aK;->SO:I

    packed-switch v0, :pswitch_data_0

    .line 323
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only remove and update ops can be dispatched in first pass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/C;->PE:Landroid/support/v7/widget/am;

    iget v1, p1, Landroid/support/v7/widget/aK;->SR:I

    invoke-interface {v0, p2, v1}, Landroid/support/v7/widget/am;->abs(II)V

    .line 326
    :goto_0
    return-void

    .line 320
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/widget/C;->PE:Landroid/support/v7/widget/am;

    iget v1, p1, Landroid/support/v7/widget/aK;->SR:I

    iget-object v2, p1, Landroid/support/v7/widget/aK;->SP:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, v2}, Landroid/support/v7/widget/am;->abv(IILjava/lang/Object;)V

    goto :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method Zi()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Landroid/support/v7/widget/C;->PD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 119
    :goto_0
    if-lt v1, v3, :cond_0

    .line 122
    iget-object v0, p0, Landroid/support/v7/widget/C;->PD:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/C;->Zk(Ljava/util/List;)V

    .line 123
    iput v2, p0, Landroid/support/v7/widget/C;->PF:I

    .line 124
    return-void

    .line 120
    :cond_0
    iget-object v4, p0, Landroid/support/v7/widget/C;->PE:Landroid/support/v7/widget/am;

    iget-object v0, p0, Landroid/support/v7/widget/C;->PD:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aK;

    invoke-interface {v4, v0}, Landroid/support/v7/widget/am;->abt(Landroid/support/v7/widget/aK;)V

    .line 119
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public Zj(I)I
    .locals 6

    .prologue
    .line 587
    iget-object v0, p0, Landroid/support/v7/widget/C;->PC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 588
    const/4 v0, 0x0

    move v2, v0

    move v1, p1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 619
    return v1

    .line 589
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/C;->PC:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aK;

    .line 590
    iget v4, v0, Landroid/support/v7/widget/aK;->SO:I

    sparse-switch v4, :sswitch_data_0

    .line 588
    :cond_1
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 592
    :sswitch_0
    iget v4, v0, Landroid/support/v7/widget/aK;->SQ:I

    if-gt v4, v1, :cond_1

    .line 593
    iget v0, v0, Landroid/support/v7/widget/aK;->SR:I

    add-int/2addr v1, v0

    goto :goto_1

    .line 597
    :sswitch_1
    iget v4, v0, Landroid/support/v7/widget/aK;->SQ:I

    if-gt v4, v1, :cond_1

    .line 598
    iget v4, v0, Landroid/support/v7/widget/aK;->SQ:I

    iget v5, v0, Landroid/support/v7/widget/aK;->SR:I

    add-int/2addr v4, v5

    .line 599
    if-gt v4, v1, :cond_2

    .line 602
    iget v0, v0, Landroid/support/v7/widget/aK;->SR:I

    sub-int/2addr v1, v0

    goto :goto_1

    .line 600
    :cond_2
    const/4 v0, -0x1

    return v0

    .line 606
    :sswitch_2
    iget v4, v0, Landroid/support/v7/widget/aK;->SQ:I

    if-eq v4, v1, :cond_3

    .line 609
    iget v4, v0, Landroid/support/v7/widget/aK;->SQ:I

    if-lt v4, v1, :cond_4

    .line 612
    :goto_2
    iget v0, v0, Landroid/support/v7/widget/aK;->SR:I

    if-gt v0, v1, :cond_1

    .line 613
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 607
    :cond_3
    iget v1, v0, Landroid/support/v7/widget/aK;->SR:I

    goto :goto_1

    .line 610
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 590
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method Zk(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 747
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 748
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 751
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 752
    return-void

    .line 749
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aK;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/C;->YY(Landroid/support/v7/widget/aK;)V

    .line 748
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method Zn()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 459
    iget-object v1, p0, Landroid/support/v7/widget/C;->PC:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method Zo()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 556
    invoke-virtual {p0}, Landroid/support/v7/widget/C;->Zi()V

    .line 557
    iget-object v0, p0, Landroid/support/v7/widget/C;->PC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 558
    :goto_0
    if-lt v1, v3, :cond_0

    .line 582
    iget-object v0, p0, Landroid/support/v7/widget/C;->PC:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/C;->Zk(Ljava/util/List;)V

    .line 583
    iput v2, p0, Landroid/support/v7/widget/C;->PF:I

    .line 584
    return-void

    .line 559
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/C;->PC:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aK;

    .line 560
    iget v4, v0, Landroid/support/v7/widget/aK;->SO:I

    packed-switch v4, :pswitch_data_0

    .line 578
    :goto_1
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/C;->PI:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 558
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 562
    :pswitch_1
    iget-object v4, p0, Landroid/support/v7/widget/C;->PE:Landroid/support/v7/widget/am;

    invoke-interface {v4, v0}, Landroid/support/v7/widget/am;->abt(Landroid/support/v7/widget/aK;)V

    .line 563
    iget-object v4, p0, Landroid/support/v7/widget/C;->PE:Landroid/support/v7/widget/am;

    iget v5, v0, Landroid/support/v7/widget/aK;->SQ:I

    iget v0, v0, Landroid/support/v7/widget/aK;->SR:I

    invoke-interface {v4, v5, v0}, Landroid/support/v7/widget/am;->abr(II)V

    goto :goto_1

    .line 566
    :pswitch_2
    iget-object v4, p0, Landroid/support/v7/widget/C;->PE:Landroid/support/v7/widget/am;

    invoke-interface {v4, v0}, Landroid/support/v7/widget/am;->abt(Landroid/support/v7/widget/aK;)V

    .line 567
    iget-object v4, p0, Landroid/support/v7/widget/C;->PE:Landroid/support/v7/widget/am;

    iget v5, v0, Landroid/support/v7/widget/aK;->SQ:I

    iget v0, v0, Landroid/support/v7/widget/aK;->SR:I

    invoke-interface {v4, v5, v0}, Landroid/support/v7/widget/am;->abs(II)V

    goto :goto_1

    .line 570
    :pswitch_3
    iget-object v4, p0, Landroid/support/v7/widget/C;->PE:Landroid/support/v7/widget/am;

    invoke-interface {v4, v0}, Landroid/support/v7/widget/am;->abt(Landroid/support/v7/widget/aK;)V

    .line 571
    iget-object v4, p0, Landroid/support/v7/widget/C;->PE:Landroid/support/v7/widget/am;

    iget v5, v0, Landroid/support/v7/widget/aK;->SQ:I

    iget v6, v0, Landroid/support/v7/widget/aK;->SR:I

    iget-object v0, v0, Landroid/support/v7/widget/aK;->SP:Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v0}, Landroid/support/v7/widget/am;->abv(IILjava/lang/Object;)V

    goto :goto_1

    .line 574
    :pswitch_4
    iget-object v4, p0, Landroid/support/v7/widget/C;->PE:Landroid/support/v7/widget/am;

    invoke-interface {v4, v0}, Landroid/support/v7/widget/am;->abt(Landroid/support/v7/widget/aK;)V

    .line 575
    iget-object v4, p0, Landroid/support/v7/widget/C;->PE:Landroid/support/v7/widget/am;

    iget v5, v0, Landroid/support/v7/widget/aK;->SQ:I

    iget v0, v0, Landroid/support/v7/widget/aK;->SR:I

    invoke-interface {v4, v5, v0}, Landroid/support/v7/widget/am;->abu(II)V

    goto :goto_1

    .line 579
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/C;->PI:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 560
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method Zp(I)I
    .locals 1

    .prologue
    .line 467
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/C;->YW(II)I

    move-result v0

    return v0
.end method

.method reset()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/v7/widget/C;->PC:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/C;->Zk(Ljava/util/List;)V

    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/C;->PD:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/C;->Zk(Ljava/util/List;)V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/C;->PF:I

    .line 89
    return-void
.end method
