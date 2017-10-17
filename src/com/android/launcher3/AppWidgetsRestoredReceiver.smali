.class public Lcom/android/launcher3/AppWidgetsRestoredReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static restoreAppWidgetIds(Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;[I[I)V
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 47
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v8

    .line 48
    new-instance v9, Landroid/appwidget/AppWidgetHost;

    const/16 v1, 0x400

    invoke-direct {v9, p0, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    move v6, v7

    .line 50
    :goto_0
    array-length v1, p2

    if-ge v6, v1, :cond_3

    .line 51
    const-string/jumbo v1, "AWRestoredReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Widget state restore id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p2, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    aget v1, p3, v6

    invoke-virtual {v8, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 55
    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    const/4 v1, 0x4

    .line 62
    :goto_1
    new-array v4, v11, [Ljava/lang/String;

    aget v2, p2, v6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v7

    .line 63
    new-instance v2, Lcom/android/launcher3/util/ContentWriter;

    new-instance v3, Lcom/android/launcher3/util/ContentWriter$CommitParams;

    .line 64
    const-string/jumbo v10, "appWidgetId=? and (restored & 1) = 1"

    .line 63
    invoke-direct {v3, v10, v4}, Lcom/android/launcher3/util/ContentWriter$CommitParams;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;Lcom/android/launcher3/util/ContentWriter$CommitParams;)V

    .line 65
    const-string/jumbo v3, "appWidgetId"

    aget v10, p3, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 63
    invoke-virtual {v2, v3, v10}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v2

    .line 66
    const-string/jumbo v3, "restored"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 63
    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    move-result v1

    .line 69
    if-nez v1, :cond_1

    .line 70
    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 71
    new-array v2, v11, [Ljava/lang/String;

    const-string/jumbo v3, "appWidgetId"

    aput-object v3, v2, v7

    .line 72
    const-string/jumbo v3, "appWidgetId=?"

    .line 70
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 74
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    aget v2, p3, v6

    invoke-virtual {v9, v2}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 50
    :cond_1
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_0

    .line 59
    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 78
    throw v0

    .line 84
    :cond_3
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_4

    .line 86
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    .line 88
    :cond_4
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 89
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 23
    const-string/jumbo v0, "android.appwidget.action.APPWIDGET_HOST_RESTORED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    const-string/jumbo v0, "appWidgetOldIds"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v4

    .line 25
    const-string/jumbo v0, "appWidgetIds"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    .line 26
    array-length v0, v4

    array-length v1, v5

    if-ne v0, v1, :cond_1

    .line 27
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetsRestoredReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v3

    .line 28
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 29
    new-instance v0, Lcom/android/launcher3/AppWidgetsRestoredReceiver$1;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/AppWidgetsRestoredReceiver$1;-><init>(Lcom/android/launcher3/AppWidgetsRestoredReceiver;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;[I[I)V

    .line 28
    invoke-virtual {v6, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    const-string/jumbo v0, "AWRestoredReceiver"

    const-string/jumbo v1, "Invalid host restored received"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
