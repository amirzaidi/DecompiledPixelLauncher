.class public final Lcom/google/protobuf/nano/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final Ln:Lcom/google/protobuf/nano/k;


# instance fields
.field private Lo:[I

.field private Lp:[Lcom/google/protobuf/nano/k;

.field private Lq:Z

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/google/protobuf/nano/k;

    invoke-direct {v0}, Lcom/google/protobuf/nano/k;-><init>()V

    sput-object v0, Lcom/google/protobuf/nano/h;->Ln:Lcom/google/protobuf/nano/k;

    .line 43
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/h;-><init>(I)V

    .line 56
    return-void
.end method

.method constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v2, p0, Lcom/google/protobuf/nano/h;->Lq:Z

    .line 64
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/h;->Tf(I)I

    move-result v0

    .line 65
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/protobuf/nano/h;->Lo:[I

    .line 66
    new-array v0, v0, [Lcom/google/protobuf/nano/k;

    iput-object v0, p0, Lcom/google/protobuf/nano/h;->Lp:[Lcom/google/protobuf/nano/k;

    .line 67
    iput v2, p0, Lcom/google/protobuf/nano/h;->mSize:I

    .line 68
    return-void
.end method

.method private Td()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 97
    iget v3, p0, Lcom/google/protobuf/nano/h;->mSize:I

    .line 99
    iget-object v4, p0, Lcom/google/protobuf/nano/h;->Lo:[I

    .line 100
    iget-object v5, p0, Lcom/google/protobuf/nano/h;->Lp:[Lcom/google/protobuf/nano/k;

    move v1, v2

    move v0, v2

    .line 102
    :goto_0
    if-ge v1, v3, :cond_2

    .line 103
    aget-object v6, v5, v1

    .line 105
    sget-object v7, Lcom/google/protobuf/nano/h;->Ln:Lcom/google/protobuf/nano/k;

    if-eq v6, v7, :cond_1

    .line 106
    if-eq v1, v0, :cond_0

    .line 107
    aget v7, v4, v1

    aput v7, v4, v0

    .line 108
    aput-object v6, v5, v0

    .line 109
    const/4 v6, 0x0

    aput-object v6, v5, v1

    .line 112
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 102
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_2
    iput-boolean v2, p0, Lcom/google/protobuf/nano/h;->Lq:Z

    .line 117
    iput v0, p0, Lcom/google/protobuf/nano/h;->mSize:I

    .line 118
    return-void
.end method

.method private Te(I)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 233
    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    .line 234
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p1, v1, :cond_0

    .line 235
    shl-int v0, v2, v0

    add-int/lit8 v0, v0, -0xc

    return v0

    .line 233
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_1
    return p1
.end method

.method private Tf(I)I
    .locals 1

    .prologue
    .line 229
    mul-int/lit8 v0, p1, 0x4

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/h;->Te(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private Th([Lcom/google/protobuf/nano/k;[Lcom/google/protobuf/nano/k;I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 269
    :goto_0
    if-ge v0, p3, :cond_1

    .line 270
    aget-object v2, p1, v0

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Lcom/google/protobuf/nano/k;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 271
    return v1

    .line 269
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private Ti([I[II)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 260
    :goto_0
    if-ge v0, p3, :cond_1

    .line 261
    aget v2, p1, v0

    aget v3, p2, v0

    if-eq v2, v3, :cond_0

    .line 262
    return v1

    .line 260
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method Tg(I)Lcom/google/protobuf/nano/k;
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/google/protobuf/nano/h;->Lq:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/google/protobuf/nano/h;->Td()V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/h;->Lp:[Lcom/google/protobuf/nano/k;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final clone()Lcom/google/protobuf/nano/h;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 280
    invoke-virtual {p0}, Lcom/google/protobuf/nano/h;->size()I

    move-result v1

    .line 281
    new-instance v2, Lcom/google/protobuf/nano/h;

    invoke-direct {v2, v1}, Lcom/google/protobuf/nano/h;-><init>(I)V

    .line 282
    iget-object v3, p0, Lcom/google/protobuf/nano/h;->Lo:[I

    iget-object v4, v2, Lcom/google/protobuf/nano/h;->Lo:[I

    invoke-static {v3, v0, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    :goto_0
    if-ge v0, v1, :cond_1

    .line 284
    iget-object v3, p0, Lcom/google/protobuf/nano/h;->Lp:[Lcom/google/protobuf/nano/k;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 285
    iget-object v3, v2, Lcom/google/protobuf/nano/h;->Lp:[Lcom/google/protobuf/nano/k;

    iget-object v4, p0, Lcom/google/protobuf/nano/h;->Lp:[Lcom/google/protobuf/nano/k;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/google/protobuf/nano/k;->clone()Lcom/google/protobuf/nano/k;

    move-result-object v4

    aput-object v4, v3, v0

    .line 283
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_1
    iput v1, v2, Lcom/google/protobuf/nano/h;->mSize:I

    .line 289
    return-object v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/google/protobuf/nano/h;->clone()Lcom/google/protobuf/nano/h;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 200
    if-ne p1, p0, :cond_0

    .line 201
    const/4 v0, 0x1

    return v0

    .line 203
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/nano/h;

    if-nez v1, :cond_1

    .line 204
    return v0

    .line 207
    :cond_1
    check-cast p1, Lcom/google/protobuf/nano/h;

    .line 208
    invoke-virtual {p0}, Lcom/google/protobuf/nano/h;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/h;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 209
    return v0

    .line 211
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/nano/h;->Lo:[I

    iget-object v2, p1, Lcom/google/protobuf/nano/h;->Lo:[I

    iget v3, p0, Lcom/google/protobuf/nano/h;->mSize:I

    invoke-direct {p0, v1, v2, v3}, Lcom/google/protobuf/nano/h;->Ti([I[II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 212
    iget-object v0, p0, Lcom/google/protobuf/nano/h;->Lp:[Lcom/google/protobuf/nano/k;

    iget-object v1, p1, Lcom/google/protobuf/nano/h;->Lp:[Lcom/google/protobuf/nano/k;

    iget v2, p0, Lcom/google/protobuf/nano/h;->mSize:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/protobuf/nano/h;->Th([Lcom/google/protobuf/nano/k;[Lcom/google/protobuf/nano/k;I)Z

    move-result v0

    .line 211
    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/google/protobuf/nano/h;->Lq:Z

    if-eqz v0, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/google/protobuf/nano/h;->Td()V

    .line 220
    :cond_0
    const/16 v1, 0x11

    .line 221
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/protobuf/nano/h;->mSize:I

    if-ge v0, v2, :cond_1

    .line 222
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/protobuf/nano/h;->Lo:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 223
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/protobuf/nano/h;->Lp:[Lcom/google/protobuf/nano/k;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/protobuf/nano/k;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_1
    return v1
.end method

.method size()I
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/google/protobuf/nano/h;->Lq:Z

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/google/protobuf/nano/h;->Td()V

    .line 178
    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/h;->mSize:I

    return v0
.end method
