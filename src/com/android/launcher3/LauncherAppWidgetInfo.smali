.class public Lcom/android/launcher3/LauncherAppWidgetInfo;
.super Lcom/android/launcher3/ItemInfo;
.source "SourceFile"


# instance fields
.field public appWidgetId:I

.field public bindOptions:Landroid/content/Intent;

.field public installProgress:I

.field private mHasNotifiedInitialWidgetSizeChanged:Z

.field public pendingItemInfo:Lcom/android/launcher3/model/PackageItemInfo;

.field public providerName:Landroid/content/ComponentName;

.field public restoreStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 126
    invoke-direct {p0}, Lcom/android/launcher3/ItemInfo;-><init>()V

    .line 80
    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    .line 92
    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->installProgress:I

    .line 127
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->itemType:I

    .line 128
    return-void
.end method

.method public constructor <init>(ILandroid/content/ComponentName;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 106
    invoke-direct {p0}, Lcom/android/launcher3/ItemInfo;-><init>()V

    .line 80
    iput v1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    .line 92
    iput v1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->installProgress:I

    .line 107
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 108
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->itemType:I

    .line 113
    :goto_0
    iput p1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    .line 114
    iput-object p2, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 118
    iput v1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    .line 119
    iput v1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    .line 121
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 123
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->itemType:I

    goto :goto_0
.end method


# virtual methods
.method protected dumpProperties()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/launcher3/ItemInfo;->dumpProperties()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " appWidgetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hasRestoreFlag(I)Z
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCustomWidget()Z
    .locals 2

    .prologue
    .line 131
    iget v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isWidgetIdAllocated()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 160
    iget v2, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 161
    iget v2, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 161
    goto :goto_0
.end method

.method public onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V
    .locals 3

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/android/launcher3/ItemInfo;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    .line 137
    const-string/jumbo v0, "appWidgetId"

    iget v1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 138
    const-string/jumbo v1, "appWidgetProvider"

    iget-object v2, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 139
    const-string/jumbo v1, "restored"

    iget v2, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 137
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 140
    const-string/jumbo v1, "intent"

    iget-object v2, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    .line 137
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Landroid/content/Intent;)Lcom/android/launcher3/util/ContentWriter;

    .line 141
    return-void
.end method

.method onBindAppWidget(Lcom/android/launcher3/Launcher;Landroid/appwidget/AppWidgetHostView;)V
    .locals 2

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->mHasNotifiedInitialWidgetSizeChanged:Z

    if-nez v0, :cond_0

    .line 149
    iget v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    iget v1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    invoke-static {p2, p1, v0, v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/Launcher;II)V

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->mHasNotifiedInitialWidgetSizeChanged:Z

    .line 152
    :cond_0
    return-void
.end method
