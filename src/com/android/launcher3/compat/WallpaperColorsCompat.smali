.class public Lcom/android/launcher3/compat/WallpaperColorsCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HINT_SUPPORTS_DARK_TEXT:I = 0x1

.field public static final HINT_SUPPORTS_DARK_THEME:I = 0x2


# instance fields
.field private final mColorHints:I

.field private final mPrimaryColor:I

.field private final mSecondaryColor:I

.field private final mTertiaryColor:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/android/launcher3/compat/WallpaperColorsCompat;->mPrimaryColor:I

    .line 34
    iput p2, p0, Lcom/android/launcher3/compat/WallpaperColorsCompat;->mSecondaryColor:I

    .line 35
    iput p3, p0, Lcom/android/launcher3/compat/WallpaperColorsCompat;->mTertiaryColor:I

    .line 36
    iput p4, p0, Lcom/android/launcher3/compat/WallpaperColorsCompat;->mColorHints:I

    .line 37
    return-void
.end method


# virtual methods
.method public getColorHints()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/android/launcher3/compat/WallpaperColorsCompat;->mColorHints:I

    return v0
.end method

.method public getPrimaryColor()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/android/launcher3/compat/WallpaperColorsCompat;->mPrimaryColor:I

    return v0
.end method

.method public getSecondaryColor()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/android/launcher3/compat/WallpaperColorsCompat;->mSecondaryColor:I

    return v0
.end method

.method public getTertiaryColor()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/launcher3/compat/WallpaperColorsCompat;->mTertiaryColor:I

    return v0
.end method
