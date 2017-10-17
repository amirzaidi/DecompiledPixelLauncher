.class public Lcom/android/launcher3/graphics/LauncherIcons;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sCanvas:Landroid/graphics/Canvas;

.field private static final sOldBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/graphics/LauncherIcons;->sOldBounds:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/android/launcher3/graphics/LauncherIcons;->sCanvas:Landroid/graphics/Canvas;

    .line 58
    sget-object v0, Lcom/android/launcher3/graphics/LauncherIcons;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    .line 59
    const/4 v3, 0x2

    .line 58
    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addShadowToIcon(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 186
    invoke-static {p1}, Lcom/android/launcher3/graphics/ShadowGenerator;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/graphics/ShadowGenerator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/graphics/ShadowGenerator;->recreateIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static badgeIconForUser(Landroid/graphics/Bitmap;Landroid/os/UserHandle;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 134
    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 135
    new-instance v0, Lcom/android/launcher3/graphics/LauncherIcons$FixedSizeBitmapDrawable;

    invoke-direct {v0, p0}, Lcom/android/launcher3/graphics/LauncherIcons$FixedSizeBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 136
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 138
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 139
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 141
    :cond_0
    invoke-static {v0, p2}, Lcom/android/launcher3/graphics/LauncherIcons;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 144
    :cond_1
    return-object p0
.end method

.method public static badgeWithBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 193
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 194
    sget-object v1, Lcom/android/launcher3/graphics/LauncherIcons;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v1

    .line 195
    :try_start_0
    sget-object v2, Lcom/android/launcher3/graphics/LauncherIcons;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 196
    sget-object v2, Lcom/android/launcher3/graphics/LauncherIcons;->sCanvas:Landroid/graphics/Canvas;

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 197
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, v0

    .line 198
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int v0, v6, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 197
    invoke-direct {v4, v5, v0, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 199
    new-instance v0, Landroid/graphics/Paint;

    const/4 v5, 0x2

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 196
    invoke-virtual {v2, p1, v3, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 200
    sget-object v0, Lcom/android/launcher3/graphics/LauncherIcons;->sCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 202
    return-object p0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 101
    const/high16 v0, 0x3f800000    # 1.0f

    .line 102
    sget-boolean v1, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_DISABLE_ICON_NORMALIZATION:Z

    if-nez v1, :cond_0

    .line 103
    invoke-static {p2}, Lcom/android/launcher3/graphics/IconNormalizer;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/graphics/IconNormalizer;

    move-result-object v2

    .line 104
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1a

    if-lt p3, v0, :cond_2

    .line 105
    new-array v1, v5, [Z

    .line 107
    const/high16 v0, 0x7f020000

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 106
    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 108
    invoke-virtual {v0, v4, v4, v5, v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    .line 109
    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v2, p0, v3, v0, v1}, Lcom/android/launcher3/graphics/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v0

    .line 111
    aget-boolean v1, v1, v4

    xor-int/lit8 v1, v1, 0x1

    .line 110
    if-eqz v1, :cond_0

    .line 112
    invoke-static {p2, p0, v0}, Lcom/android/launcher3/graphics/LauncherIcons;->wrapToAdaptiveIconDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 113
    if-eq v1, p0, :cond_0

    .line 115
    invoke-virtual {v2, v1, v3, v3, v3}, Lcom/android/launcher3/graphics/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v0

    move-object p0, v1

    .line 122
    :cond_0
    :goto_0
    invoke-static {p0, p2, v0}, Lcom/android/launcher3/graphics/LauncherIcons;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    instance-of v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 123
    if-eqz v1, :cond_1

    .line 125
    invoke-static {p2}, Lcom/android/launcher3/graphics/ShadowGenerator;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/graphics/ShadowGenerator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/graphics/ShadowGenerator;->recreateIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 127
    :cond_1
    invoke-static {v0, p1, p2}, Lcom/android/launcher3/graphics/LauncherIcons;->badgeIconForUser(Landroid/graphics/Bitmap;Landroid/os/UserHandle;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 119
    :cond_2
    invoke-virtual {v2, p0, v3, v3, v3}, Lcom/android/launcher3/graphics/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v0

    goto :goto_0
.end method

.method public static createIconBitmap(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 70
    :try_start_0
    iget-object v1, p0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 74
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher3/graphics/LauncherIcons;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 79
    :cond_0
    return-object v4
.end method

.method public static createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 86
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    .line 87
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 88
    return-object p0

    .line 90
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v0, p1}, Lcom/android/launcher3/graphics/LauncherIcons;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 209
    const/high16 v0, 0x3f800000    # 1.0f

    .line 210
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    instance-of v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 210
    if-eqz v1, :cond_0

    .line 212
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v0}, Lcom/android/launcher3/graphics/ShadowGenerator;->getScaleForBounds(Landroid/graphics/RectF;)F

    move-result v0

    .line 214
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/android/launcher3/graphics/LauncherIcons;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 215
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    instance-of v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 215
    if-eqz v1, :cond_1

    .line 217
    invoke-static {p1}, Lcom/android/launcher3/graphics/ShadowGenerator;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/graphics/ShadowGenerator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/graphics/ShadowGenerator;->recreateIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 219
    :cond_1
    return-object v0
.end method

.method public static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;F)Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    .line 226
    sget-object v4, Lcom/android/launcher3/graphics/LauncherIcons;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v4

    .line 227
    :try_start_0
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    iget v2, v1, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    .line 231
    instance-of v1, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v1, :cond_1

    .line 232
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v1, v0

    .line 233
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 234
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 244
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 245
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 246
    if-lez v1, :cond_2

    if-lez v3, :cond_2

    .line 248
    int-to-float v5, v1

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 249
    if-le v1, v3, :cond_3

    .line 250
    int-to-float v1, v2

    div-float/2addr v1, v5

    float-to-int v1, v1

    move v3, v2

    .line 260
    :goto_1
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 259
    invoke-static {v2, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 261
    sget-object v6, Lcom/android/launcher3/graphics/LauncherIcons;->sCanvas:Landroid/graphics/Canvas;

    .line 262
    invoke-virtual {v6, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 264
    sub-int v7, v2, v3

    div-int/lit8 v7, v7, 0x2

    .line 265
    sub-int v8, v2, v1

    div-int/lit8 v8, v8, 0x2

    .line 267
    sget-object v9, Lcom/android/launcher3/graphics/LauncherIcons;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 268
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v9

    if-eqz v9, :cond_4

    instance-of v9, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v9, :cond_4

    .line 269
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 270
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 271
    add-int v3, v7, v1

    add-int/2addr v1, v7

    invoke-virtual {p0, v7, v7, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 275
    :goto_2
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 276
    div-int/lit8 v1, v2, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v6, p2, p2, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 277
    invoke-virtual {p0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 278
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 279
    sget-object v1, Lcom/android/launcher3/graphics/LauncherIcons;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 280
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 282
    return-object v5

    .line 235
    :cond_1
    :try_start_1
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 237
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, v0

    .line 238
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 239
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v3

    if-nez v3, :cond_0

    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 226
    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1

    :cond_2
    move v1, v2

    move v3, v2

    .line 246
    goto :goto_1

    .line 251
    :cond_3
    if-le v3, v1, :cond_5

    .line 252
    int-to-float v1, v2

    mul-float/2addr v1, v5

    float-to-int v1, v1

    move v3, v1

    move v1, v2

    goto :goto_1

    .line 273
    :cond_4
    add-int/2addr v3, v7

    add-int/2addr v1, v8

    :try_start_2
    invoke-virtual {p0, v7, v8, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_5
    move v1, v2

    move v3, v2

    goto/16 :goto_1
.end method

.method public static createScaledBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 153
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 155
    const/high16 v0, 0x3f800000    # 1.0f

    .line 156
    sget-boolean v1, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_DISABLE_ICON_NORMALIZATION:Z

    if-nez v1, :cond_0

    .line 157
    invoke-static {p1}, Lcom/android/launcher3/graphics/IconNormalizer;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/graphics/IconNormalizer;

    move-result-object v3

    .line 158
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1a

    if-lt p2, v0, :cond_1

    .line 159
    new-array v1, v4, [Z

    .line 161
    const/high16 v0, 0x7f020000

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 160
    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 162
    invoke-virtual {v0, v6, v6, v4, v4}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    .line 163
    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v3, p0, v2, v0, v1}, Lcom/android/launcher3/graphics/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v0

    .line 164
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    aget-boolean v1, v1, v6

    xor-int/lit8 v1, v1, 0x1

    .line 164
    if-eqz v1, :cond_0

    .line 166
    invoke-static {p1, p0, v0}, Lcom/android/launcher3/graphics/LauncherIcons;->wrapToAdaptiveIconDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 167
    if-eq v1, p0, :cond_0

    .line 169
    invoke-virtual {v3, v1, v2, v5, v5}, Lcom/android/launcher3/graphics/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v0

    move-object p0, v1

    .line 177
    :cond_0
    :goto_0
    invoke-static {v2}, Lcom/android/launcher3/graphics/ShadowGenerator;->getScaleForBounds(Landroid/graphics/RectF;)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 178
    invoke-static {p0, p1, v0}, Lcom/android/launcher3/graphics/LauncherIcons;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;F)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 173
    :cond_1
    invoke-virtual {v3, p0, v2, v5, v5}, Lcom/android/launcher3/graphics/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v0

    goto :goto_0
.end method

.method public static createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/graphics/LauncherIcons;->createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 317
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 318
    invoke-static {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object v1

    .line 320
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    .line 318
    invoke-virtual {v1, p0, v2}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getShortcutIconDrawable(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 321
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v2

    .line 322
    if-nez v1, :cond_0

    .line 323
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/launcher3/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 327
    :goto_0
    if-nez p2, :cond_1

    .line 328
    return-object v0

    .line 325
    :cond_0
    const/16 v0, 0x1a

    .line 324
    invoke-static {v1, p1, v0}, Lcom/android/launcher3/graphics/LauncherIcons;->createScaledBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 330
    :cond_1
    invoke-static {v0, p1}, Lcom/android/launcher3/graphics/LauncherIcons;->addShadowToIcon(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 333
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_2

    .line 336
    new-instance v3, Lcom/android/launcher3/AppInfo;

    invoke-direct {v3}, Lcom/android/launcher3/AppInfo;-><init>()V

    .line 337
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    iput-object v4, v3, Lcom/android/launcher3/AppInfo;->user:Landroid/os/UserHandle;

    .line 338
    iput-object v0, v3, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 339
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    const-string/jumbo v5, "android.intent.category.LAUNCHER"

    .line 339
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, v3, Lcom/android/launcher3/AppInfo;->intent:Landroid/content/Intent;

    .line 342
    invoke-virtual {v2, v3, v6}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Z)V

    .line 343
    iget-object v0, v3, Lcom/android/launcher3/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 349
    :goto_1
    invoke-static {v1, v0, p1}, Lcom/android/launcher3/graphics/LauncherIcons;->badgeWithBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 345
    :cond_2
    new-instance v0, Lcom/android/launcher3/model/PackageItemInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/launcher3/model/PackageItemInfo;-><init>(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v2, v0, v6}, Lcom/android/launcher3/IconCache;->getTitleAndIconForApp(Lcom/android/launcher3/model/PackageItemInfo;Z)V

    .line 347
    iget-object v0, v0, Lcom/android/launcher3/model/PackageItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method static wrapToAdaptiveIconDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 292
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    return-object p1

    .line 297
    :cond_0
    :try_start_0
    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-nez v0, :cond_1

    .line 299
    const/high16 v0, 0x7f020000

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 298
    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 300
    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/graphics/FixedScaleDrawable;

    .line 301
    invoke-virtual {v1, p1}, Lcom/android/launcher3/graphics/FixedScaleDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    invoke-virtual {v1, p2}, Lcom/android/launcher3/graphics/FixedScaleDrawable;->setScale(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    return-object v0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    return-object p1

    .line 308
    :cond_1
    return-object p1
.end method
