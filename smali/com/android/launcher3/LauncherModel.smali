.class public Lcom/android/launcher3/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;


# static fields
.field static final mBindCompleteRunnables:Ljava/util/ArrayList;

.field static final sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field static final sWorker:Landroid/os/Handler;

.field static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field final mApp:Lcom/android/launcher3/LauncherAppState;

.field private final mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

.field private final mBgWidgetsModel:Lcom/android/launcher3/model/WidgetsModel;

.field mCallbacks:Ljava/lang/ref/WeakReference;

.field mHandler:Lcom/android/launcher3/DeferredHandler;

.field mHasLoaderCompletedOnce:Z

.field private mHasShortcutHostPermission:Z

.field private final mIconCache:Lcom/android/launcher3/IconCache;

.field mIsLoaderTaskRunning:Z

.field private final mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

.field mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

.field final mLock:Ljava/lang/Object;

.field private mModelLoaded:Z

.field private final mShortcutPermissionCheckRunnable:Ljava/lang/Runnable;

.field private final mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/AllAppsList;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/model/WidgetsModel;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mBgWidgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/launcher3/LauncherModel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mHasShortcutHostPermission:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/IconCache;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/IconCache;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/compat/LauncherAppsCompat;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/launcher3/LauncherModel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mModelLoaded:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/compat/UserManagerCompat;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/launcher3/LauncherModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/LauncherModel;->mHasShortcutHostPermission:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/launcher3/LauncherModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/LauncherModel;->mModelLoaded:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/LauncherModel$Callbacks;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherModel;->bindWidgetsModel(Lcom/android/launcher3/LauncherModel$Callbacks;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/launcher3/LauncherModel;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic -wrap2(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 121
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "launcher-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    .line 123
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 125
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher3/LauncherModel;->sWorker:Landroid/os/Handler;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherModel;->mBindCompleteRunnables:Ljava/util/ArrayList;

    .line 170
    new-instance v0, Lcom/android/launcher3/model/BgDataModel;

    invoke-direct {v0}, Lcom/android/launcher3/model/BgDataModel;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 104
    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/IconCache;Lcom/android/launcher3/AppFilter;)V
    .locals 2

    .prologue
    .line 211
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    .line 116
    new-instance v0, Lcom/android/launcher3/DeferredHandler;

    invoke-direct {v0}, Lcom/android/launcher3/DeferredHandler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/DeferredHandler;

    .line 153
    new-instance v0, Lcom/android/launcher3/LauncherModel$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherModel$1;-><init>(Lcom/android/launcher3/LauncherModel;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mShortcutPermissionCheckRunnable:Ljava/lang/Runnable;

    .line 212
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 213
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 214
    new-instance v1, Lcom/android/launcher3/AllAppsList;

    invoke-direct {v1, p2, p3}, Lcom/android/launcher3/AllAppsList;-><init>(Lcom/android/launcher3/IconCache;Lcom/android/launcher3/AppFilter;)V

    iput-object v1, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    .line 215
    new-instance v1, Lcom/android/launcher3/model/WidgetsModel;

    invoke-direct {v1, p2, p3}, Lcom/android/launcher3/model/WidgetsModel;-><init>(Lcom/android/launcher3/IconCache;Lcom/android/launcher3/AppFilter;)V

    iput-object v1, p0, Lcom/android/launcher3/LauncherModel;->mBgWidgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    .line 216
    iput-object p2, p0, Lcom/android/launcher3/LauncherModel;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 218
    invoke-static {v0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/LauncherModel;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    .line 219
    invoke-static {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 220
    return-void
.end method

.method private bindWidgetsModel(Lcom/android/launcher3/LauncherModel$Callbacks;)V
    .locals 3

    .prologue
    .line 1916
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mBgWidgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    invoke-virtual {v0}, Lcom/android/launcher3/model/WidgetsModel;->getWidgetsMap()Lcom/android/launcher3/util/MultiHashMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/MultiHashMap;->clone()Lcom/android/launcher3/util/MultiHashMap;

    move-result-object v0

    .line 1917
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/DeferredHandler;

    new-instance v2, Lcom/android/launcher3/LauncherModel$8;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/LauncherModel$8;-><init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/LauncherModel$Callbacks;Lcom/android/launcher3/util/MultiHashMap;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1926
    return-void
.end method

.method static checkItemInfo(Lcom/android/launcher3/ItemInfo;)V
    .locals 4

    .prologue
    .line 316
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 317
    iget-wide v2, p0, Lcom/android/launcher3/ItemInfo;->id:J

    .line 318
    new-instance v1, Lcom/android/launcher3/LauncherModel$2;

    invoke-direct {v1, v2, v3, p0, v0}, Lcom/android/launcher3/LauncherModel$2;-><init>(JLcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 325
    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 326
    return-void
.end method

.method static checkItemInfoLocked(JLcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 8

    .prologue
    .line 279
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 280
    if-eqz v0, :cond_4

    if-eq p2, v0, :cond_4

    .line 282
    instance-of v1, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v1, :cond_0

    instance-of v1, p2, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 283
    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    move-object v2, p2

    .line 284
    check-cast v2, Lcom/android/launcher3/ShortcutInfo;

    .line 285
    iget-object v3, v1, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    iget-object v3, v1, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    iget-object v4, v2, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    .line 285
    if-eqz v3, :cond_0

    .line 287
    iget-wide v4, v1, Lcom/android/launcher3/ShortcutInfo;->id:J

    iget-wide v6, v2, Lcom/android/launcher3/ShortcutInfo;->id:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 288
    iget v3, v1, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    iget v4, v2, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    if-ne v3, v4, :cond_0

    .line 289
    iget-wide v4, v1, Lcom/android/launcher3/ShortcutInfo;->container:J

    iget-wide v6, v2, Lcom/android/launcher3/ShortcutInfo;->container:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 290
    iget-wide v4, v1, Lcom/android/launcher3/ShortcutInfo;->screenId:J

    iget-wide v6, v2, Lcom/android/launcher3/ShortcutInfo;->screenId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 291
    iget v3, v1, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    iget v4, v2, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    if-ne v3, v4, :cond_0

    .line 292
    iget v3, v1, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    iget v4, v2, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    if-ne v3, v4, :cond_0

    .line 293
    iget v3, v1, Lcom/android/launcher3/ShortcutInfo;->spanX:I

    iget v4, v2, Lcom/android/launcher3/ShortcutInfo;->spanX:I

    if-ne v3, v4, :cond_0

    .line 294
    iget v1, v1, Lcom/android/launcher3/ShortcutInfo;->spanY:I

    iget v2, v2, Lcom/android/launcher3/ShortcutInfo;->spanY:I

    if-ne v1, v2, :cond_0

    .line 296
    return-void

    .line 303
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/launcher3/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 304
    const-string/jumbo v2, "modelItem: "

    .line 303
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 305
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher3/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 306
    const-string/jumbo v1, "Error: ItemInfo passed to checkItemInfo doesn\'t match original"

    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 308
    if-eqz p3, :cond_1

    .line 309
    invoke-virtual {v1, p3}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 311
    :cond_1
    throw v1

    .line 303
    :cond_2
    const-string/jumbo v1, "null"

    goto :goto_0

    .line 305
    :cond_3
    const-string/jumbo v0, "null"

    goto :goto_1

    .line 313
    :cond_4
    return-void
.end method

.method public static getWorkerLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 1987
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method static isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1947
    if-eqz p0, :cond_0

    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 1948
    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1947
    :cond_0
    return v0
.end method

.method public static loadWorkspaceScreensDb(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 581
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 582
    sget-object v1, Lcom/android/launcher3/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    .line 586
    const-string/jumbo v5, "screenRank"

    move-object v3, v2

    move-object v4, v2

    .line 585
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/provider/LauncherDbUtils;->getScreenIdsFromCursor(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 225
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/DeferredHandler;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private static runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 236
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 237
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private stopLoaderLocked()V
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    .line 526
    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->stopLocked()V

    .line 529
    :cond_0
    return-void
.end method

.method public static updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 10

    .prologue
    .line 333
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 334
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 335
    sget-object v3, Lcom/android/launcher3/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    .line 338
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 339
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 341
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_0

    .line 342
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 346
    :cond_1
    new-instance v0, Lcom/android/launcher3/LauncherModel$3;

    invoke-direct {v0, v3, v1, v2}, Lcom/android/launcher3/LauncherModel$3;-><init>(Landroid/net/Uri;Ljava/util/ArrayList;Landroid/content/ContentResolver;)V

    .line 373
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 374
    return-void
.end method


# virtual methods
.method public addAndBindAddedWorkspaceItems(Lcom/android/launcher3/util/Provider;)V
    .locals 1

    .prologue
    .line 270
    new-instance v0, Lcom/android/launcher3/model/AddWorkspaceItemsTask;

    invoke-direct {v0, p1}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;-><init>(Lcom/android/launcher3/util/Provider;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;)V

    .line 271
    return-void
.end method

.method public addAndBindAddedWorkspaceItems(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 262
    invoke-static {p1}, Lcom/android/launcher3/util/Provider;->of(Ljava/lang/Object;)Lcom/android/launcher3/util/Provider;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->addAndBindAddedWorkspaceItems(Lcom/android/launcher3/util/Provider;)V

    .line 263
    return-void
.end method

.method public bindDeepShortcuts()V
    .locals 2

    .prologue
    .line 1783
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/MultiHashMap;->clone()Lcom/android/launcher3/util/MultiHashMap;

    move-result-object v0

    .line 1784
    new-instance v1, Lcom/android/launcher3/LauncherModel$5;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/LauncherModel$5;-><init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/util/MultiHashMap;)V

    .line 1793
    invoke-direct {p0, v1}, Lcom/android/launcher3/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 1794
    return-void
.end method

.method public dumpState(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1952
    array-length v0, p4

    if-lez v0, :cond_0

    aget-object v0, p4, v1

    const-string/jumbo v1, "--all"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "All apps list: size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    iget-object v1, v1, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1954
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    iget-object v0, v0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 1955
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "   title=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" iconBitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1956
    const-string/jumbo v3, " componentName="

    .line 1955
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1956
    iget-object v0, v0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1955
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1959
    :cond_0
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher3/model/BgDataModel;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1960
    return-void
.end method

.method enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;)V
    .locals 1

    .prologue
    .line 1819
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mModelLoaded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    if-nez v0, :cond_0

    .line 1823
    return-void

    .line 1825
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;->init(Lcom/android/launcher3/LauncherModel;)V

    .line 1826
    invoke-static {p1}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1827
    return-void
.end method

.method public findFolderById(Ljava/lang/Long;)Lcom/android/launcher3/FolderInfo;
    .locals 4

    .prologue
    .line 1970
    sget-object v1, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v1

    .line 1971
    :try_start_0
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1970
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public forceReload()V
    .locals 2

    .prologue
    .line 493
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 495
    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel;->stopLoaderLocked()V

    .line 496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mModelLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 502
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->startLoaderFromBackground()V

    .line 503
    return-void

    .line 493
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1963
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$Callbacks;

    :cond_0
    return-object v0
.end method

.method public getWriter(Z)Lcom/android/launcher3/model/ModelWriter;
    .locals 3

    .prologue
    .line 274
    new-instance v0, Lcom/android/launcher3/model/ModelWriter;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/launcher3/model/ModelWriter;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Z)V

    return-object v0
.end method

.method public initialize(Lcom/android/launcher3/LauncherModel$Callbacks;)V
    .locals 2

    .prologue
    .line 380
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 381
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 383
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/DeferredHandler;

    invoke-virtual {v0}, Lcom/android/launcher3/DeferredHandler;->cancelAll()V

    .line 384
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 386
    return-void

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isCurrentCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 532
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isModelLoaded()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 133
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-boolean v2, p0, Lcom/android/launcher3/LauncherModel;->mModelLoaded:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1

    return v0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 407
    new-instance v0, Lcom/android/launcher3/model/PackageUpdatedTask;

    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v3, p2, v1}, Lcom/android/launcher3/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;)V

    .line 408
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4

    .prologue
    .line 390
    const/4 v0, 0x2

    .line 391
    new-instance v1, Lcom/android/launcher3/model/PackageUpdatedTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v0, p2, v2}, Lcom/android/launcher3/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;)V

    .line 392
    return-void
.end method

.method public onPackageIconsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 2

    .prologue
    .line 1814
    new-instance v0, Lcom/android/launcher3/model/CacheDataUpdatedTask;

    .line 1815
    const/4 v1, 0x1

    .line 1814
    invoke-direct {v0, v1, p2, p1}, Lcom/android/launcher3/model/CacheDataUpdatedTask;-><init>(ILandroid/os/UserHandle;Ljava/util/HashSet;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;)V

    .line 1816
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .prologue
    .line 396
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/android/launcher3/LauncherModel;->onPackagesRemoved(Landroid/os/UserHandle;[Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 2

    .prologue
    .line 414
    new-instance v0, Lcom/android/launcher3/model/PackageUpdatedTask;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p2, p1}, Lcom/android/launcher3/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;)V

    .line 415
    return-void
.end method

.method public varargs onPackagesRemoved(Landroid/os/UserHandle;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 400
    const/4 v0, 0x3

    .line 401
    new-instance v1, Lcom/android/launcher3/model/PackageUpdatedTask;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/launcher3/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;)V

    .line 402
    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .prologue
    .line 428
    new-instance v0, Lcom/android/launcher3/model/PackageUpdatedTask;

    .line 429
    const/4 v1, 0x5

    .line 428
    invoke-direct {v0, v1, p2, p1}, Lcom/android/launcher3/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;)V

    .line 430
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 2

    .prologue
    .line 420
    if-nez p3, :cond_0

    .line 421
    new-instance v0, Lcom/android/launcher3/model/PackageUpdatedTask;

    .line 422
    const/4 v1, 0x4

    .line 421
    invoke-direct {v0, v1, p2, p1}, Lcom/android/launcher3/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;)V

    .line 424
    :cond_0
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .prologue
    .line 434
    new-instance v0, Lcom/android/launcher3/model/PackageUpdatedTask;

    .line 435
    const/4 v1, 0x6

    .line 434
    invoke-direct {v0, v1, p2, p1}, Lcom/android/launcher3/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;)V

    .line 436
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 457
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 458
    const-string/jumbo v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 462
    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 461
    if-eqz v0, :cond_3

    .line 463
    :cond_2
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->enableAndResetCache()V

    .line 464
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    goto :goto_0

    .line 465
    :cond_3
    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 466
    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 465
    if-nez v0, :cond_4

    .line 467
    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 465
    if-eqz v0, :cond_8

    .line 468
    :cond_4
    const-string/jumbo v0, "android.intent.extra.USER"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 469
    if-eqz v0, :cond_0

    .line 470
    const-string/jumbo v2, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 471
    const-string/jumbo v2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 470
    if-eqz v2, :cond_6

    .line 472
    :cond_5
    new-instance v2, Lcom/android/launcher3/model/PackageUpdatedTask;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 473
    const/4 v4, 0x7

    .line 472
    invoke-direct {v2, v4, v0, v3}, Lcom/android/launcher3/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;)V

    .line 478
    :cond_6
    const-string/jumbo v2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 479
    const-string/jumbo v2, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 478
    if-eqz v1, :cond_0

    .line 480
    :cond_7
    new-instance v1, Lcom/android/launcher3/model/UserLockStateChangedTask;

    invoke-direct {v1, v0}, Lcom/android/launcher3/model/UserLockStateChangedTask;-><init>(Landroid/os/UserHandle;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;)V

    goto :goto_0

    .line 483
    :cond_8
    const-string/jumbo v0, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    invoke-static {p1}, Lcom/android/launcher3/dynamicui/ExtractionUtils;->startColorExtractionServiceIfNecessary(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 2

    .prologue
    .line 441
    new-instance v0, Lcom/android/launcher3/model/ShortcutsChangedTask;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/launcher3/model/ShortcutsChangedTask;-><init>(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;)V

    .line 442
    return-void
.end method

.method public refreshAndBindWidgetsAndShortcuts(Lcom/android/launcher3/LauncherModel$Callbacks;ZLcom/android/launcher3/util/PackageUserKey;)V
    .locals 1

    .prologue
    .line 1930
    new-instance v0, Lcom/android/launcher3/LauncherModel$9;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/launcher3/LauncherModel$9;-><init>(Lcom/android/launcher3/LauncherModel;ZLcom/android/launcher3/LauncherModel$Callbacks;Lcom/android/launcher3/util/PackageUserKey;)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1944
    return-void
.end method

.method public refreshShortcutsIfRequired()V
    .locals 2

    .prologue
    .line 1802
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT_MR1:Z

    if-eqz v0, :cond_0

    .line 1803
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorker:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mShortcutPermissionCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1804
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorker:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mShortcutPermissionCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1806
    :cond_0
    return-void
.end method

.method public setPackageState(Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;)V
    .locals 1

    .prologue
    .line 245
    new-instance v0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;

    invoke-direct {v0, p1}, Lcom/android/launcher3/model/PackageInstallStateChangedTask;-><init>(Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;)V

    .line 246
    return-void
.end method

.method public startLoader(I)Z
    .locals 3

    .prologue
    .line 541
    invoke-static {}, Lcom/android/launcher3/InstallShortcutReceiver;->enableInstallQueue()V

    .line 542
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 544
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 547
    new-instance v2, Lcom/android/launcher3/LauncherModel$4;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/LauncherModel$4;-><init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/LauncherModel$Callbacks;)V

    invoke-direct {p0, v2}, Lcom/android/launcher3/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 554
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel;->stopLoaderLocked()V

    .line 555
    new-instance v0, Lcom/android/launcher3/LauncherModel$LoaderTask;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2, p1}, Lcom/android/launcher3/LauncherModel$LoaderTask;-><init>(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    .line 556
    const/16 v0, -0x3e9

    if-eq p1, v0, :cond_0

    .line 557
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mModelLoaded:Z

    .line 556
    if-eqz v0, :cond_0

    .line 557
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z

    xor-int/lit8 v0, v0, 0x1

    .line 556
    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherModel$LoaderTask;->runBindSynchronousPage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 561
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 562
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sWorker:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v1

    .line 566
    const/4 v0, 0x0

    return v0

    .line 542
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startLoaderFromBackground()V
    .locals 2

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 513
    if-eqz v0, :cond_0

    .line 515
    invoke-interface {v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->setLoadOnResume()Z

    move-result v1

    if-nez v1, :cond_0

    .line 516
    invoke-interface {v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->getCurrentWorkspaceScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->startLoader(I)Z

    .line 519
    :cond_0
    return-void
.end method

.method public stopLoader()V
    .locals 2

    .prologue
    .line 570
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 571
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->stopLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 575
    return-void

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updateAndBindShortcutInfo(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;)V
    .locals 1

    .prologue
    .line 1889
    new-instance v0, Lcom/android/launcher3/LauncherModel$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/LauncherModel$6;-><init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->updateAndBindShortcutInfo(Lcom/android/launcher3/util/Provider;)V

    .line 1897
    return-void
.end method

.method public updateAndBindShortcutInfo(Lcom/android/launcher3/util/Provider;)V
    .locals 1

    .prologue
    .line 1903
    new-instance v0, Lcom/android/launcher3/LauncherModel$7;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/LauncherModel$7;-><init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/util/Provider;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;)V

    .line 1912
    return-void
.end method

.method public updatePinnedShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 2

    .prologue
    .line 446
    new-instance v0, Lcom/android/launcher3/model/ShortcutsChangedTask;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/launcher3/model/ShortcutsChangedTask;-><init>(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;)V

    .line 447
    return-void
.end method

.method public updateSessionDisplayInfo(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 252
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 253
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance v1, Lcom/android/launcher3/model/CacheDataUpdatedTask;

    .line 255
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x2

    .line 254
    invoke-direct {v1, v3, v2, v0}, Lcom/android/launcher3/model/CacheDataUpdatedTask;-><init>(ILandroid/os/UserHandle;Ljava/util/HashSet;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;)V

    .line 256
    return-void
.end method
