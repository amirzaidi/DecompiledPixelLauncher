.class public final Lcom/google/android/gms/internal/aN;
.super Ljava/lang/Object;


# static fields
.field public static final sJ:[Ljava/lang/String;

.field public static final sK:[D

.field public static final sL:[F

.field public static final sM:[[B

.field public static final sN:[Z

.field public static final sO:[I

.field public static final sP:[J

.field public static final sQ:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/internal/aN;->sO:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/internal/aN;->sP:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/gms/internal/aN;->sL:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/internal/aN;->sK:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/internal/aN;->sN:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/aN;->sJ:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/android/gms/internal/aN;->sM:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/aN;->sQ:[B

    return-void
.end method

.method public static vj(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static final vk(Lcom/google/android/gms/internal/be;I)I
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->xL()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/be;->xV(I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/be;->xG()I

    move-result v2

    if-eq v2, p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/be;->xZ(I)V

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/be;->xV(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static vl(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method static vm(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method public static vn(Lcom/google/android/gms/internal/be;I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/be;->xV(I)Z

    move-result v0

    return v0
.end method
