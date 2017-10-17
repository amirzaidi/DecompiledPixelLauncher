.class public final Lcom/google/android/gms/internal/aL;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final tg:Lcom/google/android/gms/internal/aJ;


# instance fields
.field private mSize:I

.field private td:Z

.field private te:[I

.field private tf:[Lcom/google/android/gms/internal/aJ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/aJ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aJ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/aL;->tg:Lcom/google/android/gms/internal/aJ;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aL;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/aL;->td:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/aL;->vz(I)I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/gms/internal/aL;->te:[I

    new-array v0, v0, [Lcom/google/android/gms/internal/aJ;

    iput-object v0, p0, Lcom/google/android/gms/internal/aL;->tf:[Lcom/google/android/gms/internal/aJ;

    iput v2, p0, Lcom/google/android/gms/internal/aL;->mSize:I

    return-void
.end method

.method private vA(I)I
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    return p1

    :cond_0
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-le p1, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    shl-int v0, v2, v0

    add-int/lit8 v0, v0, -0xc

    return v0
.end method

.method private vB([Lcom/google/android/gms/internal/aJ;[Lcom/google/android/gms/internal/aJ;I)Z
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-lt v0, p3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    aget-object v2, p1, v0

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/aJ;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private vC(I)I
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/aL;->mSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-le v1, v0, :cond_0

    xor-int/lit8 v0, v1, -0x1

    return v0

    :cond_0
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/aL;->te:[I

    aget v3, v3, v2

    if-lt v3, p1, :cond_1

    if-gt v3, p1, :cond_2

    return v2

    :cond_1
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v2, -0x1

    goto :goto_0
.end method

.method private vD([I[II)Z
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-lt v0, p3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    aget v2, p1, v0

    aget v3, p2, v0

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private vz(I)I
    .locals 1

    mul-int/lit8 v0, p1, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aL;->vA(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aL;->vE()Lcom/google/android/gms/internal/aL;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p0, :cond_1

    instance-of v2, p1, Lcom/google/android/gms/internal/aL;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/aL;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aL;->size()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aL;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/aL;->te:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/aL;->te:[I

    iget v4, p0, Lcom/google/android/gms/internal/aL;->mSize:I

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/gms/internal/aL;->vD([I[II)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_0
    move v0, v1

    :cond_0
    return v0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v1

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/aL;->tf:[Lcom/google/android/gms/internal/aJ;

    iget-object v3, p1, Lcom/google/android/gms/internal/aL;->tf:[Lcom/google/android/gms/internal/aJ;

    iget v4, p0, Lcom/google/android/gms/internal/aL;->mSize:I

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/gms/internal/aL;->vB([Lcom/google/android/gms/internal/aJ;[Lcom/google/android/gms/internal/aJ;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/16 v1, 0x11

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/aL;->mSize:I

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/aL;->te:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/aL;->tf:[Lcom/google/android/gms/internal/aJ;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aJ;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aL;->size()I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/aL;->mSize:I

    return v0
.end method

.method public final vE()Lcom/google/android/gms/internal/aL;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aL;->size()I

    move-result v2

    new-instance v3, Lcom/google/android/gms/internal/aL;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/aL;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/aL;->te:[I

    iget-object v4, v3, Lcom/google/android/gms/internal/aL;->te:[I

    invoke-static {v1, v0, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    iput v2, v3, Lcom/google/android/gms/internal/aL;->mSize:I

    return-object v3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aL;->tf:[Lcom/google/android/gms/internal/aJ;

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v4, v3, Lcom/google/android/gms/internal/aL;->tf:[Lcom/google/android/gms/internal/aJ;

    iget-object v0, p0, Lcom/google/android/gms/internal/aL;->tf:[Lcom/google/android/gms/internal/aJ;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aJ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aJ;

    aput-object v0, v4, v1

    goto :goto_1
.end method

.method vF(ILcom/google/android/gms/internal/aJ;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/aL;->vC(I)I

    move-result v0

    if-gez v0, :cond_1

    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/google/android/gms/internal/aL;->mSize:I

    if-lt v0, v1, :cond_2

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/aL;->mSize:I

    iget-object v2, p0, Lcom/google/android/gms/internal/aL;->te:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/aL;->mSize:I

    sub-int/2addr v1, v0

    if-nez v1, :cond_4

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/aL;->te:[I

    aput p1, v1, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aL;->tf:[Lcom/google/android/gms/internal/aJ;

    aput-object p2, v1, v0

    iget v0, p0, Lcom/google/android/gms/internal/aL;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/aL;->mSize:I

    :goto_2
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/aL;->tf:[Lcom/google/android/gms/internal/aJ;

    aput-object p2, v1, v0

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/aL;->tf:[Lcom/google/android/gms/internal/aJ;

    aget-object v1, v1, v0

    sget-object v2, Lcom/google/android/gms/internal/aL;->tg:Lcom/google/android/gms/internal/aJ;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/aL;->te:[I

    aput p1, v1, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aL;->tf:[Lcom/google/android/gms/internal/aJ;

    aput-object p2, v1, v0

    return-void

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/aL;->mSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/aL;->vz(I)I

    move-result v1

    new-array v2, v1, [I

    new-array v1, v1, [Lcom/google/android/gms/internal/aJ;

    iget-object v3, p0, Lcom/google/android/gms/internal/aL;->te:[I

    iget-object v4, p0, Lcom/google/android/gms/internal/aL;->te:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/aL;->tf:[Lcom/google/android/gms/internal/aJ;

    iget-object v4, p0, Lcom/google/android/gms/internal/aL;->tf:[Lcom/google/android/gms/internal/aJ;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/android/gms/internal/aL;->te:[I

    iput-object v1, p0, Lcom/google/android/gms/internal/aL;->tf:[Lcom/google/android/gms/internal/aJ;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/aL;->te:[I

    iget-object v2, p0, Lcom/google/android/gms/internal/aL;->te:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/google/android/gms/internal/aL;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/aL;->tf:[Lcom/google/android/gms/internal/aJ;

    iget-object v2, p0, Lcom/google/android/gms/internal/aL;->tf:[Lcom/google/android/gms/internal/aJ;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/google/android/gms/internal/aL;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method vG(I)Lcom/google/android/gms/internal/aJ;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aL;->tf:[Lcom/google/android/gms/internal/aJ;

    aget-object v0, v0, p1

    return-object v0
.end method

.method vH(I)Lcom/google/android/gms/internal/aJ;
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/aL;->vC(I)I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/aL;->tf:[Lcom/google/android/gms/internal/aJ;

    aget-object v1, v1, v0

    sget-object v2, Lcom/google/android/gms/internal/aL;->tg:Lcom/google/android/gms/internal/aJ;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/aL;->tf:[Lcom/google/android/gms/internal/aJ;

    aget-object v0, v1, v0

    return-object v0
.end method
