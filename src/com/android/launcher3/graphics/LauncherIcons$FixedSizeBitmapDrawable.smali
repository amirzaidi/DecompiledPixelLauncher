.class Lcom/android/launcher3/graphics/LauncherIcons$FixedSizeBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 361
    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/LauncherIcons$FixedSizeBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/LauncherIcons$FixedSizeBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method
