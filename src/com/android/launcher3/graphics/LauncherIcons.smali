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
    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/graphics/LauncherIcons;->sOldBounds:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/android/launcher3/graphics/LauncherIcons;->sCanvas:Landroid/graphics/Canvas;

    .line 60
    sget-object v0, Lcom/android/launcher3/graphics/LauncherIcons;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    .line 61
    const/4 v3, 0x2

    .line 60
    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addShadowToIcon(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 188
    invoke-static {p1}, Lcom/android/launcher3/graphics/ShadowGenerator;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/graphics/ShadowGenerator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/graphics/ShadowGenerator;->recreateIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static badgeIconForUser(Landroid/graphics/Bitmap;Landroid/os/UserHandle;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 136
    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 137
    new-instance v0, Lcom/android/launcher3/graphics/LauncherIcons$FixedSizeBitmapDrawable;

    invoke-direct {v0, p0}, Lcom/android/launcher3/graphics/LauncherIcons$FixedSizeBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 138
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 140
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 141
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 143
    :cond_0
    invoke-static {v0, p2}, Lcom/android/launcher3/graphics/LauncherIcons;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 146
    :cond_1
    return-object p0
.end method

.method public static badgeWithBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 195
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 196
    sget-object v1, Lcom/android/launcher3/graphics/LauncherIcons;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v1

    .line 197
    :try_start_0
    sget-object v2, Lcom/android/launcher3/graphics/LauncherIcons;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 198
    sget-object v2, Lcom/android/launcher3/graphics/LauncherIcons;->sCanvas:Landroid/graphics/Canvas;

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 199
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, v0

    .line 200
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int v0, v6, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 199
    invoke-direct {v4, v5, v0, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 201
    new-instance v0, Landroid/graphics/Paint;

    const/4 v5, 0x2

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 198
    invoke-virtual {v2, p1, v3, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 202
    sget-object v0, Lcom/android/launcher3/graphics/LauncherIcons;->sCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 204
    return-object p0

    .line 196
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

    .line 103
    const/high16 v0, 0x3f800000    # 1.0f

    .line 104
    sget-boolean v1, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_DISABLE_ICON_NORMALIZATION:Z

    if-nez v1, :cond_0

    .line 105
    invoke-static {p2}, Lcom/android/launcher3/graphics/IconNormalizer;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/graphics/IconNormalizer;

    move-result-object v2

    .line 106
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1a

    if-lt p3, v0, :cond_2

    .line 107
    new-array v1, v5, [Z

    .line 109
    const/high16 v0, 0x7f020000

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 108
    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 110
    invoke-virtual {v0, v4, v4, v5, v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    .line 111
    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v2, p0, v3, v0, v1}, Lcom/android/launcher3/graphics/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v0

    .line 113
    aget-boolean v1, v1, v4

    xor-int/lit8 v1, v1, 0x1

    .line 112
    if-eqz v1, :cond_0

    .line 114
    invoke-static {p2, p0, v0}, Lcom/android/launcher3/graphics/LauncherIcons;->wrapToAdaptiveIconDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 115
    if-eq v1, p0, :cond_0

    .line 117
    invoke-virtual {v2, v1, v3, v3, v3}, Lcom/android/launcher3/graphics/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v0

    move-object p0, v1

    .line 124
    :cond_0
    :goto_0
    invoke-static {p0, p2, v0}, Lcom/android/launcher3/graphics/LauncherIcons;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 125
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    instance-of v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 125
    if-eqz v1, :cond_1

    .line 127
    invoke-static {p2}, Lcom/android/launcher3/graphics/ShadowGenerator;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/graphics/ShadowGenerator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/graphics/ShadowGenerator;->recreateIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    :cond_1
    invoke-static {v0, p1, p2}, Lcom/android/launcher3/graphics/LauncherIcons;->badgeIconForUser(Landroid/graphics/Bitmap;Landroid/os/UserHandle;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 121
    :cond_2
    invoke-virtual {v2, p0, v3, v3, v3}, Lcom/android/launcher3/graphics/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v0

    goto :goto_0
.end method

.method public static createIconBitmap(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 72
    :try_start_0
    iget-object v1, p0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 76
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher3/graphics/LauncherIcons;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 81
    :cond_0
    return-object v4
.end method

.method public static createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 88
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    .line 89
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 90
    return-object p0

    .line 92
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

    .line 211
    const/high16 v0, 0x3f800000    # 1.0f

    .line 212
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    instance-of v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 212
    if-eqz v1, :cond_0

    .line 214
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v0}, Lcom/android/launcher3/graphics/ShadowGenerator;->getScaleForBounds(Landroid/graphics/RectF;)F

    move-result v0

    .line 216
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/android/launcher3/graphics/LauncherIcons;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 217
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    instance-of v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 217
    if-eqz v1, :cond_1

    .line 219
    invoke-static {p1}, Lcom/android/launcher3/graphics/ShadowGenerator;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/graphics/ShadowGenerator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/graphics/ShadowGenerator;->recreateIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 221
    :cond_1
    return-object v0
.end method

.method public static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;F)Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    .line 228
    sget-object v4, Lcom/android/launcher3/graphics/LauncherIcons;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v4

    .line 229
    :try_start_0
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    iget v2, v1, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    .line 233
    instance-of v1, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v1, :cond_1

    .line 234
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v1, v0

    .line 235
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 236
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 246
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 247
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 248
    if-lez v1, :cond_2

    if-lez v3, :cond_2

    .line 250
    int-to-float v5, v1

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 251
    if-le v1, v3, :cond_3

    .line 252
    int-to-float v1, v2

    div-float/2addr v1, v5

    float-to-int v1, v1

    move v3, v2

    .line 262
    :goto_1
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 261
    invoke-static {v2, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 263
    sget-object v6, Lcom/android/launcher3/graphics/LauncherIcons;->sCanvas:Landroid/graphics/Canvas;

    .line 264
    invoke-virtual {v6, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 266
    sub-int v7, v2, v3

    div-int/lit8 v7, v7, 0x2

    .line 267
    sub-int v8, v2, v1

    div-int/lit8 v8, v8, 0x2

    .line 269
    sget-object v9, Lcom/android/launcher3/graphics/LauncherIcons;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 270
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v9

    if-eqz v9, :cond_4

    instance-of v9, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v9, :cond_4

    .line 271
    int-to-float v9, v2

    const v10, 0x3c2aaaab

    mul-float/2addr v9, v10

    float-to-int v9, v9

    .line 272
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 271
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 273
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 274
    invoke-virtual {p0, v7, v7, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 278
    :goto_2
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 279
    div-int/lit8 v1, v2, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v6, p2, p2, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 280
    invoke-virtual {p0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 281
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 282
    sget-object v1, Lcom/android/launcher3/graphics/LauncherIcons;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 283
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 285
    return-object v5

    .line 237
    :cond_1
    :try_start_1
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 239
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, v0

    .line 240
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 241
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v3

    if-nez v3, :cond_0

    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 228
    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1

    :cond_2
    move v1, v2

    move v3, v2

    .line 248
    goto :goto_1

    .line 253
    :cond_3
    if-le v3, v1, :cond_5

    .line 254
    int-to-float v1, v2

    mul-float/2addr v1, v5

    float-to-int v1, v1

    move v3, v1

    move v1, v2

    goto/16 :goto_1

    .line 276
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

    .line 155
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 157
    const/high16 v0, 0x3f800000    # 1.0f

    .line 158
    sget-boolean v1, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_DISABLE_ICON_NORMALIZATION:Z

    if-nez v1, :cond_0

    .line 159
    invoke-static {p1}, Lcom/android/launcher3/graphics/IconNormalizer;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/graphics/IconNormalizer;

    move-result-object v3

    .line 160
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1a

    if-lt p2, v0, :cond_1

    .line 161
    new-array v1, v4, [Z

    .line 163
    const/high16 v0, 0x7f020000

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 162
    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 164
    invoke-virtual {v0, v6, v6, v4, v4}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    .line 165
    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v3, p0, v2, v0, v1}, Lcom/android/launcher3/graphics/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v0

    .line 166
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    aget-boolean v1, v1, v6

    xor-int/lit8 v1, v1, 0x1

    .line 166
    if-eqz v1, :cond_0

    .line 168
    invoke-static {p1, p0, v0}, Lcom/android/launcher3/graphics/LauncherIcons;->wrapToAdaptiveIconDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 169
    if-eq v1, p0, :cond_0

    .line 171
    invoke-virtual {v3, v1, v2, v5, v5}, Lcom/android/launcher3/graphics/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v0

    move-object p0, v1

    .line 179
    :cond_0
    :goto_0
    invoke-static {v2}, Lcom/android/launcher3/graphics/ShadowGenerator;->getScaleForBounds(Landroid/graphics/RectF;)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 180
    invoke-static {p0, p1, v0}, Lcom/android/launcher3/graphics/LauncherIcons;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;F)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 175
    :cond_1
    invoke-virtual {v3, p0, v2, v5, v5}, Lcom/android/launcher3/graphics/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v0

    goto :goto_0
.end method

.method public static createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/graphics/LauncherIcons;->createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 325
    new-instance v0, Lcom/android/launcher3/graphics/LauncherIcons$1;

    invoke-direct {v0, p2}, Lcom/android/launcher3/graphics/LauncherIcons$1;-><init>(Landroid/graphics/Bitmap;)V

    .line 333
    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Lcom/android/launcher3/graphics/LauncherIcons;->createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;ZLcom/android/launcher3/util/Provider;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/launcher3/graphics/LauncherIcons;->createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;ZLcom/android/launcher3/util/Provider;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;ZLcom/android/launcher3/util/Provider;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 338
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    .line 339
    invoke-static {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object v2

    .line 341
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    .line 339
    invoke-virtual {v2, p0, v3}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getShortcutIconDrawable(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 342
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v1

    .line 344
    if-eqz v2, :cond_1

    .line 346
    const/4 v0, 0x0

    .line 345
    invoke-static {v2, p1, v0}, Lcom/android/launcher3/graphics/LauncherIcons;->createScaledBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 356
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    .line 357
    return-object v0

    .line 348
    :cond_1
    if-eqz p3, :cond_2

    .line 349
    invoke-virtual {p3}, Lcom/android/launcher3/util/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 351
    :cond_2
    if-nez v0, :cond_0

    .line 352
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 359
    :cond_3
    invoke-static {v0, p1}, Lcom/android/launcher3/graphics/LauncherIcons;->addShadowToIcon(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 360
    invoke-static {p0, v1}, Lcom/android/launcher3/graphics/LauncherIcons;->getShortcutInfoBadge(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Lcom/android/launcher3/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/graphics/LauncherIcons;->badgeWithBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getShortcutInfoBadge(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Lcom/android/launcher3/IconCache;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 365
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_0

    .line 368
    new-instance v1, Lcom/android/launcher3/AppInfo;

    invoke-direct {v1}, Lcom/android/launcher3/AppInfo;-><init>()V

    .line 369
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/AppInfo;->user:Landroid/os/UserHandle;

    .line 370
    iput-object v0, v1, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 371
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    const-string/jumbo v3, "android.intent.category.LAUNCHER"

    .line 371
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/AppInfo;->intent:Landroid/content/Intent;

    .line 374
    invoke-virtual {p1, v1, v4}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Z)V

    .line 375
    iget-object v0, v1, Lcom/android/launcher3/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 381
    :goto_0
    return-object v0

    .line 377
    :cond_0
    new-instance v0, Lcom/android/launcher3/model/PackageItemInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/PackageItemInfo;-><init>(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p1, v0, v4}, Lcom/android/launcher3/IconCache;->getTitleAndIconForApp(Lcom/android/launcher3/model/PackageItemInfo;Z)V

    .line 379
    iget-object v0, v0, Lcom/android/launcher3/model/PackageItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method static wrapToAdaptiveIconDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 295
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    return-object p1

    .line 300
    :cond_0
    :try_start_0
    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-nez v0, :cond_1

    .line 302
    const/high16 v0, 0x7f020000

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 301
    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 303
    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/graphics/FixedScaleDrawable;

    .line 304
    invoke-virtual {v1, p1}, Lcom/android/launcher3/graphics/FixedScaleDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    invoke-virtual {v1, p2}, Lcom/android/launcher3/graphics/FixedScaleDrawable;->setScale(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    return-object v0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    return-object p1

    .line 311
    :cond_1
    return-object p1
.end method
