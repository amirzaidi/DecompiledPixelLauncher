.class public Lcom/google/android/apps/nexuslauncher/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private eV:[I

.field private eW:Landroid/graphics/Bitmap;

.field private eX:Landroid/graphics/Canvas;

.field private eY:Landroid/graphics/Paint;

.field private final eZ:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/c;->eZ:Landroid/graphics/Matrix;

    .line 16
    return-void
.end method

.method private dA(I)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/c;->eV:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/c;->eV:[I

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 82
    :cond_0
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/c;->eV:[I

    .line 84
    :cond_1
    return-void
.end method

.method public static dC(I)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v6, 0x14

    .line 93
    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    .line 94
    const/16 v3, 0x32

    if-ge v2, v3, :cond_0

    .line 95
    return v0

    .line 98
    :cond_0
    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    .line 99
    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    .line 100
    and-int/lit16 v4, p0, 0xff

    .line 102
    sub-int v5, v2, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v6, :cond_2

    .line 103
    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v6, :cond_2

    .line 104
    sub-int v2, v3, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v6, :cond_1

    .line 102
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 104
    goto :goto_0

    :cond_2
    move v0, v1

    .line 102
    goto :goto_0
.end method


# virtual methods
.method public dB(Landroid/graphics/Bitmap;)Z
    .locals 10

    .prologue
    const/high16 v6, 0x42800000    # 64.0f

    const/4 v5, 0x0

    const/4 v9, 0x1

    const/16 v0, 0x40

    const/4 v2, 0x0

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 46
    if-gt v7, v0, :cond_0

    if-le v3, v0, :cond_2

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/a/c;->eW:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 49
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 48
    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/a/c;->eW:Landroid/graphics/Bitmap;

    .line 51
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/a/c;->eW:Landroid/graphics/Bitmap;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/a/c;->eX:Landroid/graphics/Canvas;

    .line 52
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/a/c;->eY:Landroid/graphics/Paint;

    .line 53
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/a/c;->eY:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/a/c;->eZ:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 56
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/a/c;->eZ:Landroid/graphics/Matrix;

    .line 57
    int-to-float v3, v3

    div-float v3, v6, v3

    .line 58
    int-to-float v4, v7

    div-float v4, v6, v4

    .line 56
    invoke-virtual {v1, v3, v4, v5, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 60
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/a/c;->eX:Landroid/graphics/Canvas;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 61
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/a/c;->eX:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/a/c;->eZ:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/a/c;->eY:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 62
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/a/c;->eW:Landroid/graphics/Bitmap;

    move v3, v0

    move v7, v0

    move-object v0, p1

    .line 66
    :goto_0
    mul-int v8, v7, v3

    .line 67
    invoke-direct {p0, v8}, Lcom/google/android/apps/nexuslauncher/a/c;->dA(I)V

    .line 68
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/a/c;->eV:[I

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v0, v2

    .line 69
    :goto_1
    if-ge v0, v8, :cond_4

    .line 70
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/a/c;->eV:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/a/c;->dC(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 71
    return v2

    :cond_2
    move-object v0, p1

    .line 46
    goto :goto_0

    .line 69
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    :cond_4
    return v9
.end method
