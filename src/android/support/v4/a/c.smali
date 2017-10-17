.class public final Landroid/support/v4/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# static fields
.field static WJ:[Ljava/lang/Object;

.field static WK:I

.field static WL:I

.field private static final WN:[Ljava/lang/Object;

.field private static final WR:[I

.field static WS:[Ljava/lang/Object;


# instance fields
.field WM:Landroid/support/v4/a/l;

.field WO:[I

.field final WP:Z

.field WQ:[Ljava/lang/Object;

.field mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    new-array v0, v1, [I

    sput-object v0, Landroid/support/v4/a/c;->WR:[I

    .line 53
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Landroid/support/v4/a/c;->WN:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 241
    invoke-direct {p0, v0, v0}, Landroid/support/v4/a/c;-><init>(IZ)V

    .line 242
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-boolean p2, p0, Landroid/support/v4/a/c;->WP:Z

    .line 254
    if-eqz p1, :cond_0

    .line 258
    invoke-direct {p0, p1}, Landroid/support/v4/a/c;->aig(I)V

    .line 260
    :goto_0
    iput v1, p0, Landroid/support/v4/a/c;->mSize:I

    .line 261
    return-void

    .line 255
    :cond_0
    sget-object v0, Landroid/support/v4/a/c;->WR:[I

    iput-object v0, p0, Landroid/support/v4/a/c;->WO:[I

    .line 256
    sget-object v0, Landroid/support/v4/a/c;->WN:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private aig(I)V
    .locals 4

    .prologue
    .line 161
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 177
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    .line 195
    :goto_0
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/support/v4/a/c;->WO:[I

    .line 196
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    .line 197
    return-void

    .line 162
    :cond_0
    const-class v1, Landroid/support/v4/a/c;

    const-class v0, Landroid/support/v4/a/c;

    monitor-enter v0

    .line 163
    :try_start_0
    sget-object v0, Landroid/support/v4/a/c;->WS:[Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 176
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 164
    :cond_1
    :try_start_1
    sget-object v2, Landroid/support/v4/a/c;->WS:[Ljava/lang/Object;

    .line 165
    iput-object v2, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    .line 166
    const/4 v0, 0x0

    aget-object v0, v2, v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Landroid/support/v4/a/c;->WS:[Ljava/lang/Object;

    .line 167
    const/4 v0, 0x1

    aget-object v0, v2, v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Landroid/support/v4/a/c;->WO:[I

    .line 168
    const/4 v0, 0x0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 169
    sget v0, Landroid/support/v4/a/c;->WL:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/support/v4/a/c;->WL:I

    .line 174
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 178
    :cond_2
    const-class v1, Landroid/support/v4/a/c;

    const-class v0, Landroid/support/v4/a/c;

    monitor-enter v0

    .line 179
    :try_start_2
    sget-object v0, Landroid/support/v4/a/c;->WJ:[Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 192
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 180
    :cond_3
    :try_start_3
    sget-object v2, Landroid/support/v4/a/c;->WJ:[Ljava/lang/Object;

    .line 181
    iput-object v2, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    .line 182
    const/4 v0, 0x0

    aget-object v0, v2, v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Landroid/support/v4/a/c;->WJ:[Ljava/lang/Object;

    .line 183
    const/4 v0, 0x1

    aget-object v0, v2, v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Landroid/support/v4/a/c;->WO:[I

    .line 184
    const/4 v0, 0x0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 185
    sget v0, Landroid/support/v4/a/c;->WK:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/support/v4/a/c;->WK:I

    .line 190
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void
.end method

.method private static aih([I[Ljava/lang/Object;I)V
    .locals 4

    .prologue
    const/16 v2, 0xa

    const/4 v3, 0x2

    .line 201
    array-length v0, p0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 217
    array-length v0, p0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    .line 234
    :goto_0
    return-void

    .line 202
    :cond_0
    const-class v1, Landroid/support/v4/a/c;

    const-class v0, Landroid/support/v4/a/c;

    monitor-enter v0

    .line 203
    :try_start_0
    sget v0, Landroid/support/v4/a/c;->WL:I

    if-lt v0, v2, :cond_1

    .line 216
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 204
    :cond_1
    :try_start_1
    sget-object v0, Landroid/support/v4/a/c;->WS:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, p1, v2

    .line 205
    const/4 v0, 0x1

    aput-object p0, p1, v0

    .line 206
    add-int/lit8 v0, p2, -0x1

    :goto_2
    if-ge v0, v3, :cond_2

    .line 209
    sput-object p1, Landroid/support/v4/a/c;->WS:[Ljava/lang/Object;

    .line 210
    sget v0, Landroid/support/v4/a/c;->WL:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/support/v4/a/c;->WL:I

    goto :goto_1

    .line 207
    :cond_2
    const/4 v2, 0x0

    aput-object v2, p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 218
    :cond_3
    const-class v1, Landroid/support/v4/a/c;

    const-class v0, Landroid/support/v4/a/c;

    monitor-enter v0

    .line 219
    :try_start_2
    sget v0, Landroid/support/v4/a/c;->WK:I

    if-lt v0, v2, :cond_4

    .line 232
    :goto_3
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 220
    :cond_4
    :try_start_3
    sget-object v0, Landroid/support/v4/a/c;->WJ:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, p1, v2

    .line 221
    const/4 v0, 0x1

    aput-object p0, p1, v0

    .line 222
    add-int/lit8 v0, p2, -0x1

    :goto_4
    if-ge v0, v3, :cond_5

    .line 225
    sput-object p1, Landroid/support/v4/a/c;->WJ:[Ljava/lang/Object;

    .line 226
    sget v0, Landroid/support/v4/a/c;->WK:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/support/v4/a/c;->WK:I

    goto :goto_3

    .line 223
    :cond_5
    const/4 v2, 0x0

    aput-object v2, p1, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 222
    add-int/lit8 v0, v0, -0x1

    goto :goto_4
.end method

.method private aii(Ljava/lang/Object;I)I
    .locals 4

    .prologue
    .line 84
    iget v2, p0, Landroid/support/v4/a/c;->mSize:I

    .line 87
    if-eqz v2, :cond_2

    .line 91
    iget-object v0, p0, Landroid/support/v4/a/c;->WO:[I

    invoke-static {v0, v2, p2}, Landroid/support/v4/a/s;->ajc([III)I

    move-result v3

    .line 94
    if-ltz v3, :cond_3

    .line 99
    iget-object v0, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 105
    add-int/lit8 v0, v3, 0x1

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_5

    .line 110
    :cond_0
    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-gez v0, :cond_7

    .line 118
    :cond_1
    xor-int/lit8 v0, v1, -0x1

    return v0

    .line 88
    :cond_2
    const/4 v0, -0x1

    return v0

    .line 95
    :cond_3
    return v3

    .line 100
    :cond_4
    return v3

    .line 105
    :cond_5
    iget-object v0, p0, Landroid/support/v4/a/c;->WO:[I

    aget v0, v0, v1

    if-ne v0, p2, :cond_0

    .line 106
    iget-object v0, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 105
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 106
    :cond_6
    return v1

    .line 110
    :cond_7
    iget-object v2, p0, Landroid/support/v4/a/c;->WO:[I

    aget v2, v2, v0

    if-ne v2, p2, :cond_1

    .line 111
    iget-object v2, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 110
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 111
    :cond_8
    return v0
.end method

.method private aij()Landroid/support/v4/a/l;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Landroid/support/v4/a/c;->WM:Landroid/support/v4/a/l;

    if-eqz v0, :cond_0

    .line 713
    :goto_0
    iget-object v0, p0, Landroid/support/v4/a/c;->WM:Landroid/support/v4/a/l;

    return-object v0

    .line 666
    :cond_0
    new-instance v0, Landroid/support/v4/a/r;

    invoke-direct {v0, p0}, Landroid/support/v4/a/r;-><init>(Landroid/support/v4/a/c;)V

    iput-object v0, p0, Landroid/support/v4/a/c;->WM:Landroid/support/v4/a/l;

    goto :goto_0
.end method

.method private ail()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 122
    iget v2, p0, Landroid/support/v4/a/c;->mSize:I

    .line 125
    if-eqz v2, :cond_2

    .line 129
    iget-object v0, p0, Landroid/support/v4/a/c;->WO:[I

    invoke-static {v0, v2, v1}, Landroid/support/v4/a/s;->ajc([III)I

    move-result v3

    .line 132
    if-ltz v3, :cond_3

    .line 137
    iget-object v0, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    aget-object v0, v0, v3

    if-eqz v0, :cond_4

    .line 143
    add-int/lit8 v0, v3, 0x1

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_5

    .line 148
    :cond_0
    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-gez v0, :cond_7

    .line 156
    :cond_1
    xor-int/lit8 v0, v1, -0x1

    return v0

    .line 126
    :cond_2
    const/4 v0, -0x1

    return v0

    .line 133
    :cond_3
    return v3

    .line 138
    :cond_4
    return v3

    .line 143
    :cond_5
    iget-object v0, p0, Landroid/support/v4/a/c;->WO:[I

    aget v0, v0, v1

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    .line 143
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 144
    :cond_6
    return v1

    .line 148
    :cond_7
    iget-object v2, p0, Landroid/support/v4/a/c;->WO:[I

    aget v2, v2, v0

    if-nez v2, :cond_1

    .line 149
    iget-object v2, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-eqz v2, :cond_8

    .line 148
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 149
    :cond_8
    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x4

    const/4 v4, 0x0

    .line 363
    if-eqz p1, :cond_0

    .line 367
    iget-boolean v0, p0, Landroid/support/v4/a/c;->WP:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 368
    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/support/v4/a/c;->aii(Ljava/lang/Object;I)I

    move-result v3

    move v7, v3

    move v3, v0

    move v0, v7

    .line 370
    :goto_1
    if-gez v0, :cond_2

    .line 374
    xor-int/lit8 v5, v0, -0x1

    .line 375
    iget v0, p0, Landroid/support/v4/a/c;->mSize:I

    iget-object v6, p0, Landroid/support/v4/a/c;->WO:[I

    array-length v6, v6

    if-ge v0, v6, :cond_3

    .line 394
    :goto_2
    iget v0, p0, Landroid/support/v4/a/c;->mSize:I

    if-lt v5, v0, :cond_7

    .line 402
    :goto_3
    iget-object v0, p0, Landroid/support/v4/a/c;->WO:[I

    aput v3, v0, v5

    .line 403
    iget-object v0, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    aput-object p1, v0, v5

    .line 404
    iget v0, p0, Landroid/support/v4/a/c;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/a/c;->mSize:I

    .line 405
    const/4 v0, 0x1

    return v0

    .line 365
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/a/c;->ail()I

    move-result v0

    move v3, v4

    goto :goto_1

    .line 367
    :cond_1
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 371
    :cond_2
    return v4

    .line 376
    :cond_3
    iget v0, p0, Landroid/support/v4/a/c;->mSize:I

    if-ge v0, v2, :cond_4

    iget v0, p0, Landroid/support/v4/a/c;->mSize:I

    if-ge v0, v1, :cond_5

    move v0, v1

    .line 381
    :goto_4
    iget-object v1, p0, Landroid/support/v4/a/c;->WO:[I

    .line 382
    iget-object v2, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    .line 383
    invoke-direct {p0, v0}, Landroid/support/v4/a/c;->aig(I)V

    .line 385
    iget-object v0, p0, Landroid/support/v4/a/c;->WO:[I

    array-length v0, v0

    if-gtz v0, :cond_6

    .line 391
    :goto_5
    iget v0, p0, Landroid/support/v4/a/c;->mSize:I

    invoke-static {v1, v2, v0}, Landroid/support/v4/a/c;->aih([I[Ljava/lang/Object;I)V

    goto :goto_2

    .line 376
    :cond_4
    iget v0, p0, Landroid/support/v4/a/c;->mSize:I

    iget v1, p0, Landroid/support/v4/a/c;->mSize:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_4

    .line 387
    :cond_6
    iget-object v0, p0, Landroid/support/v4/a/c;->WO:[I

    array-length v6, v1

    invoke-static {v1, v4, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    iget-object v0, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    array-length v6, v2

    invoke-static {v2, v4, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 398
    :cond_7
    iget-object v0, p0, Landroid/support/v4/a/c;->WO:[I

    iget-object v1, p0, Landroid/support/v4/a/c;->WO:[I

    add-int/lit8 v2, v5, 0x1

    iget v4, p0, Landroid/support/v4/a/c;->mSize:I

    sub-int/2addr v4, v5

    invoke-static {v0, v5, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    iget-object v0, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    add-int/lit8 v2, v5, 0x1

    iget v4, p0, Landroid/support/v4/a/c;->mSize:I

    sub-int/2addr v4, v5

    invoke-static {v0, v5, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 751
    iget v1, p0, Landroid/support/v4/a/c;->mSize:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/support/v4/a/c;->ain(I)V

    .line 753
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 756
    return v0

    .line 753
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 754
    invoke-virtual {p0, v2}, Landroid/support/v4/a/c;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_0
.end method

.method public aik(I)Ljava/lang/Object;
    .locals 6

    .prologue
    const/16 v0, 0x8

    const/4 v4, 0x0

    .line 480
    iget-object v1, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    aget-object v1, v1, p1

    .line 481
    iget v2, p0, Landroid/support/v4/a/c;->mSize:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 489
    iget-object v2, p0, Landroid/support/v4/a/c;->WO:[I

    array-length v2, v2

    if-gt v2, v0, :cond_3

    .line 516
    :cond_0
    iget v0, p0, Landroid/support/v4/a/c;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/a/c;->mSize:I

    .line 517
    iget v0, p0, Landroid/support/v4/a/c;->mSize:I

    if-lt p1, v0, :cond_6

    .line 524
    :goto_0
    iget-object v0, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/a/c;->mSize:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 527
    :cond_1
    :goto_1
    return-object v1

    .line 484
    :cond_2
    iget-object v0, p0, Landroid/support/v4/a/c;->WO:[I

    iget-object v2, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    iget v3, p0, Landroid/support/v4/a/c;->mSize:I

    invoke-static {v0, v2, v3}, Landroid/support/v4/a/c;->aih([I[Ljava/lang/Object;I)V

    .line 485
    sget-object v0, Landroid/support/v4/a/c;->WR:[I

    iput-object v0, p0, Landroid/support/v4/a/c;->WO:[I

    .line 486
    sget-object v0, Landroid/support/v4/a/c;->WN:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    .line 487
    iput v4, p0, Landroid/support/v4/a/c;->mSize:I

    goto :goto_1

    .line 489
    :cond_3
    iget v2, p0, Landroid/support/v4/a/c;->mSize:I

    iget-object v3, p0, Landroid/support/v4/a/c;->WO:[I

    array-length v3, v3

    div-int/lit8 v3, v3, 0x3

    if-ge v2, v3, :cond_0

    .line 493
    iget v2, p0, Landroid/support/v4/a/c;->mSize:I

    if-gt v2, v0, :cond_4

    .line 497
    :goto_2
    iget-object v2, p0, Landroid/support/v4/a/c;->WO:[I

    .line 498
    iget-object v3, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    .line 499
    invoke-direct {p0, v0}, Landroid/support/v4/a/c;->aig(I)V

    .line 501
    iget v0, p0, Landroid/support/v4/a/c;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/a/c;->mSize:I

    .line 502
    if-gtz p1, :cond_5

    .line 507
    :goto_3
    iget v0, p0, Landroid/support/v4/a/c;->mSize:I

    if-ge p1, v0, :cond_1

    .line 512
    add-int/lit8 v0, p1, 0x1

    iget-object v4, p0, Landroid/support/v4/a/c;->WO:[I

    iget v5, p0, Landroid/support/v4/a/c;->mSize:I

    sub-int/2addr v5, p1

    invoke-static {v2, v0, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 513
    add-int/lit8 v0, p1, 0x1

    iget-object v2, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    iget v4, p0, Landroid/support/v4/a/c;->mSize:I

    sub-int/2addr v4, p1

    invoke-static {v3, v0, v2, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 493
    :cond_4
    iget v0, p0, Landroid/support/v4/a/c;->mSize:I

    iget v2, p0, Landroid/support/v4/a/c;->mSize:I

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto :goto_2

    .line 504
    :cond_5
    iget-object v0, p0, Landroid/support/v4/a/c;->WO:[I

    invoke-static {v2, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    iget-object v0, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    invoke-static {v3, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 521
    :cond_6
    iget-object v0, p0, Landroid/support/v4/a/c;->WO:[I

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Landroid/support/v4/a/c;->WO:[I

    iget v4, p0, Landroid/support/v4/a/c;->mSize:I

    sub-int/2addr v4, p1

    invoke-static {v0, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 522
    iget-object v0, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    iget v4, p0, Landroid/support/v4/a/c;->mSize:I

    sub-int/2addr v4, p1

    invoke-static {v0, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public aim(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public ain(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 299
    iget-object v0, p0, Landroid/support/v4/a/c;->WO:[I

    array-length v0, v0

    if-lt v0, p1, :cond_0

    .line 309
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/c;->WO:[I

    .line 301
    iget-object v1, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    .line 302
    invoke-direct {p0, p1}, Landroid/support/v4/a/c;->aig(I)V

    .line 303
    iget v2, p0, Landroid/support/v4/a/c;->mSize:I

    if-gtz v2, :cond_1

    .line 307
    :goto_1
    iget v2, p0, Landroid/support/v4/a/c;->mSize:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/a/c;->aih([I[Ljava/lang/Object;I)V

    goto :goto_0

    .line 304
    :cond_1
    iget-object v2, p0, Landroid/support/v4/a/c;->WO:[I

    iget v3, p0, Landroid/support/v4/a/c;->mSize:I

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    iget-object v2, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    iget v3, p0, Landroid/support/v4/a/c;->mSize:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public aio(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 329
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/a/c;->WP:Z

    if-nez v0, :cond_1

    .line 330
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/support/v4/a/c;->aii(Ljava/lang/Object;I)I

    move-result v0

    :goto_1
    return v0

    .line 329
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/a/c;->ail()I

    move-result v0

    goto :goto_1

    .line 330
    :cond_1
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 286
    iget v0, p0, Landroid/support/v4/a/c;->mSize:I

    if-nez v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/c;->WO:[I

    iget-object v1, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/a/c;->mSize:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/a/c;->aih([I[Ljava/lang/Object;I)V

    .line 288
    sget-object v0, Landroid/support/v4/a/c;->WR:[I

    iput-object v0, p0, Landroid/support/v4/a/c;->WO:[I

    .line 289
    sget-object v0, Landroid/support/v4/a/c;->WN:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    .line 290
    iput v3, p0, Landroid/support/v4/a/c;->mSize:I

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 319
    invoke-virtual {p0, p1}, Landroid/support/v4/a/c;->aio(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 736
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 737
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 742
    const/4 v0, 0x1

    return v0

    .line 738
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v4/a/c;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 739
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 590
    if-eq p0, p1, :cond_0

    .line 593
    instance-of v0, p1, Ljava/util/Set;

    if-nez v0, :cond_1

    .line 613
    return v1

    .line 591
    :cond_0
    return v3

    .line 594
    :cond_1
    check-cast p1, Ljava/util/Set;

    .line 595
    invoke-virtual {p0}, Landroid/support/v4/a/c;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    move v0, v1

    .line 600
    :goto_0
    :try_start_0
    iget v2, p0, Landroid/support/v4/a/c;->mSize:I

    if-lt v0, v2, :cond_3

    .line 611
    return v3

    .line 596
    :cond_2
    return v1

    .line 601
    :cond_3
    invoke-virtual {p0, v0}, Landroid/support/v4/a/c;->aim(I)Ljava/lang/Object;

    move-result-object v2

    .line 602
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_4

    .line 600
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 603
    :cond_4
    return v1

    .line 606
    :catch_0
    move-exception v0

    .line 607
    return v1

    .line 608
    :catch_1
    move-exception v0

    .line 609
    return v1
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 621
    iget-object v2, p0, Landroid/support/v4/a/c;->WO:[I

    .line 623
    iget v3, p0, Landroid/support/v4/a/c;->mSize:I

    move v1, v0

    :goto_0
    if-lt v0, v3, :cond_0

    .line 626
    return v1

    .line 624
    :cond_0
    aget v4, v2, v0

    add-int/2addr v1, v4

    .line 623
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 347
    iget v1, p0, Landroid/support/v4/a/c;->mSize:I

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 725
    invoke-direct {p0}, Landroid/support/v4/a/c;->aij()Landroid/support/v4/a/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/l;->aiE()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 466
    invoke-virtual {p0, p1}, Landroid/support/v4/a/c;->aio(Ljava/lang/Object;)I

    move-result v0

    .line 467
    if-gez v0, :cond_0

    .line 471
    return v1

    .line 468
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v4/a/c;->aik(I)Ljava/lang/Object;

    .line 469
    const/4 v0, 0x1

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 767
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 770
    return v0

    .line 767
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 768
    invoke-virtual {p0, v2}, Landroid/support/v4/a/c;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 782
    iget v0, p0, Landroid/support/v4/a/c;->mSize:I

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v0, v1

    move v1, v3

    :goto_0
    if-gez v1, :cond_0

    .line 788
    return v0

    .line 783
    :cond_0
    iget-object v2, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 782
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 784
    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/v4/a/c;->aik(I)Ljava/lang/Object;

    .line 785
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 555
    iget v0, p0, Landroid/support/v4/a/c;->mSize:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 560
    iget v0, p0, Landroid/support/v4/a/c;->mSize:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 561
    iget-object v1, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/a/c;->mSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 562
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 567
    array-length v0, p1

    iget v1, p0, Landroid/support/v4/a/c;->mSize:I

    if-lt v0, v1, :cond_0

    .line 572
    :goto_0
    iget-object v0, p0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/a/c;->mSize:I

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 573
    array-length v0, p1

    iget v1, p0, Landroid/support/v4/a/c;->mSize:I

    if-gt v0, v1, :cond_1

    .line 576
    :goto_1
    return-object p1

    .line 569
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/a/c;->mSize:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    .line 570
    goto :goto_0

    .line 574
    :cond_1
    iget v0, p0, Landroid/support/v4/a/c;->mSize:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 638
    invoke-virtual {p0}, Landroid/support/v4/a/c;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v4/a/c;->mSize:I

    mul-int/lit8 v2, v2, 0xe

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 643
    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 644
    :goto_0
    iget v2, p0, Landroid/support/v4/a/c;->mSize:I

    if-lt v0, v2, :cond_1

    .line 655
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 639
    :cond_0
    const-string/jumbo v0, "{}"

    return-object v0

    .line 645
    :cond_1
    if-gtz v0, :cond_2

    .line 648
    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v4/a/c;->aim(I)Ljava/lang/Object;

    move-result-object v2

    .line 649
    if-ne v2, p0, :cond_3

    .line 652
    const-string/jumbo v2, "(this Set)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 646
    :cond_2
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 650
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
