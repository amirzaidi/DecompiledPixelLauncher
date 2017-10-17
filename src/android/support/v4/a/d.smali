.class public Landroid/support/v4/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/a/j;


# instance fields
.field private final WT:[Ljava/lang/Object;

.field private WU:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    if-lez p1, :cond_0

    .line 94
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/a/d;->WT:[Ljava/lang/Object;

    .line 95
    return-void

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The max pool size must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private aiq(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 124
    :goto_0
    iget v2, p0, Landroid/support/v4/a/d;->WU:I

    if-lt v0, v2, :cond_0

    .line 129
    return v1

    .line 125
    :cond_0
    iget-object v2, p0, Landroid/support/v4/a/d;->WT:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-eq v2, p1, :cond_1

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public aip(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-direct {p0, p1}, Landroid/support/v4/a/d;->aiq(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget v0, p0, Landroid/support/v4/a/d;->WU:I

    iget-object v1, p0, Landroid/support/v4/a/d;->WT:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 120
    return v2

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already in the pool!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    iget-object v0, p0, Landroid/support/v4/a/d;->WT:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/a/d;->WU:I

    aput-object p1, v0, v1

    .line 117
    iget v0, p0, Landroid/support/v4/a/d;->WU:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/a/d;->WU:I

    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public air()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 100
    iget v0, p0, Landroid/support/v4/a/d;->WU:I

    if-gtz v0, :cond_0

    .line 107
    return-object v3

    .line 101
    :cond_0
    iget v0, p0, Landroid/support/v4/a/d;->WU:I

    add-int/lit8 v0, v0, -0x1

    .line 102
    iget-object v1, p0, Landroid/support/v4/a/d;->WT:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 103
    iget-object v2, p0, Landroid/support/v4/a/d;->WT:[Ljava/lang/Object;

    aput-object v3, v2, v0

    .line 104
    iget v0, p0, Landroid/support/v4/a/d;->WU:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/a/d;->WU:I

    .line 105
    return-object v1
.end method
