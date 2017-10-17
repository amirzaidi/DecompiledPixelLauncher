.class public Lcom/google/android/apps/nexuslauncher/qsb/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final q:[Ljava/lang/String;

.field private static final r:Landroid/content/BroadcastReceiver;

.field private static s:Ljava/lang/Boolean;


# direct methods
.method static synthetic -get0()Landroid/content/BroadcastReceiver;
    .locals 1

    sget-object v0, Lcom/google/android/apps/nexuslauncher/qsb/c;->r:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/qsb/c;->q(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "DUMMY_LOG_SOURCE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/apps/nexuslauncher/qsb/c;->q:[Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/google/android/apps/nexuslauncher/qsb/i;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/qsb/i;-><init>()V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/qsb/c;->r:Landroid/content/BroadcastReceiver;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static n(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 227
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    const-string/jumbo v1, "QsbExperiment"

    const-string/jumbo v2, "Could not find own package"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method private static o(Landroid/content/Context;[I)V
    .locals 7

    .prologue
    .line 182
    new-instance v0, Lcom/google/android/gms/common/api/e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/e;-><init>(Landroid/content/Context;)V

    .line 183
    sget-object v1, Lcom/google/android/gms/phenotype/f;->lS:Lcom/google/android/gms/common/api/h;

    .line 182
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/e;->dO(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/common/api/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/e;->build()Lcom/google/android/gms/common/api/d;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/d;->dv()V

    .line 186
    sget-object v0, Lcom/google/android/gms/phenotype/f;->lQ:Lcom/google/android/gms/phenotype/a;

    .line 188
    const-string/jumbo v2, "LOCAL.com.google.android.agsa.QSB"

    .line 190
    sget-object v4, Lcom/google/android/apps/nexuslauncher/qsb/c;->q:[Ljava/lang/String;

    .line 189
    const/4 v3, 0x1

    .line 192
    const/4 v6, 0x0

    move-object v5, p1

    .line 186
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/phenotype/a;->oE(Lcom/google/android/gms/common/api/d;Ljava/lang/String;I[Ljava/lang/String;[I[B)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    .line 193
    new-instance v2, Lcom/google/android/apps/nexuslauncher/qsb/l;

    invoke-direct {v2, v1}, Lcom/google/android/apps/nexuslauncher/qsb/l;-><init>(Lcom/google/android/gms/common/api/d;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/c;->ds(Lcom/google/android/gms/common/api/a;)V

    .line 200
    return-void
.end method

.method public static p(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 71
    sget-object v3, Lcom/google/android/apps/nexuslauncher/qsb/c;->s:Ljava/lang/Boolean;

    if-nez v3, :cond_1

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 77
    invoke-static {v3}, Lcom/google/android/apps/nexuslauncher/qsb/c;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string/jumbo v5, "qsb_experiment_status"

    const/4 v6, -0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 85
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sput-object v5, Lcom/google/android/apps/nexuslauncher/qsb/c;->s:Ljava/lang/Boolean;

    .line 86
    packed-switch v4, :pswitch_data_0

    .line 103
    new-array v2, v1, [I

    .line 106
    invoke-static {v3, v1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/c;->s(Landroid/content/Context;IZ)V

    move v0, v1

    move-object v1, v2

    .line 110
    :goto_0
    if-eqz v1, :cond_0

    .line 111
    invoke-static {v3, v1}, Lcom/google/android/apps/nexuslauncher/qsb/c;->o(Landroid/content/Context;[I)V

    .line 113
    :cond_0
    if-eqz v0, :cond_1

    .line 114
    sget-object v0, Lcom/google/android/apps/nexuslauncher/qsb/c;->r:Landroid/content/BroadcastReceiver;

    .line 115
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.google.android.gms.phenotype.UPDATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    invoke-static {v3}, Lcom/google/android/apps/nexuslauncher/qsb/c;->q(Landroid/content/Context;)V

    .line 119
    :cond_1
    sget-object v0, Lcom/google/android/apps/nexuslauncher/qsb/c;->s:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 88
    :pswitch_0
    new-array v2, v0, [I

    const v4, 0x81cdb8

    aput v4, v2, v1

    .line 89
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/nexuslauncher/qsb/c;->s:Ljava/lang/Boolean;

    move-object v1, v2

    .line 91
    goto :goto_0

    .line 93
    :pswitch_1
    new-array v2, v0, [I

    const v4, 0x81cdb9

    aput v4, v2, v1

    move-object v1, v2

    .line 95
    goto :goto_0

    :pswitch_2
    move v0, v1

    move-object v1, v2

    .line 100
    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 204
    const-string/jumbo v0, "com.android.launcher3.device.prefs"

    const/4 v1, 0x0

    .line 203
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static q(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 141
    new-instance v0, Lcom/google/android/gms/common/api/e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/e;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/phenotype/f;->lS:Lcom/google/android/gms/common/api/h;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/e;->dO(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/common/api/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/e;->build()Lcom/google/android/gms/common/api/d;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/d;->dv()V

    .line 143
    sget-object v0, Lcom/google/android/gms/phenotype/f;->lQ:Lcom/google/android/gms/phenotype/a;

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/qsb/c;->n(Landroid/content/Context;)I

    move-result v3

    .line 147
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "GOOGLE_NOW_LAUNCHER"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 148
    const/4 v5, 0x0

    .line 143
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/phenotype/a;->oB(Lcom/google/android/gms/common/api/d;Ljava/lang/String;I[Ljava/lang/String;[B)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    .line 150
    new-instance v2, Lcom/google/android/apps/nexuslauncher/qsb/j;

    invoke-direct {v2, v1, p0}, Lcom/google/android/apps/nexuslauncher/qsb/j;-><init>(Lcom/google/android/gms/common/api/d;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/c;->ds(Lcom/google/android/gms/common/api/a;)V

    .line 176
    return-void
.end method

.method static r(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/c;->s(Landroid/content/Context;IZ)V

    .line 209
    return-void
.end method

.method private static s(Landroid/content/Context;IZ)V
    .locals 2

    .prologue
    .line 218
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 219
    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/qsb/c;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 220
    if-nez p2, :cond_0

    const-string/jumbo v1, "qsb_experiment_status"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 221
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "qsb_experiment_status"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 223
    :cond_1
    return-void
.end method

.method static synthetic t(Landroid/content/Context;IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/qsb/c;->s(Landroid/content/Context;IZ)V

    return-void
.end method
