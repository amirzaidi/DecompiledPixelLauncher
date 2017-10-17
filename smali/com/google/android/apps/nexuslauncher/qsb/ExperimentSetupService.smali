.class public Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/a;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Lcom/android/launcher3/OnAlarmListener;


# static fields
.field private static final t:J


# instance fields
.field private mAlarm:Lcom/android/launcher3/Alarm;

.field private u:Lcom/google/android/gms/common/api/c;

.field private v:Lcom/google/android/gms/common/api/d;

.field private w:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->t:J

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private B()V
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->mAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->mAlarm:Lcom/android/launcher3/Alarm;

    sget-wide v2, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->t:J

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 69
    return-void
.end method

.method static x(Lcom/google/android/gms/phenotype/b;)Z
    .locals 1

    .prologue
    .line 194
    const-string/jumbo v0, "QSBFeature__qsb_kill_switch"

    invoke-static {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->z(Lcom/google/android/gms/phenotype/b;Ljava/lang/String;)Lcom/google/android/gms/phenotype/Flag;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/phenotype/Flag;->oK()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private y()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->w:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->u:Lcom/google/android/gms/common/api/c;

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    const-string/jumbo v0, "ExperimentSetupService"

    const-string/jumbo v1, "Not connected, will retry again later"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->B()V

    .line 83
    return-void

    .line 87
    :cond_1
    const-string/jumbo v0, "ExperimentSetupService"

    const-string/jumbo v1, "doSync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object v0, Lcom/google/android/gms/phenotype/f;->lQ:Lcom/google/android/gms/phenotype/a;

    .line 91
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->v:Lcom/google/android/gms/common/api/d;

    .line 92
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/qsb/c;->n(Landroid/content/Context;)I

    move-result v3

    .line 94
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v6, "GOOGLE_NOW_LAUNCHER"

    const/4 v7, 0x0

    aput-object v6, v4, v7

    .line 95
    const-string/jumbo v6, ""

    move-object v7, v5

    .line 90
    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/phenotype/a;->oC(Lcom/google/android/gms/common/api/d;Ljava/lang/String;I[Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->u:Lcom/google/android/gms/common/api/c;

    .line 96
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->u:Lcom/google/android/gms/common/api/c;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/c;->ds(Lcom/google/android/gms/common/api/a;)V

    .line 97
    return-void
.end method

.method private static z(Lcom/google/android/gms/phenotype/b;Ljava/lang/String;)Lcom/google/android/gms/phenotype/Flag;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-interface {p0}, Lcom/google/android/gms/phenotype/b;->oF()Lcom/google/android/gms/phenotype/Configurations;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/phenotype/Configurations;->lA:[Lcom/google/android/gms/phenotype/Configuration;

    .line 200
    array-length v2, v0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    move-object v0, v1

    .line 201
    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Lcom/google/android/gms/phenotype/Flag;->ld:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :goto_1
    return-object v0

    .line 200
    :cond_0
    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/google/android/gms/phenotype/Configuration;->lO:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/phenotype/Flag;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 201
    goto :goto_1
.end method


# virtual methods
.method public A(Lcom/google/android/gms/phenotype/b;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->u:Lcom/google/android/gms/common/api/c;

    .line 103
    const-string/jumbo v0, "ExperimentSetupService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Result received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/phenotype/b;->oF()Lcom/google/android/gms/phenotype/Configurations;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-interface {p1}, Lcom/google/android/gms/phenotype/b;->dr()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->dF()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {p1}, Lcom/google/android/gms/phenotype/b;->oF()Lcom/google/android/gms/phenotype/Configurations;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/phenotype/Configurations;->lC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 105
    if-eqz v0, :cond_1

    .line 109
    :cond_0
    const-string/jumbo v0, "ExperimentSetupService"

    const-string/jumbo v1, "Default result returned by the server. will retry in some time"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->B()V

    .line 112
    return-void

    .line 115
    :cond_1
    const-string/jumbo v0, "QSBFeature__qsb_is_wide"

    invoke-static {p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->z(Lcom/google/android/gms/phenotype/b;Ljava/lang/String;)Lcom/google/android/gms/phenotype/Flag;

    move-result-object v0

    .line 116
    const-string/jumbo v1, "QSBFeature__qsb_is_in_experiment"

    invoke-static {p1, v1}, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->z(Lcom/google/android/gms/phenotype/b;Ljava/lang/String;)Lcom/google/android/gms/phenotype/Flag;

    move-result-object v1

    .line 119
    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    .line 121
    :cond_2
    const/4 v0, 0x0

    .line 131
    :goto_0
    const-string/jumbo v1, "ExperimentSetupService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Writing experiment status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/c;->r(Landroid/content/Context;I)V

    .line 134
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->stopSelf()V

    .line 135
    return-void

    .line 119
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/phenotype/Flag;->oK()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    .line 122
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->x(Lcom/google/android/gms/phenotype/b;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 124
    const/4 v0, 0x3

    goto :goto_0

    .line 126
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/phenotype/Flag;->oK()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 127
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public bridge synthetic C(Lcom/google/android/gms/common/api/b;)V
    .locals 0

    .prologue
    .line 99
    check-cast p1, Lcom/google/android/gms/phenotype/b;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->A(Lcom/google/android/gms/phenotype/b;)V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 144
    instance-of v0, p1, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_0

    .line 146
    const-string/jumbo v0, "ExperimentSetupService"

    const-string/jumbo v1, "Launcher started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->stopSelf()V

    .line 150
    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->y()V

    .line 74
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 57
    new-instance v0, Lcom/google/android/gms/common/api/e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/e;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/phenotype/f;->lS:Lcom/google/android/gms/common/api/h;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/e;->dO(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/common/api/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/e;->build()Lcom/google/android/gms/common/api/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->v:Lcom/google/android/gms/common/api/d;

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->v:Lcom/google/android/gms/common/api/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->dv()V

    .line 59
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->mAlarm:Lcom/android/launcher3/Alarm;

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->mAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 62
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->w:Landroid/net/ConnectivityManager;

    .line 63
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->y()V

    .line 64
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    const-string/jumbo v0, "ExperimentSetupService"

    const-string/jumbo v1, "Destroying service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 158
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->u:Lcom/google/android/gms/common/api/c;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->u:Lcom/google/android/gms/common/api/c;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c;->cancel()V

    .line 160
    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->u:Lcom/google/android/gms/common/api/c;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->mAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 163
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->mAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 165
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->v:Lcom/google/android/gms/common/api/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->dx()V

    .line 166
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 167
    return-void
.end method
