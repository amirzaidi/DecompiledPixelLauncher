.class public Landroid/support/v4/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static VA:I

.field static Vx:I

.field static Vy:[Ljava/lang/Object;

.field static Vz:[Ljava/lang/Object;


# instance fields
.field VB:[I

.field VC:[Ljava/lang/Object;

.field mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    sget-object v0, Landroid/support/v4/a/s;->VQ:[I

    iput-object v0, p0, Landroid/support/v4/a/k;->VB:[I

    .line 237
    sget-object v0, Landroid/support/v4/a/s;->VS:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    .line 238
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/a/k;->mSize:I

    .line 239
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    if-eqz p1, :cond_0

    .line 249
    invoke-direct {p0, p1}, Landroid/support/v4/a/k;->ahf(I)V

    .line 251
    :goto_0
    iput v1, p0, Landroid/support/v4/a/k;->mSize:I

    .line 252
    return-void

    .line 246
    :cond_0
    sget-object v0, Landroid/support/v4/a/s;->VQ:[I

    iput-object v0, p0, Landroid/support/v4/a/k;->VB:[I

    .line 247
    sget-object v0, Landroid/support/v4/a/s;->VS:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private static ahd([III)I
    .locals 1

    .prologue
    .line 76
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/support/v4/a/s;->ahS([III)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 77
    :catch_0
    move-exception v0

    .line 79
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method private ahf(I)V
    .locals 4

    .prologue
    .line 164
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 178
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    .line 194
    :goto_0
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/support/v4/a/k;->VB:[I

    .line 195
    shl-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    .line 196
    return-void

    .line 165
    :cond_0
    const-class v1, Landroid/support/v4/a/t;

    const-class v0, Landroid/support/v4/a/t;

    monitor-enter v0

    .line 166
    :try_start_0
    sget-object v0, Landroid/support/v4/a/k;->Vz:[Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 177
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 167
    :cond_1
    :try_start_1
    sget-object v2, Landroid/support/v4/a/k;->Vz:[Ljava/lang/Object;

    .line 168
    iput-object v2, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    .line 169
    const/4 v0, 0x0

    aget-object v0, v2, v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Landroid/support/v4/a/k;->Vz:[Ljava/lang/Object;

    .line 170
    const/4 v0, 0x1

    aget-object v0, v2, v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Landroid/support/v4/a/k;->VB:[I

    .line 171
    const/4 v0, 0x0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 172
    sget v0, Landroid/support/v4/a/k;->VA:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/support/v4/a/k;->VA:I

    .line 175
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 179
    :cond_2
    const-class v1, Landroid/support/v4/a/t;

    const-class v0, Landroid/support/v4/a/t;

    monitor-enter v0

    .line 180
    :try_start_2
    sget-object v0, Landroid/support/v4/a/k;->Vy:[Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 191
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 181
    :cond_3
    :try_start_3
    sget-object v2, Landroid/support/v4/a/k;->Vy:[Ljava/lang/Object;

    .line 182
    iput-object v2, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    .line 183
    const/4 v0, 0x0

    aget-object v0, v2, v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Landroid/support/v4/a/k;->Vy:[Ljava/lang/Object;

    .line 184
    const/4 v0, 0x1

    aget-object v0, v2, v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Landroid/support/v4/a/k;->VB:[I

    .line 185
    const/4 v0, 0x0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 186
    sget v0, Landroid/support/v4/a/k;->Vx:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/support/v4/a/k;->Vx:I

    .line 189
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void
.end method

.method private static ahh([I[Ljava/lang/Object;I)V
    .locals 4

    .prologue
    const/16 v2, 0xa

    const/4 v3, 0x2

    .line 200
    array-length v0, p0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 214
    array-length v0, p0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    .line 229
    :goto_0
    return-void

    .line 201
    :cond_0
    const-class v1, Landroid/support/v4/a/t;

    const-class v0, Landroid/support/v4/a/t;

    monitor-enter v0

    .line 202
    :try_start_0
    sget v0, Landroid/support/v4/a/k;->VA:I

    if-lt v0, v2, :cond_1

    .line 213
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 203
    :cond_1
    :try_start_1
    sget-object v0, Landroid/support/v4/a/k;->Vz:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, p1, v2

    .line 204
    const/4 v0, 0x1

    aput-object p0, p1, v0

    .line 205
    shl-int/lit8 v0, p2, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ge v0, v3, :cond_2

    .line 208
    sput-object p1, Landroid/support/v4/a/k;->Vz:[Ljava/lang/Object;

    .line 209
    sget v0, Landroid/support/v4/a/k;->VA:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/support/v4/a/k;->VA:I

    goto :goto_1

    .line 206
    :cond_2
    const/4 v2, 0x0

    aput-object v2, p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 215
    :cond_3
    const-class v1, Landroid/support/v4/a/t;

    const-class v0, Landroid/support/v4/a/t;

    monitor-enter v0

    .line 216
    :try_start_2
    sget v0, Landroid/support/v4/a/k;->Vx:I

    if-lt v0, v2, :cond_4

    .line 227
    :goto_3
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 217
    :cond_4
    :try_start_3
    sget-object v0, Landroid/support/v4/a/k;->Vy:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, p1, v2

    .line 218
    const/4 v0, 0x1

    aput-object p0, p1, v0

    .line 219
    shl-int/lit8 v0, p2, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ge v0, v3, :cond_5

    .line 222
    sput-object p1, Landroid/support/v4/a/k;->Vy:[Ljava/lang/Object;

    .line 223
    sget v0, Landroid/support/v4/a/k;->Vx:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/support/v4/a/k;->Vx:I

    goto :goto_3

    .line 220
    :cond_5
    const/4 v2, 0x0

    aput-object v2, p1, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 219
    add-int/lit8 v0, v0, -0x1

    goto :goto_4
.end method


# virtual methods
.method ahb(Ljava/lang/Object;)I
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 324
    iget v1, p0, Landroid/support/v4/a/k;->mSize:I

    mul-int/lit8 v1, v1, 0x2

    .line 325
    iget-object v2, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    .line 326
    if-eqz p1, :cond_1

    .line 333
    :goto_0
    if-lt v0, v1, :cond_3

    .line 339
    :goto_1
    const/4 v0, -0x1

    return v0

    .line 328
    :cond_0
    aget-object v3, v2, v0

    if-eqz v3, :cond_2

    .line 327
    add-int/lit8 v0, v0, 0x2

    :cond_1
    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 329
    :cond_2
    shr-int/lit8 v0, v0, 0x1

    return v0

    .line 334
    :cond_3
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 333
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 335
    :cond_4
    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public ahc(I)Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v0, 0x8

    const/4 v2, 0x0

    .line 513
    iget-object v1, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    shl-int/lit8 v3, p1, 0x1

    add-int/lit8 v3, v3, 0x1

    aget-object v3, v1, v3

    .line 514
    iget v4, p0, Landroid/support/v4/a/k;->mSize:I

    .line 516
    const/4 v1, 0x1

    if-le v4, v1, :cond_1

    .line 524
    add-int/lit8 v1, v4, -0x1

    .line 525
    iget-object v5, p0, Landroid/support/v4/a/k;->VB:[I

    array-length v5, v5

    if-gt v5, v0, :cond_2

    .line 554
    :cond_0
    if-lt p1, v1, :cond_7

    .line 561
    :goto_0
    iget-object v0, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    shl-int/lit8 v2, v1, 0x1

    aput-object v8, v0, v2

    .line 562
    iget-object v0, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    shl-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    aput-object v8, v0, v2

    move v0, v1

    .line 565
    :goto_1
    iget v1, p0, Landroid/support/v4/a/k;->mSize:I

    if-ne v4, v1, :cond_8

    .line 568
    iput v0, p0, Landroid/support/v4/a/k;->mSize:I

    .line 569
    return-object v3

    .line 519
    :cond_1
    iget-object v0, p0, Landroid/support/v4/a/k;->VB:[I

    iget-object v1, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Landroid/support/v4/a/k;->ahh([I[Ljava/lang/Object;I)V

    .line 520
    sget-object v0, Landroid/support/v4/a/s;->VQ:[I

    iput-object v0, p0, Landroid/support/v4/a/k;->VB:[I

    .line 521
    sget-object v0, Landroid/support/v4/a/s;->VS:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    move v0, v2

    .line 522
    goto :goto_1

    .line 525
    :cond_2
    iget v5, p0, Landroid/support/v4/a/k;->mSize:I

    iget-object v6, p0, Landroid/support/v4/a/k;->VB:[I

    array-length v6, v6

    div-int/lit8 v6, v6, 0x3

    if-ge v5, v6, :cond_0

    .line 529
    if-gt v4, v0, :cond_3

    .line 533
    :goto_2
    iget-object v5, p0, Landroid/support/v4/a/k;->VB:[I

    .line 534
    iget-object v6, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    .line 535
    invoke-direct {p0, v0}, Landroid/support/v4/a/k;->ahf(I)V

    .line 537
    iget v0, p0, Landroid/support/v4/a/k;->mSize:I

    if-ne v4, v0, :cond_4

    .line 541
    if-gtz p1, :cond_5

    .line 546
    :goto_3
    if-lt p1, v1, :cond_6

    :goto_4
    move v0, v1

    .line 553
    goto :goto_1

    .line 529
    :cond_3
    shr-int/lit8 v0, v4, 0x1

    add-int/2addr v0, v4

    goto :goto_2

    .line 538
    :cond_4
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 543
    :cond_5
    iget-object v0, p0, Landroid/support/v4/a/k;->VB:[I

    invoke-static {v5, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 544
    iget-object v0, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    shl-int/lit8 v7, p1, 0x1

    invoke-static {v6, v2, v0, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 549
    :cond_6
    add-int/lit8 v0, p1, 0x1

    iget-object v2, p0, Landroid/support/v4/a/k;->VB:[I

    sub-int v7, v1, p1

    invoke-static {v5, v0, v2, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 550
    add-int/lit8 v0, p1, 0x1

    shl-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    shl-int/lit8 v5, p1, 0x1

    sub-int v7, v1, p1

    shl-int/lit8 v7, v7, 0x1

    invoke-static {v6, v0, v2, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 557
    :cond_7
    iget-object v0, p0, Landroid/support/v4/a/k;->VB:[I

    add-int/lit8 v2, p1, 0x1

    iget-object v5, p0, Landroid/support/v4/a/k;->VB:[I

    sub-int v6, v1, p1

    invoke-static {v0, v2, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 558
    iget-object v0, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    shl-int/lit8 v2, v2, 0x1

    iget-object v5, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    shl-int/lit8 v6, p1, 0x1

    sub-int v7, v1, p1

    shl-int/lit8 v7, v7, 0x1

    invoke-static {v0, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 566
    :cond_8
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public ahe(Landroid/support/v4/a/k;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 477
    iget v1, p1, Landroid/support/v4/a/k;->mSize:I

    .line 478
    iget v2, p0, Landroid/support/v4/a/k;->mSize:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Landroid/support/v4/a/k;->ahl(I)V

    .line 479
    iget v2, p0, Landroid/support/v4/a/k;->mSize:I

    if-eqz v2, :cond_1

    .line 486
    :goto_0
    if-lt v0, v1, :cond_2

    .line 490
    :cond_0
    :goto_1
    return-void

    .line 480
    :cond_1
    if-lez v1, :cond_0

    .line 481
    iget-object v2, p1, Landroid/support/v4/a/k;->VB:[I

    iget-object v3, p0, Landroid/support/v4/a/k;->VB:[I

    invoke-static {v2, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 482
    iget-object v2, p1, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 483
    iput v1, p0, Landroid/support/v4/a/k;->mSize:I

    goto :goto_1

    .line 487
    :cond_2
    invoke-virtual {p1, v0}, Landroid/support/v4/a/k;->ahj(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0}, Landroid/support/v4/a/k;->ahi(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/a/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method ahg()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 125
    iget v2, p0, Landroid/support/v4/a/k;->mSize:I

    .line 128
    if-eqz v2, :cond_2

    .line 132
    iget-object v0, p0, Landroid/support/v4/a/k;->VB:[I

    invoke-static {v0, v2, v1}, Landroid/support/v4/a/k;->ahd([III)I

    move-result v3

    .line 135
    if-ltz v3, :cond_3

    .line 140
    iget-object v0, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    shl-int/lit8 v1, v3, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    .line 146
    add-int/lit8 v0, v3, 0x1

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_5

    .line 151
    :cond_0
    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-gez v0, :cond_7

    .line 159
    :cond_1
    xor-int/lit8 v0, v1, -0x1

    return v0

    .line 129
    :cond_2
    const/4 v0, -0x1

    return v0

    .line 136
    :cond_3
    return v3

    .line 141
    :cond_4
    return v3

    .line 146
    :cond_5
    iget-object v0, p0, Landroid/support/v4/a/k;->VB:[I

    aget v0, v0, v1

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    aget-object v0, v0, v4

    if-eqz v0, :cond_6

    .line 146
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 147
    :cond_6
    return v1

    .line 151
    :cond_7
    iget-object v2, p0, Landroid/support/v4/a/k;->VB:[I

    aget v2, v2, v0

    if-nez v2, :cond_1

    .line 152
    iget-object v2, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_8

    .line 151
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 152
    :cond_8
    return v0
.end method

.method public ahi(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public ahj(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method ahk(Ljava/lang/Object;I)I
    .locals 5

    .prologue
    .line 87
    iget v2, p0, Landroid/support/v4/a/k;->mSize:I

    .line 90
    if-eqz v2, :cond_2

    .line 94
    iget-object v0, p0, Landroid/support/v4/a/k;->VB:[I

    invoke-static {v0, v2, p2}, Landroid/support/v4/a/k;->ahd([III)I

    move-result v3

    .line 97
    if-ltz v3, :cond_3

    .line 102
    iget-object v0, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    shl-int/lit8 v1, v3, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 108
    add-int/lit8 v0, v3, 0x1

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_5

    .line 113
    :cond_0
    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-gez v0, :cond_7

    .line 121
    :cond_1
    xor-int/lit8 v0, v1, -0x1

    return v0

    .line 91
    :cond_2
    const/4 v0, -0x1

    return v0

    .line 98
    :cond_3
    return v3

    .line 103
    :cond_4
    return v3

    .line 108
    :cond_5
    iget-object v0, p0, Landroid/support/v4/a/k;->VB:[I

    aget v0, v0, v1

    if-ne v0, p2, :cond_0

    .line 109
    iget-object v0, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    aget-object v0, v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 108
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 109
    :cond_6
    return v1

    .line 113
    :cond_7
    iget-object v2, p0, Landroid/support/v4/a/k;->VB:[I

    aget v2, v2, v0

    if-ne v2, p2, :cond_1

    .line 114
    iget-object v2, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 113
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 114
    :cond_8
    return v0
.end method

.method public ahl(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 287
    iget v0, p0, Landroid/support/v4/a/k;->mSize:I

    .line 288
    iget-object v1, p0, Landroid/support/v4/a/k;->VB:[I

    array-length v1, v1

    if-lt v1, p1, :cond_0

    .line 298
    :goto_0
    iget v1, p0, Landroid/support/v4/a/k;->mSize:I

    if-ne v1, v0, :cond_2

    .line 301
    return-void

    .line 289
    :cond_0
    iget-object v1, p0, Landroid/support/v4/a/k;->VB:[I

    .line 290
    iget-object v2, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    .line 291
    invoke-direct {p0, p1}, Landroid/support/v4/a/k;->ahf(I)V

    .line 292
    iget v3, p0, Landroid/support/v4/a/k;->mSize:I

    if-gtz v3, :cond_1

    .line 296
    :goto_1
    invoke-static {v1, v2, v0}, Landroid/support/v4/a/k;->ahh([I[Ljava/lang/Object;I)V

    goto :goto_0

    .line 293
    :cond_1
    iget-object v3, p0, Landroid/support/v4/a/k;->VB:[I

    invoke-static {v1, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    iget-object v3, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    shl-int/lit8 v4, v0, 0x1

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 299
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public ahm(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 320
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/a/k;->ahk(Ljava/lang/Object;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/a/k;->ahg()I

    move-result v0

    goto :goto_0
.end method

.method public ahn(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 389
    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 390
    iget-object v1, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 391
    iget-object v2, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    aput-object p2, v2, v0

    .line 392
    return-object v1
.end method

.method public clear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 268
    iget v0, p0, Landroid/support/v4/a/k;->mSize:I

    if-gtz v0, :cond_0

    .line 277
    :goto_0
    iget v0, p0, Landroid/support/v4/a/k;->mSize:I

    if-gtz v0, :cond_1

    .line 280
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/k;->VB:[I

    .line 270
    iget-object v1, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    .line 271
    iget v2, p0, Landroid/support/v4/a/k;->mSize:I

    .line 272
    sget-object v3, Landroid/support/v4/a/s;->VQ:[I

    iput-object v3, p0, Landroid/support/v4/a/k;->VB:[I

    .line 273
    sget-object v3, Landroid/support/v4/a/s;->VS:[Ljava/lang/Object;

    iput-object v3, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    .line 274
    iput v4, p0, Landroid/support/v4/a/k;->mSize:I

    .line 275
    invoke-static {v0, v1, v2}, Landroid/support/v4/a/k;->ahh([I[Ljava/lang/Object;I)V

    goto :goto_0

    .line 278
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 310
    invoke-virtual {p0, p1}, Landroid/support/v4/a/k;->ahm(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 350
    invoke-virtual {p0, p1}, Landroid/support/v4/a/k;->ahb(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 589
    if-eq p0, p1, :cond_0

    .line 592
    instance-of v0, p1, Landroid/support/v4/a/k;

    if-nez v0, :cond_1

    .line 617
    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_8

    .line 643
    return v1

    .line 590
    :cond_0
    return v5

    .line 593
    :cond_1
    check-cast p1, Landroid/support/v4/a/k;

    .line 594
    invoke-virtual {p0}, Landroid/support/v4/a/k;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/a/k;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    move v0, v1

    .line 599
    :goto_0
    :try_start_0
    iget v2, p0, Landroid/support/v4/a/k;->mSize:I

    if-lt v0, v2, :cond_3

    .line 616
    return v5

    .line 595
    :cond_2
    return v1

    .line 600
    :cond_3
    invoke-virtual {p0, v0}, Landroid/support/v4/a/k;->ahj(I)Ljava/lang/Object;

    move-result-object v2

    .line 601
    invoke-virtual {p0, v0}, Landroid/support/v4/a/k;->ahi(I)Ljava/lang/Object;

    move-result-object v3

    .line 602
    invoke-virtual {p1, v2}, Landroid/support/v4/a/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 603
    if-eqz v3, :cond_4

    .line 607
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 599
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 604
    :cond_4
    if-eqz v4, :cond_6

    .line 605
    :cond_5
    return v1

    .line 604
    :cond_6
    invoke-virtual {p1, v2}, Landroid/support/v4/a/k;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 608
    :cond_7
    return v1

    .line 611
    :catch_0
    move-exception v0

    .line 612
    return v1

    .line 613
    :catch_1
    move-exception v0

    .line 614
    return v1

    .line 618
    :cond_8
    check-cast p1, Ljava/util/Map;

    .line 619
    invoke-virtual {p0}, Landroid/support/v4/a/k;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v0, v2, :cond_9

    move v0, v1

    .line 624
    :goto_2
    :try_start_1
    iget v2, p0, Landroid/support/v4/a/k;->mSize:I

    if-lt v0, v2, :cond_a

    .line 641
    return v5

    .line 620
    :cond_9
    return v1

    .line 625
    :cond_a
    invoke-virtual {p0, v0}, Landroid/support/v4/a/k;->ahj(I)Ljava/lang/Object;

    move-result-object v2

    .line 626
    invoke-virtual {p0, v0}, Landroid/support/v4/a/k;->ahi(I)Ljava/lang/Object;

    move-result-object v3

    .line 627
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 628
    if-eqz v3, :cond_b

    .line 632
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 624
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 629
    :cond_b
    if-eqz v4, :cond_d

    .line 630
    :cond_c
    return v1

    .line 629
    :cond_d
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_3

    .line 633
    :cond_e
    return v1

    .line 636
    :catch_2
    move-exception v0

    .line 637
    return v1

    .line 638
    :catch_3
    move-exception v0

    .line 639
    return v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 360
    invoke-virtual {p0, p1}, Landroid/support/v4/a/k;->ahm(Ljava/lang/Object;)I

    move-result v0

    .line 361
    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 651
    iget-object v5, p0, Landroid/support/v4/a/k;->VB:[I

    .line 652
    iget-object v6, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    .line 654
    const/4 v0, 0x1

    iget v7, p0, Landroid/support/v4/a/k;->mSize:I

    move v2, v0

    move v3, v1

    move v4, v1

    :goto_0
    if-lt v3, v7, :cond_0

    .line 658
    return v4

    .line 655
    :cond_0
    aget-object v0, v6, v2

    .line 656
    aget v8, v5, v3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    xor-int/2addr v0, v8

    add-int/2addr v4, v0

    .line 654
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 656
    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 399
    iget v1, p0, Landroid/support/v4/a/k;->mSize:I

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v1, 0x8

    const/4 v0, 0x4

    const/4 v4, 0x0

    .line 411
    iget v5, p0, Landroid/support/v4/a/k;->mSize:I

    .line 414
    if-eqz p1, :cond_1

    .line 418
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 419
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/a/k;->ahk(Ljava/lang/Object;I)I

    move-result v2

    .line 421
    :goto_0
    if-gez v2, :cond_2

    .line 428
    xor-int/lit8 v2, v2, -0x1

    .line 429
    iget-object v6, p0, Landroid/support/v4/a/k;->VB:[I

    array-length v6, v6

    if-ge v5, v6, :cond_3

    .line 452
    :goto_1
    if-lt v2, v5, :cond_8

    .line 460
    :goto_2
    iget v0, p0, Landroid/support/v4/a/k;->mSize:I

    if-eq v5, v0, :cond_9

    .line 461
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 416
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/a/k;->ahg()I

    move-result v2

    move v3, v4

    goto :goto_0

    .line 422
    :cond_2
    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 423
    iget-object v1, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 424
    iget-object v2, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    aput-object p2, v2, v0

    .line 425
    return-object v1

    .line 430
    :cond_3
    if-ge v5, v1, :cond_4

    if-ge v5, v0, :cond_5

    .line 435
    :goto_3
    iget-object v1, p0, Landroid/support/v4/a/k;->VB:[I

    .line 436
    iget-object v6, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    .line 437
    invoke-direct {p0, v0}, Landroid/support/v4/a/k;->ahf(I)V

    .line 439
    iget v0, p0, Landroid/support/v4/a/k;->mSize:I

    if-ne v5, v0, :cond_6

    .line 443
    iget-object v0, p0, Landroid/support/v4/a/k;->VB:[I

    array-length v0, v0

    if-gtz v0, :cond_7

    .line 449
    :goto_4
    invoke-static {v1, v6, v5}, Landroid/support/v4/a/k;->ahh([I[Ljava/lang/Object;I)V

    goto :goto_1

    .line 430
    :cond_4
    shr-int/lit8 v0, v5, 0x1

    add-int/2addr v0, v5

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_3

    .line 440
    :cond_6
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 445
    :cond_7
    iget-object v0, p0, Landroid/support/v4/a/k;->VB:[I

    array-length v7, v1

    invoke-static {v1, v4, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 446
    iget-object v0, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    array-length v7, v6

    invoke-static {v6, v4, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 455
    :cond_8
    iget-object v0, p0, Landroid/support/v4/a/k;->VB:[I

    iget-object v1, p0, Landroid/support/v4/a/k;->VB:[I

    add-int/lit8 v4, v2, 0x1

    sub-int v6, v5, v2

    invoke-static {v0, v2, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 456
    iget-object v0, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    shl-int/lit8 v1, v2, 0x1

    iget-object v4, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    add-int/lit8 v6, v2, 0x1

    shl-int/lit8 v6, v6, 0x1

    iget v7, p0, Landroid/support/v4/a/k;->mSize:I

    sub-int/2addr v7, v2

    shl-int/lit8 v7, v7, 0x1

    invoke-static {v0, v1, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 460
    :cond_9
    iget-object v0, p0, Landroid/support/v4/a/k;->VB:[I

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 465
    iget-object v0, p0, Landroid/support/v4/a/k;->VB:[I

    aput v3, v0, v2

    .line 466
    iget-object v0, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    shl-int/lit8 v1, v2, 0x1

    aput-object p1, v0, v1

    .line 467
    iget-object v0, p0, Landroid/support/v4/a/k;->VC:[Ljava/lang/Object;

    shl-int/lit8 v1, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    .line 468
    iget v0, p0, Landroid/support/v4/a/k;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/a/k;->mSize:I

    .line 469
    return-object v8
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 499
    invoke-virtual {p0, p1}, Landroid/support/v4/a/k;->ahm(Ljava/lang/Object;)I

    move-result v0

    .line 500
    if-gez v0, :cond_0

    .line 504
    const/4 v0, 0x0

    return-object v0

    .line 501
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v4/a/k;->ahc(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 576
    iget v0, p0, Landroid/support/v4/a/k;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 670
    invoke-virtual {p0}, Landroid/support/v4/a/k;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v4/a/k;->mSize:I

    mul-int/lit8 v2, v2, 0x1c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 675
    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 676
    :goto_0
    iget v2, p0, Landroid/support/v4/a/k;->mSize:I

    if-lt v0, v2, :cond_1

    .line 694
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 695
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 671
    :cond_0
    const-string/jumbo v0, "{}"

    return-object v0

    .line 677
    :cond_1
    if-gtz v0, :cond_2

    .line 680
    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v4/a/k;->ahj(I)Ljava/lang/Object;

    move-result-object v2

    .line 681
    if-ne v2, p0, :cond_3

    .line 684
    const-string/jumbo v2, "(this Map)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    :goto_2
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 687
    invoke-virtual {p0, v0}, Landroid/support/v4/a/k;->ahi(I)Ljava/lang/Object;

    move-result-object v2

    .line 688
    if-ne v2, p0, :cond_4

    .line 691
    const-string/jumbo v2, "(this Map)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 678
    :cond_2
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 682
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 689
    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method
