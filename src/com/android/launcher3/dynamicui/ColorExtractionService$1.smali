.class final Lcom/android/launcher3/dynamicui/ColorExtractionService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/dynamicui/ColorExtractionService;

.field final synthetic val$jobParameters:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dynamicui/ColorExtractionService;Landroid/app/job/JobParameters;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/dynamicui/ColorExtractionService$1;->this$0:Lcom/android/launcher3/dynamicui/ColorExtractionService;

    iput-object p2, p0, Lcom/android/launcher3/dynamicui/ColorExtractionService$1;->val$jobParameters:Landroid/app/job/JobParameters;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 79
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/ColorExtractionService$1;->this$0:Lcom/android/launcher3/dynamicui/ColorExtractionService;

    .line 78
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/android/launcher3/dynamicui/ExtractionUtils;->getWallpaperId(Landroid/app/WallpaperManager;)I

    move-result v1

    .line 82
    new-instance v2, Lcom/android/launcher3/dynamicui/ExtractedColors;

    invoke-direct {v2}, Lcom/android/launcher3/dynamicui/ExtractedColors;-><init>()V

    .line 83
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v2, v4}, Lcom/android/launcher3/dynamicui/ExtractedColors;->updateHotseatPalette(Landroid/support/v7/a/a;)V

    .line 88
    invoke-virtual {v2, v4}, Lcom/android/launcher3/dynamicui/ExtractedColors;->updateWallpaperThemePalette(Landroid/support/v7/a/a;)V

    .line 105
    :goto_0
    invoke-virtual {v2}, Lcom/android/launcher3/dynamicui/ExtractedColors;->encodeAsString()Ljava/lang/String;

    move-result-object v0

    .line 106
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 107
    const-string/jumbo v3, "extra_wallpaperId"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    const-string/jumbo v1, "extra_extractedColors"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/ColorExtractionService$1;->this$0:Lcom/android/launcher3/dynamicui/ColorExtractionService;

    invoke-virtual {v0}, Lcom/android/launcher3/dynamicui/ColorExtractionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 110
    sget-object v1, Lcom/android/launcher3/LauncherSettings$Settings;->CONTENT_URI:Landroid/net/Uri;

    .line 111
    const-string/jumbo v3, "set_extracted_colors_and_wallpaper_id_setting"

    .line 109
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 113
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/ColorExtractionService$1;->this$0:Lcom/android/launcher3/dynamicui/ColorExtractionService;

    iget-object v1, p0, Lcom/android/launcher3/dynamicui/ColorExtractionService$1;->val$jobParameters:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/dynamicui/ColorExtractionService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 115
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/ColorExtractionService$1;->this$0:Lcom/android/launcher3/dynamicui/ColorExtractionService;

    invoke-static {v0}, Lcom/android/launcher3/dynamicui/ColorExtractionService;->-wrap0(Lcom/android/launcher3/dynamicui/ColorExtractionService;)Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/launcher3/dynamicui/ExtractedColors;->updateHotseatPalette(Landroid/support/v7/a/a;)V

    .line 100
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/ColorExtractionService$1;->this$0:Lcom/android/launcher3/dynamicui/ColorExtractionService;

    invoke-static {v0}, Lcom/android/launcher3/dynamicui/ColorExtractionService;->-wrap1(Lcom/android/launcher3/dynamicui/ColorExtractionService;)Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/launcher3/dynamicui/ExtractedColors;->updateWallpaperThemePalette(Landroid/support/v7/a/a;)V

    goto :goto_0
.end method
