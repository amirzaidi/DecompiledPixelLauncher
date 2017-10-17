.class public Landroid/support/v4/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final UQ:Ljava/lang/Object;


# instance fields
.field private UR:[I

.field private US:[Ljava/lang/Object;

.field private UT:Z

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/a/a;->UQ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/support/v4/a/a;-><init>(I)V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v2, p0, Landroid/support/v4/a/a;->UT:Z

    .line 46
    if-eqz p1, :cond_0

    .line 50
    invoke-static {p1}, Landroid/support/v4/a/s;->ahO(I)I

    move-result v0

    .line 51
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v4/a/a;->UR:[I

    .line 52
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/a/a;->US:[Ljava/lang/Object;

    .line 54
    :goto_0
    iput v2, p0, Landroid/support/v4/a/a;->mSize:I

    .line 55
    return-void

    .line 47
    :cond_0
    sget-object v0, Landroid/support/v4/a/s;->VQ:[I

    iput-object v0, p0, Landroid/support/v4/a/a;->UR:[I

    .line 48
    sget-object v0, Landroid/support/v4/a/s;->VS:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/a/a;->US:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private agA()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 141
    iget v3, p0, Landroid/support/v4/a/a;->mSize:I

    .line 143
    iget-object v4, p0, Landroid/support/v4/a/a;->UR:[I

    .line 144
    iget-object v5, p0, Landroid/support/v4/a/a;->US:[Ljava/lang/Object;

    move v1, v2

    move v0, v2

    .line 146
    :goto_0
    if-lt v1, v3, :cond_0

    .line 160
    iput-boolean v2, p0, Landroid/support/v4/a/a;->UT:Z

    .line 161
    iput v0, p0, Landroid/support/v4/a/a;->mSize:I

    .line 164
    return-void

    .line 147
    :cond_0
    aget-object v6, v5, v1

    .line 149
    sget-object v7, Landroid/support/v4/a/a;->UQ:Ljava/lang/Object;

    if-ne v6, v7, :cond_1

    .line 146
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_1
    if-ne v1, v0, :cond_2

    .line 156
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 151
    :cond_2
    aget v7, v4, v1

    aput v7, v4, v0

    .line 152
    aput-object v6, v5, v0

    .line 153
    const/4 v6, 0x0

    aput-object v6, v5, v1

    goto :goto_2
.end method


# virtual methods
.method public agB(I)V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Landroid/support/v4/a/a;->UR:[I

    iget v1, p0, Landroid/support/v4/a/a;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/a/s;->ahS([III)I

    move-result v0

    .line 100
    if-gez v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v1, p0, Landroid/support/v4/a/a;->US:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/a/a;->UQ:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 102
    iget-object v1, p0, Landroid/support/v4/a/a;->US:[Ljava/lang/Object;

    sget-object v2, Landroid/support/v4/a/a;->UQ:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/a/a;->UT:Z

    goto :goto_0
.end method

.method public agC(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Landroid/support/v4/a/a;->UR:[I

    iget v1, p0, Landroid/support/v4/a/a;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/a/s;->ahS([III)I

    move-result v0

    .line 87
    if-gez v0, :cond_1

    .line 88
    :cond_0
    return-object p2

    .line 87
    :cond_1
    iget-object v1, p0, Landroid/support/v4/a/a;->US:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/a/a;->UQ:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 90
    iget-object v1, p0, Landroid/support/v4/a/a;->US:[Ljava/lang/Object;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public agD(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Landroid/support/v4/a/a;->UT:Z

    if-nez v0, :cond_0

    .line 254
    :goto_0
    iget-object v0, p0, Landroid/support/v4/a/a;->US:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0

    .line 251
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/a/a;->agA()V

    goto :goto_0
.end method

.method public agE(I)V
    .locals 0

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Landroid/support/v4/a/a;->agB(I)V

    .line 113
    return-void
.end method

.method public agF(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/a/a;->agC(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public agG(I)I
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Landroid/support/v4/a/a;->UT:Z

    if-nez v0, :cond_0

    .line 240
    :goto_0
    iget-object v0, p0, Landroid/support/v4/a/a;->UR:[I

    aget v0, v0, p1

    return v0

    .line 237
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/a/a;->agA()V

    goto :goto_0
.end method

.method public agH(I)I
    .locals 2

    .prologue
    .line 276
    iget-boolean v0, p0, Landroid/support/v4/a/a;->UT:Z

    if-nez v0, :cond_0

    .line 280
    :goto_0
    iget-object v0, p0, Landroid/support/v4/a/a;->UR:[I

    iget v1, p0, Landroid/support/v4/a/a;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/a/s;->ahS([III)I

    move-result v0

    return v0

    .line 277
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/a/a;->agA()V

    goto :goto_0
.end method

.method public agI(ILjava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 172
    iget-object v0, p0, Landroid/support/v4/a/a;->UR:[I

    iget v1, p0, Landroid/support/v4/a/a;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/a/s;->ahS([III)I

    move-result v0

    .line 174
    if-gez v0, :cond_2

    .line 177
    xor-int/lit8 v0, v0, -0x1

    .line 179
    iget v1, p0, Landroid/support/v4/a/a;->mSize:I

    if-lt v0, v1, :cond_3

    .line 185
    :cond_0
    iget-boolean v1, p0, Landroid/support/v4/a/a;->UT:Z

    if-nez v1, :cond_4

    .line 192
    :cond_1
    :goto_0
    iget v1, p0, Landroid/support/v4/a/a;->mSize:I

    iget-object v2, p0, Landroid/support/v4/a/a;->UR:[I

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 206
    :goto_1
    iget v1, p0, Landroid/support/v4/a/a;->mSize:I

    sub-int/2addr v1, v0

    if-nez v1, :cond_6

    .line 212
    :goto_2
    iget-object v1, p0, Landroid/support/v4/a/a;->UR:[I

    aput p1, v1, v0

    .line 213
    iget-object v1, p0, Landroid/support/v4/a/a;->US:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 214
    iget v0, p0, Landroid/support/v4/a/a;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/a/a;->mSize:I

    .line 216
    :goto_3
    return-void

    .line 175
    :cond_2
    iget-object v1, p0, Landroid/support/v4/a/a;->US:[Ljava/lang/Object;

    aput-object p2, v1, v0

    goto :goto_3

    .line 179
    :cond_3
    iget-object v1, p0, Landroid/support/v4/a/a;->US:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/a/a;->UQ:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    .line 180
    iget-object v1, p0, Landroid/support/v4/a/a;->UR:[I

    aput p1, v1, v0

    .line 181
    iget-object v1, p0, Landroid/support/v4/a/a;->US:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 182
    return-void

    .line 185
    :cond_4
    iget v1, p0, Landroid/support/v4/a/a;->mSize:I

    iget-object v2, p0, Landroid/support/v4/a/a;->UR:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 186
    invoke-direct {p0}, Landroid/support/v4/a/a;->agA()V

    .line 189
    iget-object v0, p0, Landroid/support/v4/a/a;->UR:[I

    iget v1, p0, Landroid/support/v4/a/a;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/a/s;->ahS([III)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 193
    :cond_5
    iget v1, p0, Landroid/support/v4/a/a;->mSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroid/support/v4/a/s;->ahO(I)I

    move-result v1

    .line 195
    new-array v2, v1, [I

    .line 196
    new-array v1, v1, [Ljava/lang/Object;

    .line 199
    iget-object v3, p0, Landroid/support/v4/a/a;->UR:[I

    iget-object v4, p0, Landroid/support/v4/a/a;->UR:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iget-object v3, p0, Landroid/support/v4/a/a;->US:[Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v4/a/a;->US:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    iput-object v2, p0, Landroid/support/v4/a/a;->UR:[I

    .line 203
    iput-object v1, p0, Landroid/support/v4/a/a;->US:[Ljava/lang/Object;

    goto :goto_1

    .line 208
    :cond_6
    iget-object v1, p0, Landroid/support/v4/a/a;->UR:[I

    iget-object v2, p0, Landroid/support/v4/a/a;->UR:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/support/v4/a/a;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iget-object v1, p0, Landroid/support/v4/a/a;->US:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/a/a;->US:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/support/v4/a/a;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method public clear()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 309
    iget v2, p0, Landroid/support/v4/a/a;->mSize:I

    .line 310
    iget-object v3, p0, Landroid/support/v4/a/a;->US:[Ljava/lang/Object;

    move v0, v1

    .line 312
    :goto_0
    if-lt v0, v2, :cond_0

    .line 316
    iput v1, p0, Landroid/support/v4/a/a;->mSize:I

    .line 317
    iput-boolean v1, p0, Landroid/support/v4/a/a;->UT:Z

    .line 318
    return-void

    .line 313
    :cond_0
    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clone()Landroid/support/v4/a/a;
    .locals 2

    .prologue
    .line 60
    const/4 v1, 0x0

    .line 62
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/a/a;->UR:[I

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroid/support/v4/a/a;->UR:[I

    .line 64
    iget-object v1, p0, Landroid/support/v4/a/a;->US:[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroid/support/v4/a/a;->US:[Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    :goto_0
    return-object v0

    .line 65
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/support/v4/a/a;->clone()Landroid/support/v4/a/a;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Landroid/support/v4/a/a;->UT:Z

    if-nez v0, :cond_0

    .line 227
    :goto_0
    iget v0, p0, Landroid/support/v4/a/a;->mSize:I

    return v0

    .line 224
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/a/a;->agA()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 363
    invoke-virtual {p0}, Landroid/support/v4/a/a;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v4/a/a;->mSize:I

    mul-int/lit8 v2, v2, 0x1c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 368
    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 369
    :goto_0
    iget v2, p0, Landroid/support/v4/a/a;->mSize:I

    if-lt v0, v2, :cond_1

    .line 383
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 364
    :cond_0
    const-string/jumbo v0, "{}"

    return-object v0

    .line 370
    :cond_1
    if-gtz v0, :cond_2

    .line 373
    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v4/a/a;->agG(I)I

    move-result v2

    .line 374
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 375
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {p0, v0}, Landroid/support/v4/a/a;->agD(I)Ljava/lang/Object;

    move-result-object v2

    .line 377
    if-ne v2, p0, :cond_3

    .line 380
    const-string/jumbo v2, "(this Map)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_2
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 378
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
