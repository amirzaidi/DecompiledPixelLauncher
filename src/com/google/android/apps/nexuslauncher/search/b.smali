.class public Lcom/google/android/apps/nexuslauncher/search/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/allapps/search/SearchAlgorithm;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static eF:Landroid/os/HandlerThread;


# instance fields
.field private final eE:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/search/b;->mContext:Landroid/content/Context;

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/b;->mUiHandler:Landroid/os/Handler;

    .line 38
    sget-object v0, Lcom/google/android/apps/nexuslauncher/search/b;->eF:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "search-thread"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/search/b;->eF:Landroid/os/HandlerThread;

    .line 40
    sget-object v0, Lcom/google/android/apps/nexuslauncher/search/b;->eF:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 43
    :cond_0
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/google/android/apps/nexuslauncher/search/b;->eF:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/b;->eE:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method private dj(Lcom/google/android/apps/nexuslauncher/search/c;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 77
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 78
    const-string/jumbo v1, "content"

    .line 77
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 79
    const-string/jumbo v1, "com.google.android.apps.nexuslauncher.appssearch"

    .line 77
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 80
    iget-object v1, p1, Lcom/google/android/apps/nexuslauncher/search/c;->eH:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/b;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 83
    :try_start_1
    const-string/jumbo v0, "suggest_intent_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 84
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    iget-object v2, p1, Lcom/google/android/apps/nexuslauncher/search/c;->eI:Ljava/util/ArrayList;

    .line 86
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/search/b;->mContext:Landroid/content/Context;

    .line 85
    invoke-static {v3, v4}, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->dl(Landroid/net/Uri;Landroid/content/Context;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    move-object v6, v0

    move-object v0, v2

    :goto_2
    if-eqz v1, :cond_0

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_3
    if-eqz v6, :cond_4

    throw v6

    :cond_1
    if-eqz v1, :cond_2

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_4
    if-eqz v6, :cond_5

    throw v6

    :catch_1
    move-exception v6

    goto :goto_4

    :catch_2
    move-exception v1

    if-nez v6, :cond_3

    move-object v6, v1

    goto :goto_3

    :cond_3
    if-eq v6, v1, :cond_0

    invoke-virtual {v6, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    throw v0

    .line 89
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/b;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 90
    return-void

    .line 88
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method


# virtual methods
.method public cancel(Z)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/b;->eE:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 55
    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/b;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 58
    :cond_0
    return-void
.end method

.method public doSearch(Ljava/lang/String;Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;)V
    .locals 3

    .prologue
    const/16 v2, 0x64

    .line 48
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/b;->eE:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/b;->eE:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/search/c;

    invoke-direct {v1, p1, p2}, Lcom/google/android/apps/nexuslauncher/search/c;-><init>(Ljava/lang/String;Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;)V

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 50
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 72
    const/4 v0, 0x0

    return v0

    .line 64
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/nexuslauncher/search/c;

    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/search/b;->dj(Lcom/google/android/apps/nexuslauncher/search/c;)V

    .line 65
    return v3

    .line 67
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/nexuslauncher/search/c;

    .line 68
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/search/c;->eG:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/search/c;->eH:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/c;->eI:Ljava/util/ArrayList;

    invoke-interface {v1, v2, v0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;->onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 69
    return v3

    .line 62
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
