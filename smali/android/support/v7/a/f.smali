.class Landroid/support/v7/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private TA:I

.field private TB:I

.field private TC:I

.field private TD:I

.field private TE:I

.field private TF:I

.field private TG:I

.field final synthetic TH:Landroid/support/v7/a/i;

.field private Ty:I

.field private Tz:I


# direct methods
.method constructor <init>(Landroid/support/v7/a/i;II)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Landroid/support/v7/a/f;->TH:Landroid/support/v7/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput p2, p0, Landroid/support/v7/a/f;->TD:I

    .line 224
    iput p3, p0, Landroid/support/v7/a/f;->Tz:I

    .line 225
    invoke-virtual {p0}, Landroid/support/v7/a/f;->adi()V

    .line 226
    return-void
.end method


# virtual methods
.method final adc()I
    .locals 6

    .prologue
    .line 340
    invoke-virtual {p0}, Landroid/support/v7/a/f;->adf()I

    move-result v0

    .line 341
    iget-object v1, p0, Landroid/support/v7/a/f;->TH:Landroid/support/v7/a/i;

    iget-object v2, v1, Landroid/support/v7/a/i;->mColors:[I

    .line 342
    iget-object v1, p0, Landroid/support/v7/a/f;->TH:Landroid/support/v7/a/i;

    iget-object v3, v1, Landroid/support/v7/a/i;->TL:[I

    .line 347
    iget v1, p0, Landroid/support/v7/a/f;->TD:I

    iget v4, p0, Landroid/support/v7/a/f;->Tz:I

    invoke-static {v2, v0, v1, v4}, Landroid/support/v7/a/i;->adq([IIII)V

    .line 350
    iget v1, p0, Landroid/support/v7/a/f;->TD:I

    iget v4, p0, Landroid/support/v7/a/f;->Tz:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v1, v4}, Ljava/util/Arrays;->sort([III)V

    .line 353
    iget v1, p0, Landroid/support/v7/a/f;->TD:I

    iget v4, p0, Landroid/support/v7/a/f;->Tz:I

    invoke-static {v2, v0, v1, v4}, Landroid/support/v7/a/i;->adq([IIII)V

    .line 355
    iget v0, p0, Landroid/support/v7/a/f;->TG:I

    div-int/lit8 v4, v0, 0x2

    .line 356
    iget v1, p0, Landroid/support/v7/a/f;->TD:I

    const/4 v0, 0x0

    :goto_0
    iget v5, p0, Landroid/support/v7/a/f;->Tz:I

    if-le v1, v5, :cond_0

    .line 365
    iget v0, p0, Landroid/support/v7/a/f;->TD:I

    return v0

    .line 357
    :cond_0
    aget v5, v2, v1

    aget v5, v3, v5

    add-int/2addr v0, v5

    .line 358
    if-ge v0, v4, :cond_1

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 361
    :cond_1
    iget v0, p0, Landroid/support/v7/a/f;->Tz:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method final add()Landroid/support/v7/a/d;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 372
    iget-object v0, p0, Landroid/support/v7/a/f;->TH:Landroid/support/v7/a/i;

    iget-object v5, v0, Landroid/support/v7/a/i;->mColors:[I

    .line 373
    iget-object v0, p0, Landroid/support/v7/a/f;->TH:Landroid/support/v7/a/i;

    iget-object v6, v0, Landroid/support/v7/a/i;->TL:[I

    .line 379
    iget v0, p0, Landroid/support/v7/a/f;->TD:I

    move v2, v1

    move v3, v1

    move v4, v1

    :goto_0
    iget v7, p0, Landroid/support/v7/a/f;->Tz:I

    if-le v0, v7, :cond_0

    .line 389
    int-to-float v0, v4

    int-to-float v4, v1

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 390
    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 391
    int-to-float v2, v2

    int-to-float v4, v1

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 393
    new-instance v4, Landroid/support/v7/a/d;

    invoke-static {v0, v3, v2}, Landroid/support/v7/a/i;->adx(III)I

    move-result v0

    invoke-direct {v4, v0, v1}, Landroid/support/v7/a/d;-><init>(II)V

    return-object v4

    .line 380
    :cond_0
    aget v7, v5, v0

    .line 381
    aget v8, v6, v7

    .line 383
    add-int/2addr v1, v8

    .line 384
    invoke-static {v7}, Landroid/support/v7/a/i;->adt(I)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v4, v9

    .line 385
    invoke-static {v7}, Landroid/support/v7/a/i;->ado(I)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v3, v9

    .line 386
    invoke-static {v7}, Landroid/support/v7/a/i;->ady(I)I

    move-result v7

    mul-int/2addr v7, v8

    add-int/2addr v2, v7

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method final ade()Landroid/support/v7/a/f;
    .locals 5

    .prologue
    .line 297
    invoke-virtual {p0}, Landroid/support/v7/a/f;->adj()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p0}, Landroid/support/v7/a/f;->adc()I

    move-result v0

    .line 304
    new-instance v1, Landroid/support/v7/a/f;

    iget-object v2, p0, Landroid/support/v7/a/f;->TH:Landroid/support/v7/a/i;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/support/v7/a/f;->Tz:I

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v7/a/f;-><init>(Landroid/support/v7/a/i;II)V

    .line 307
    iput v0, p0, Landroid/support/v7/a/f;->Tz:I

    .line 308
    invoke-virtual {p0}, Landroid/support/v7/a/f;->adi()V

    .line 310
    return-object v1

    .line 298
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can not split a box with only 1 color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final adf()I
    .locals 4

    .prologue
    .line 317
    iget v0, p0, Landroid/support/v7/a/f;->TB:I

    iget v1, p0, Landroid/support/v7/a/f;->TE:I

    sub-int/2addr v0, v1

    .line 318
    iget v1, p0, Landroid/support/v7/a/f;->TC:I

    iget v2, p0, Landroid/support/v7/a/f;->TA:I

    sub-int/2addr v1, v2

    .line 319
    iget v2, p0, Landroid/support/v7/a/f;->TF:I

    iget v3, p0, Landroid/support/v7/a/f;->Ty:I

    sub-int/2addr v2, v3

    .line 321
    if-ge v0, v1, :cond_2

    .line 323
    :cond_0
    if-ge v1, v0, :cond_3

    .line 326
    :cond_1
    const/4 v0, -0x1

    return v0

    .line 321
    :cond_2
    if-lt v0, v2, :cond_0

    .line 322
    const/4 v0, -0x3

    return v0

    .line 323
    :cond_3
    if-lt v1, v2, :cond_1

    .line 324
    const/4 v0, -0x2

    return v0
.end method

.method final adg()I
    .locals 3

    .prologue
    .line 229
    iget v0, p0, Landroid/support/v7/a/f;->TB:I

    iget v1, p0, Landroid/support/v7/a/f;->TE:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/v7/a/f;->TC:I

    iget v2, p0, Landroid/support/v7/a/f;->TA:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/a/f;->TF:I

    iget v2, p0, Landroid/support/v7/a/f;->Ty:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    return v0
.end method

.method final adh()I
    .locals 2

    .prologue
    .line 238
    iget v0, p0, Landroid/support/v7/a/f;->Tz:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/v7/a/f;->TD:I

    sub-int/2addr v0, v1

    return v0
.end method

.method final adi()V
    .locals 13

    .prologue
    const v3, 0x7fffffff

    const/high16 v2, -0x80000000

    .line 245
    iget-object v0, p0, Landroid/support/v7/a/f;->TH:Landroid/support/v7/a/i;

    iget-object v11, v0, Landroid/support/v7/a/i;->mColors:[I

    .line 246
    iget-object v0, p0, Landroid/support/v7/a/f;->TH:Landroid/support/v7/a/i;

    iget-object v12, v0, Landroid/support/v7/a/i;->TL:[I

    .line 253
    const/4 v1, 0x0

    .line 255
    iget v0, p0, Landroid/support/v7/a/f;->TD:I

    move v4, v2

    move v5, v3

    move v6, v3

    move v7, v3

    move v3, v2

    :goto_0
    iget v8, p0, Landroid/support/v7/a/f;->Tz:I

    if-le v0, v8, :cond_0

    .line 282
    iput v5, p0, Landroid/support/v7/a/f;->TE:I

    .line 283
    iput v2, p0, Landroid/support/v7/a/f;->TB:I

    .line 284
    iput v6, p0, Landroid/support/v7/a/f;->TA:I

    .line 285
    iput v3, p0, Landroid/support/v7/a/f;->TC:I

    .line 286
    iput v7, p0, Landroid/support/v7/a/f;->Ty:I

    .line 287
    iput v4, p0, Landroid/support/v7/a/f;->TF:I

    .line 288
    iput v1, p0, Landroid/support/v7/a/f;->TG:I

    .line 289
    return-void

    .line 256
    :cond_0
    aget v8, v11, v0

    .line 257
    aget v9, v12, v8

    add-int/2addr v1, v9

    .line 259
    invoke-static {v8}, Landroid/support/v7/a/i;->adt(I)I

    move-result v10

    .line 260
    invoke-static {v8}, Landroid/support/v7/a/i;->ado(I)I

    move-result v9

    .line 261
    invoke-static {v8}, Landroid/support/v7/a/i;->ady(I)I

    move-result v8

    .line 262
    if-gt v10, v2, :cond_1

    .line 265
    :goto_1
    if-lt v10, v5, :cond_2

    .line 268
    :goto_2
    if-gt v9, v3, :cond_3

    .line 271
    :goto_3
    if-lt v9, v6, :cond_4

    .line 274
    :goto_4
    if-gt v8, v4, :cond_5

    .line 277
    :goto_5
    if-lt v8, v7, :cond_6

    .line 255
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v10

    .line 263
    goto :goto_1

    :cond_2
    move v5, v10

    .line 266
    goto :goto_2

    :cond_3
    move v3, v9

    .line 269
    goto :goto_3

    :cond_4
    move v6, v9

    .line 272
    goto :goto_4

    :cond_5
    move v4, v8

    .line 275
    goto :goto_5

    :cond_6
    move v7, v8

    .line 278
    goto :goto_6
.end method

.method final adj()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 234
    invoke-virtual {p0}, Landroid/support/v7/a/f;->adh()I

    move-result v1

    if-gt v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method
