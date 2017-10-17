.class Landroid/support/v4/a/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final XA:[J

.field static final XB:[Ljava/lang/Object;

.field static final Xz:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    new-array v0, v1, [I

    sput-object v0, Landroid/support/v4/a/s;->Xz:[I

    .line 21
    new-array v0, v1, [J

    sput-object v0, Landroid/support/v4/a/s;->XA:[J

    .line 22
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Landroid/support/v4/a/s;->XB:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aiY(I)I
    .locals 1

    .prologue
    .line 25
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Landroid/support/v4/a/s;->aiZ(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static aiZ(I)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 33
    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    .line 37
    return p0

    .line 34
    :cond_0
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-le p0, v1, :cond_1

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_1
    shl-int v0, v2, v0

    add-int/lit8 v0, v0, -0xc

    return v0
.end method

.method public static aja(I)I
    .locals 1

    .prologue
    .line 29
    mul-int/lit8 v0, p0, 0x8

    invoke-static {v0}, Landroid/support/v4/a/s;->aiZ(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static ajb(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 41
    if-ne p0, p1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method static ajc([III)I
    .locals 4

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 47
    add-int/lit8 v0, p1, -0x1

    .line 49
    :goto_0
    if-le v1, v0, :cond_0

    .line 61
    xor-int/lit8 v0, v1, -0x1

    return v0

    .line 50
    :cond_0
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 51
    aget v3, p0, v2

    .line 53
    if-lt v3, p2, :cond_1

    .line 55
    if-gt v3, p2, :cond_2

    .line 58
    return v2

    .line 54
    :cond_1
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 56
    :cond_2
    add-int/lit8 v0, v2, -0x1

    goto :goto_0
.end method

.method static ajd([JIJ)I
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 66
    add-int/lit8 v0, p1, -0x1

    move v1, v3

    .line 68
    :goto_0
    if-le v1, v0, :cond_0

    .line 80
    xor-int/lit8 v0, v1, -0x1

    return v0

    .line 69
    :cond_0
    add-int v4, v1, v0

    ushr-int/lit8 v5, v4, 0x1

    .line 70
    aget-wide v6, p0, v5

    .line 72
    cmp-long v4, v6, p2

    if-ltz v4, :cond_1

    move v4, v2

    :goto_1
    if-nez v4, :cond_2

    .line 73
    add-int/lit8 v1, v5, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    .line 72
    goto :goto_1

    .line 74
    :cond_2
    cmp-long v0, v6, p2

    if-gtz v0, :cond_3

    move v0, v2

    :goto_2
    if-nez v0, :cond_4

    .line 75
    add-int/lit8 v0, v5, -0x1

    goto :goto_0

    :cond_3
    move v0, v3

    .line 74
    goto :goto_2

    .line 77
    :cond_4
    return v5
.end method
