.class public Lcom/google/android/apps/nexuslauncher/smartspace/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static dU:Lcom/google/android/apps/nexuslauncher/smartspace/f;


# instance fields
.field private final dQ:Lcom/google/android/apps/nexuslauncher/smartspace/e;

.field private final dR:Lcom/android/launcher3/Alarm;

.field private dS:Lcom/google/android/apps/nexuslauncher/smartspace/c;

.field private final dT:Lcom/google/android/apps/nexuslauncher/a/a;

.field private final mAppContext:Landroid/content/Context;

.field private final mUiHandler:Landroid/os/Handler;

.field private final mWorker:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->mWorker:Landroid/os/Handler;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->mUiHandler:Landroid/os/Handler;

    .line 74
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->mAppContext:Landroid/content/Context;

    .line 75
    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/e;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/e;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dQ:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    .line 76
    new-instance v0, Lcom/google/android/apps/nexuslauncher/a/a;

    invoke-direct {v0, p1}, Lcom/google/android/apps/nexuslauncher/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dT:Lcom/google/android/apps/nexuslauncher/a/a;

    .line 77
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dR:Lcom/android/launcher3/Alarm;

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dR:Lcom/android/launcher3/Alarm;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/smartspace/k;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/smartspace/k;-><init>(Lcom/google/android/apps/nexuslauncher/smartspace/f;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 85
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dd()V

    .line 88
    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/l;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/smartspace/l;-><init>(Lcom/google/android/apps/nexuslauncher/smartspace/f;)V

    .line 93
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    .line 94
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 95
    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 96
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 97
    const-string/jumbo v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 93
    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/a/b;->dx([Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    .line 88
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    return-void
.end method

.method private db()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 249
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.google.android.apps.gsa.smartspace.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    const-string/jumbo v1, "com.google.android.googlequicksearchbox"

    .line 249
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 251
    const/high16 v1, 0x10000000

    .line 249
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private dc()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dQ:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/e;->cR()Z

    move-result v0

    .line 142
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dQ:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/smartspace/e;->cS()Z

    move-result v1

    .line 143
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dQ:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/smartspace/e;->cU()Z

    .line 144
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dQ:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/e;->cR()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;->dW:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;

    invoke-direct {p0, v3, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/f;->df(Lcom/google/android/apps/nexuslauncher/smartspace/a;Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;)V

    .line 147
    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dQ:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/e;->cS()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 148
    sget-object v0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;->dV:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;

    invoke-direct {p0, v3, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/f;->df(Lcom/google/android/apps/nexuslauncher/smartspace/a;Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;)V

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->mAppContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.google.android.apps.gsa.smartspace.EXPIRE_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    const-string/jumbo v2, "com.google.android.googlequicksearchbox"

    .line 150
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 152
    const/high16 v2, 0x10000000

    .line 150
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 157
    :cond_1
    return-void
.end method

.method private dd()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dS:Lcom/google/android/apps/nexuslauncher/smartspace/c;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dS:Lcom/google/android/apps/nexuslauncher/smartspace/c;

    invoke-interface {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/c;->cq()V

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/f;->de()V

    .line 176
    return-void
.end method

.method private de()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->mAppContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.google.android.apps.gsa.smartspace.ENABLE_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    const-string/jumbo v2, "com.google.android.googlequicksearchbox"

    .line 182
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 184
    const/high16 v2, 0x10000000

    .line 182
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 185
    return-void
.end method

.method private df(Lcom/google/android/apps/nexuslauncher/smartspace/a;Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;)V
    .locals 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->mWorker:Landroid/os/Handler;

    invoke-virtual {p2}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 118
    return-void
.end method

.method static synthetic dg(Lcom/google/android/apps/nexuslauncher/smartspace/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dc()V

    return-void
.end method

.method static synthetic dh(Lcom/google/android/apps/nexuslauncher/smartspace/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dd()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/smartspace/f;
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dU:Lcom/google/android/apps/nexuslauncher/smartspace/f;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/f;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dU:Lcom/google/android/apps/nexuslauncher/smartspace/f;

    .line 62
    :cond_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dU:Lcom/google/android/apps/nexuslauncher/smartspace/f;

    return-object v0
.end method

.method private update()V
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dR:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 125
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dQ:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/e;->cT()J

    move-result-wide v0

    .line 126
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dR:Lcom/android/launcher3/Alarm;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dS:Lcom/google/android/apps/nexuslauncher/smartspace/c;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dS:Lcom/google/android/apps/nexuslauncher/smartspace/c;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dQ:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    invoke-interface {v0, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/c;->cr(Lcom/google/android/apps/nexuslauncher/smartspace/e;)V

    .line 135
    :cond_1
    return-void
.end method


# virtual methods
.method public cV(Lcom/google/android/apps/nexuslauncher/smartspace/a;)V
    .locals 1

    .prologue
    .line 109
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/google/android/apps/nexuslauncher/smartspace/a;->dj:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;->dW:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/f;->df(Lcom/google/android/apps/nexuslauncher/smartspace/a;Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;->dV:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/f;->df(Lcom/google/android/apps/nexuslauncher/smartspace/a;Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;)V

    goto :goto_0
.end method

.method public cW()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->mWorker:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 102
    return-void
.end method

.method public cX(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    .prologue
    .line 255
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "SmartspaceController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  weather "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dQ:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/smartspace/e;->dO:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dQ:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/smartspace/e;->dP:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public cY()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 237
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 238
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/f;->db()Landroid/content/Intent;

    move-result-object v2

    .line 237
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 239
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public cZ()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->mAppContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/f;->db()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 246
    return-void
.end method

.method public da(Lcom/google/android/apps/nexuslauncher/smartspace/c;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dS:Lcom/google/android/apps/nexuslauncher/smartspace/c;

    .line 161
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 192
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 224
    :goto_0
    return v5

    .line 194
    :sswitch_0
    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;-><init>()V

    .line 196
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dT:Lcom/google/android/apps/nexuslauncher/a/a;

    sget-object v3, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;->dW:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;

    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/apps/nexuslauncher/a/a;->dv(Ljava/lang/String;Lcom/google/protobuf/nano/a;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 197
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->mAppContext:Landroid/content/Context;

    invoke-static {v2, v0, v5}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cD(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/smartspace/b/i;Z)Lcom/google/android/apps/nexuslauncher/smartspace/d;

    move-result-object v0

    .line 199
    :goto_1
    new-instance v2, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;-><init>()V

    .line 201
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dT:Lcom/google/android/apps/nexuslauncher/a/a;

    sget-object v4, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;->dV:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;

    iget-object v4, v4, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;->filename:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/google/android/apps/nexuslauncher/a/a;->dv(Ljava/lang/String;Lcom/google/protobuf/nano/a;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->mAppContext:Landroid/content/Context;

    invoke-static {v1, v2, v6}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cD(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/smartspace/b/i;Z)Lcom/google/android/apps/nexuslauncher/smartspace/d;

    move-result-object v1

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->mUiHandler:Landroid/os/Handler;

    .line 205
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/apps/nexuslauncher/smartspace/d;

    aput-object v0, v3, v6

    aput-object v1, v3, v5

    .line 204
    const/16 v0, 0x65

    invoke-static {v2, v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 208
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/nexuslauncher/smartspace/a;

    .line 209
    invoke-static {}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;->values()[Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;->filename:Ljava/lang/String;

    .line 210
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->mAppContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cQ(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/smartspace/a;)Lcom/google/android/apps/nexuslauncher/smartspace/b/i;

    move-result-object v0

    .line 211
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dT:Lcom/google/android/apps/nexuslauncher/a/a;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/apps/nexuslauncher/a/a;->dw(Lcom/google/protobuf/nano/a;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->mUiHandler:Landroid/os/Handler;

    invoke-static {v0, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 215
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/google/android/apps/nexuslauncher/smartspace/d;

    .line 216
    if-eqz v0, :cond_2

    .line 217
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dQ:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    array-length v2, v0

    if-lez v2, :cond_3

    aget-object v2, v0, v6

    :goto_2
    iput-object v2, v3, Lcom/google/android/apps/nexuslauncher/smartspace/e;->dO:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    .line 218
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dQ:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    array-length v3, v0

    if-le v3, v5, :cond_1

    aget-object v1, v0, v5

    :cond_1
    iput-object v1, v2, Lcom/google/android/apps/nexuslauncher/smartspace/e;->dP:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/f;->dQ:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/e;->cU()Z

    .line 221
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/f;->update()V

    goto/16 :goto_0

    :cond_3
    move-object v2, v1

    .line 217
    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1

    .line 192
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x65 -> :sswitch_2
    .end sparse-switch
.end method
