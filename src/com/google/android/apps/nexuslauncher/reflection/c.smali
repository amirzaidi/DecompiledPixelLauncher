.class public Lcom/google/android/apps/nexuslauncher/reflection/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field static final MSG_DESTROY:I = 0x1

.field static final MSG_INIT:I

.field private static bj:Lcom/google/android/apps/nexuslauncher/reflection/c;


# instance fields
.field private final bi:Lcom/android/launcher3/InvariantDeviceProfile;

.field private final mContext:Landroid/content/Context;

.field final mMessageHandler:Landroid/os/Handler;

.field mServiceHandler:Lcom/google/android/apps/nexuslauncher/reflection/n;

.field final mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/reflection/c;->LOCK:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->mServiceHandler:Lcom/google/android/apps/nexuslauncher/reflection/n;

    .line 59
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->mContext:Landroid/content/Context;

    .line 60
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "reflection-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->mWorkerThread:Landroid/os/HandlerThread;

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->mMessageHandler:Landroid/os/Handler;

    .line 63
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->bi:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 64
    return-void
.end method

.method private aA()I
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->bi:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->landscapeProfile:Lcom/android/launcher3/DeviceProfile;

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->allAppsNumPredictiveCols:I

    .line 126
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->bi:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->portraitProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->allAppsNumPredictiveCols:I

    .line 125
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private aB()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->mServiceHandler:Lcom/google/android/apps/nexuslauncher/reflection/n;

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/a;->am(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->mServiceHandler:Lcom/google/android/apps/nexuslauncher/reflection/n;

    .line 70
    :cond_0
    return-void
.end method

.method private az()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->mServiceHandler:Lcom/google/android/apps/nexuslauncher/reflection/n;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->mServiceHandler:Lcom/google/android/apps/nexuslauncher/reflection/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/n;->bd(Z)V

    .line 75
    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->mServiceHandler:Lcom/google/android/apps/nexuslauncher/reflection/n;

    .line 77
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/c;
    .locals 5

    .prologue
    .line 48
    sget-object v1, Lcom/google/android/apps/nexuslauncher/reflection/c;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/c;->bj:Lcom/google/android/apps/nexuslauncher/reflection/c;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/apps/nexuslauncher/reflection/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/reflection/c;->bj:Lcom/google/android/apps/nexuslauncher/reflection/c;

    .line 51
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/c;->bj:Lcom/google/android/apps/nexuslauncher/reflection/c;

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 52
    const-string/jumbo v3, "pref_show_predictions"

    const/4 v4, 0x1

    .line 51
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/nexuslauncher/reflection/c;->aD(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 55
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/c;->bj:Lcom/google/android/apps/nexuslauncher/reflection/c;

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public aC(Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;)V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->mMessageHandler:Landroid/os/Handler;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 150
    return-void
.end method

.method public aD(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 135
    if-eqz p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 142
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public ax(Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->mMessageHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 156
    return-void
.end method

.method public ay(J)V
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 131
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 132
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 121
    const/4 v0, 0x0

    return v0

    .line 83
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/reflection/c;->aB()V

    .line 84
    return v5

    .line 87
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/reflection/c;->az()V

    .line 88
    return v5

    .line 91
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 92
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/util/ComponentKey;

    .line 93
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    .line 94
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->mServiceHandler:Lcom/google/android/apps/nexuslauncher/reflection/n;

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v2

    .line 96
    iget-object v3, v1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    .line 95
    invoke-virtual {v2, v3}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    .line 97
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->mServiceHandler:Lcom/google/android/apps/nexuslauncher/reflection/n;

    .line 98
    iget-object v1, v1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 97
    invoke-virtual {v4, v1, v2, v3}, Lcom/google/android/apps/nexuslauncher/reflection/n;->be(Landroid/content/ComponentName;J)Ljava/lang/String;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->mServiceHandler:Lcom/google/android/apps/nexuslauncher/reflection/n;

    .line 100
    const-string/jumbo v3, "GEL"

    .line 102
    const-string/jumbo v4, "app_launch"

    .line 99
    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/google/android/apps/nexuslauncher/reflection/n;->bf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;)V

    .line 105
    :cond_0
    return v5

    .line 108
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->mServiceHandler:Lcom/google/android/apps/nexuslauncher/reflection/n;

    if-eqz v0, :cond_1

    .line 109
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/reflection/c;->aA()I

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->mServiceHandler:Lcom/google/android/apps/nexuslauncher/reflection/n;

    const-string/jumbo v2, "GEL"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/apps/nexuslauncher/reflection/n;->bg(Ljava/lang/String;I)V

    .line 112
    :cond_1
    return v5

    .line 115
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->mServiceHandler:Lcom/google/android/apps/nexuslauncher/reflection/n;

    if-eqz v0, :cond_2

    .line 116
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/c;->mServiceHandler:Lcom/google/android/apps/nexuslauncher/reflection/n;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/nexuslauncher/reflection/n;->bh(Lcom/android/launcher3/util/PackageUserKey;)V

    .line 118
    :cond_2
    return v5

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
