.class public Landroid/support/v4/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final Xp:Ljava/lang/Object;


# instance fields
.field private Xq:[J

.field private Xr:[Ljava/lang/Object;

.field private Xs:Z

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/a/m;->Xp:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/support/v4/a/m;-><init>(I)V

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v2, p0, Landroid/support/v4/a/m;->Xs:Z

    .line 66
    if-eqz p1, :cond_0

    .line 70
    invoke-static {p1}, Landroid/support/v4/a/s;->aja(I)I

    move-result v0

    .line 71
    new-array v1, v0, [J

    iput-object v1, p0, Landroid/support/v4/a/m;->Xq:[J

    .line 72
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/a/m;->Xr:[Ljava/lang/Object;

    .line 74
    :goto_0
    iput v2, p0, Landroid/support/v4/a/m;->mSize:I

    .line 75
    return-void

    .line 67
    :cond_0
    sget-object v0, Landroid/support/v4/a/s;->XA:[J

    iput-object v0, p0, Landroid/support/v4/a/m;->Xq:[J

    .line 68
    sget-object v0, Landroid/support/v4/a/s;->XB:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/a/m;->Xr:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private aiQ()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 148
    iget v3, p0, Landroid/support/v4/a/m;->mSize:I

    .line 150
    iget-object v4, p0, Landroid/support/v4/a/m;->Xq:[J

    .line 151
    iget-object v5, p0, Landroid/support/v4/a/m;->Xr:[Ljava/lang/Object;

    move v1, v2

    move v0, v2

    .line 153
    :goto_0
    if-lt v1, v3, :cond_0

    .line 167
    iput-boolean v2, p0, Landroid/support/v4/a/m;->Xs:Z

    .line 168
    iput v0, p0, Landroid/support/v4/a/m;->mSize:I

    .line 171
    return-void

    .line 154
    :cond_0
    aget-object v6, v5, v1

    .line 156
    sget-object v7, Landroid/support/v4/a/m;->Xp:Ljava/lang/Object;

    if-ne v6, v7, :cond_1

    .line 153
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_1
    if-ne v1, v0, :cond_2

    .line 163
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 158
    :cond_2
    aget-wide v8, v4, v1

    aput-wide v8, v4, v0

    .line 159
    aput-object v6, v5, v0

    .line 160
    const/4 v6, 0x0

    aput-object v6, v5, v1

    goto :goto_2
.end method


# virtual methods
.method public aiR(JLjava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 179
    iget-object v0, p0, Landroid/support/v4/a/m;->Xq:[J

    iget v1, p0, Landroid/support/v4/a/m;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/a/s;->ajd([JIJ)I

    move-result v0

    .line 181
    if-gez v0, :cond_2

    .line 184
    xor-int/lit8 v0, v0, -0x1

    .line 186
    iget v1, p0, Landroid/support/v4/a/m;->mSize:I

    if-lt v0, v1, :cond_3

    .line 192
    :cond_0
    iget-boolean v1, p0, Landroid/support/v4/a/m;->Xs:Z

    if-nez v1, :cond_4

    .line 199
    :cond_1
    :goto_0
    iget v1, p0, Landroid/support/v4/a/m;->mSize:I

    iget-object v2, p0, Landroid/support/v4/a/m;->Xq:[J

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 213
    :goto_1
    iget v1, p0, Landroid/support/v4/a/m;->mSize:I

    sub-int/2addr v1, v0

    if-nez v1, :cond_6

    .line 219
    :goto_2
    iget-object v1, p0, Landroid/support/v4/a/m;->Xq:[J

    aput-wide p1, v1, v0

    .line 220
    iget-object v1, p0, Landroid/support/v4/a/m;->Xr:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 221
    iget v0, p0, Landroid/support/v4/a/m;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/a/m;->mSize:I

    .line 223
    :goto_3
    return-void

    .line 182
    :cond_2
    iget-object v1, p0, Landroid/support/v4/a/m;->Xr:[Ljava/lang/Object;

    aput-object p3, v1, v0

    goto :goto_3

    .line 186
    :cond_3
    iget-object v1, p0, Landroid/support/v4/a/m;->Xr:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/a/m;->Xp:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    .line 187
    iget-object v1, p0, Landroid/support/v4/a/m;->Xq:[J

    aput-wide p1, v1, v0

    .line 188
    iget-object v1, p0, Landroid/support/v4/a/m;->Xr:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 189
    return-void

    .line 192
    :cond_4
    iget v1, p0, Landroid/support/v4/a/m;->mSize:I

    iget-object v2, p0, Landroid/support/v4/a/m;->Xq:[J

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 193
    invoke-direct {p0}, Landroid/support/v4/a/m;->aiQ()V

    .line 196
    iget-object v0, p0, Landroid/support/v4/a/m;->Xq:[J

    iget v1, p0, Landroid/support/v4/a/m;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/a/s;->ajd([JIJ)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 200
    :cond_5
    iget v1, p0, Landroid/support/v4/a/m;->mSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroid/support/v4/a/s;->aja(I)I

    move-result v1

    .line 202
    new-array v2, v1, [J

    .line 203
    new-array v1, v1, [Ljava/lang/Object;

    .line 206
    iget-object v3, p0, Landroid/support/v4/a/m;->Xq:[J

    iget-object v4, p0, Landroid/support/v4/a/m;->Xq:[J

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    iget-object v3, p0, Landroid/support/v4/a/m;->Xr:[Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v4/a/m;->Xr:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iput-object v2, p0, Landroid/support/v4/a/m;->Xq:[J

    .line 210
    iput-object v1, p0, Landroid/support/v4/a/m;->Xr:[Ljava/lang/Object;

    goto :goto_1

    .line 215
    :cond_6
    iget-object v1, p0, Landroid/support/v4/a/m;->Xq:[J

    iget-object v2, p0, Landroid/support/v4/a/m;->Xq:[J

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/support/v4/a/m;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    iget-object v1, p0, Landroid/support/v4/a/m;->Xr:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/a/m;->Xr:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/support/v4/a/m;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method public aiS(I)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Landroid/support/v4/a/m;->Xr:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/v4/a/m;->Xp:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 143
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/m;->Xr:[Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/a/m;->Xp:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/a/m;->Xs:Z

    goto :goto_0
.end method

.method public aiT(I)J
    .locals 2

    .prologue
    .line 243
    iget-boolean v0, p0, Landroid/support/v4/a/m;->Xs:Z

    if-nez v0, :cond_0

    .line 247
    :goto_0
    iget-object v0, p0, Landroid/support/v4/a/m;->Xq:[J

    aget-wide v0, v0, p1

    return-wide v0

    .line 244
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/a/m;->aiQ()V

    goto :goto_0
.end method

.method public aiU(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Landroid/support/v4/a/m;->Xs:Z

    if-nez v0, :cond_0

    .line 261
    :goto_0
    iget-object v0, p0, Landroid/support/v4/a/m;->Xr:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0

    .line 258
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/a/m;->aiQ()V

    goto :goto_0
.end method

.method public aiV(J)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/a/m;->aiW(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public aiW(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Landroid/support/v4/a/m;->Xq:[J

    iget v1, p0, Landroid/support/v4/a/m;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/a/s;->ajd([JIJ)I

    move-result v0

    .line 107
    if-gez v0, :cond_1

    .line 108
    :cond_0
    return-object p3

    .line 107
    :cond_1
    iget-object v1, p0, Landroid/support/v4/a/m;->Xr:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/a/m;->Xp:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 110
    iget-object v1, p0, Landroid/support/v4/a/m;->Xr:[Ljava/lang/Object;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public clear()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 314
    iget v2, p0, Landroid/support/v4/a/m;->mSize:I

    .line 315
    iget-object v3, p0, Landroid/support/v4/a/m;->Xr:[Ljava/lang/Object;

    move v0, v1

    .line 317
    :goto_0
    if-lt v0, v2, :cond_0

    .line 321
    iput v1, p0, Landroid/support/v4/a/m;->mSize:I

    .line 322
    iput-boolean v1, p0, Landroid/support/v4/a/m;->Xs:Z

    .line 323
    return-void

    .line 318
    :cond_0
    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clone()Landroid/support/v4/a/m;
    .locals 2

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 82
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/m;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/a/m;->Xq:[J

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Landroid/support/v4/a/m;->Xq:[J

    .line 84
    iget-object v1, p0, Landroid/support/v4/a/m;->Xr:[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroid/support/v4/a/m;->Xr:[Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    :goto_0
    return-object v0

    .line 85
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
    .line 43
    invoke-virtual {p0}, Landroid/support/v4/a/m;->clone()Landroid/support/v4/a/m;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Landroid/support/v4/a/m;->Xs:Z

    if-nez v0, :cond_0

    .line 234
    :goto_0
    iget v0, p0, Landroid/support/v4/a/m;->mSize:I

    return v0

    .line 231
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/a/m;->aiQ()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 368
    invoke-virtual {p0}, Landroid/support/v4/a/m;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v4/a/m;->mSize:I

    mul-int/lit8 v2, v2, 0x1c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 373
    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 374
    :goto_0
    iget v2, p0, Landroid/support/v4/a/m;->mSize:I

    if-lt v0, v2, :cond_1

    .line 388
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 369
    :cond_0
    const-string/jumbo v0, "{}"

    return-object v0

    .line 375
    :cond_1
    if-gtz v0, :cond_2

    .line 378
    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v4/a/m;->aiT(I)J

    move-result-wide v2

    .line 379
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 380
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {p0, v0}, Landroid/support/v4/a/m;->aiU(I)Ljava/lang/Object;

    move-result-object v2

    .line 382
    if-ne v2, p0, :cond_3

    .line 385
    const-string/jumbo v2, "(this Map)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 376
    :cond_2
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 383
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
