.class public Lcom/android/launcher3/dynamicui/ColorExtractionService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    const-string/jumbo v0, "ColorExtractionService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method private getHotseatPalette()Landroid/support/v7/a/a;
    .locals 12

    .prologue
    const/high16 v10, 0x3f400000    # 0.75f

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 87
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    .line 88
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT:Z

    if-eqz v0, :cond_1

    .line 90
    const/4 v0, 0x1

    .line 89
    :try_start_0
    invoke-virtual {v3, v0}, Landroid/app/WallpaperManager;->getWallpaperFile(I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 92
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const/4 v4, 0x0

    .line 91
    invoke-static {v0, v4}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v4

    .line 94
    new-instance v5, Landroid/graphics/Rect;

    int-to-float v6, v4

    mul-float/2addr v6, v10

    float-to-int v6, v6

    .line 95
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v7

    .line 94
    const/4 v8, 0x0

    invoke-direct {v5, v8, v6, v7, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 96
    const/4 v4, 0x0

    invoke-virtual {v0, v5, v4}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 97
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 98
    if-eqz v4, :cond_3

    .line 99
    invoke-static {v4}, Landroid/support/v7/a/a;->acs(Landroid/graphics/Bitmap;)Landroid/support/v7/a/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/c;->acC()Landroid/support/v7/a/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/c;->acD()Landroid/support/v7/a/a;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    .line 103
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    const-string/jumbo v1, "ColorExtractionService"

    const-string/jumbo v2, "Fetching partial bitmap failed, trying old method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    :cond_1
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 107
    invoke-static {v0}, Landroid/support/v7/a/a;->acs(Landroid/graphics/Bitmap;)Landroid/support/v7/a/c;

    move-result-object v1

    .line 108
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v10

    float-to-int v2, v2

    .line 109
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 107
    invoke-virtual {v1, v9, v2, v3, v0}, Landroid/support/v7/a/c;->acA(IIII)Landroid/support/v7/a/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/c;->acC()Landroid/support/v7/a/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/c;->acD()Landroid/support/v7/a/a;

    move-result-object v0

    return-object v0

    .line 103
    :catch_1
    move-exception v2

    goto :goto_0

    .line 99
    :cond_2
    return-object v0

    .line 103
    :cond_3
    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    :goto_1
    if-eqz v2, :cond_1

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v2

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    :goto_3
    if-eqz v1, :cond_5

    :try_start_7
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0

    :cond_5
    :goto_4
    if-eqz v2, :cond_7

    :try_start_8
    throw v2

    :catch_4
    move-exception v1

    if-nez v2, :cond_6

    move-object v2, v1

    goto :goto_4

    :cond_6
    if-eq v2, v1, :cond_5

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/android/launcher3/dynamicui/ExtractionUtils;->getWallpaperId(Landroid/app/WallpaperManager;)I

    move-result v1

    .line 60
    new-instance v2, Lcom/android/launcher3/dynamicui/ExtractedColors;

    invoke-direct {v2}, Lcom/android/launcher3/dynamicui/ExtractedColors;-><init>()V

    .line 61
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v2, v4}, Lcom/android/launcher3/dynamicui/ExtractedColors;->updateHotseatPalette(Landroid/support/v7/a/a;)V

    .line 75
    :goto_0
    invoke-virtual {v2}, Lcom/android/launcher3/dynamicui/ExtractedColors;->encodeAsString()Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 77
    const-string/jumbo v3, "extra_wallpaperId"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    const-string/jumbo v1, "extra_extractedColors"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/launcher3/dynamicui/ColorExtractionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 80
    sget-object v1, Lcom/android/launcher3/LauncherSettings$Settings;->CONTENT_URI:Landroid/net/Uri;

    .line 81
    const-string/jumbo v3, "set_extracted_colors_and_wallpaper_id_setting"

    .line 79
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 83
    return-void

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/dynamicui/ColorExtractionService;->getHotseatPalette()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/launcher3/dynamicui/ExtractedColors;->updateHotseatPalette(Landroid/support/v7/a/a;)V

    goto :goto_0
.end method
