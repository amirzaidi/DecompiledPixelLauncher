.class public Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceBroadcastReceiver;
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

.method private cg(Lcom/google/android/apps/nexuslauncher/smartspace/b/b;Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 60
    iget-boolean v0, p1, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cy:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p2}, Lcom/google/android/apps/nexuslauncher/smartspace/f;->get(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/smartspace/f;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/apps/nexuslauncher/smartspace/f;->cV(Lcom/google/android/apps/nexuslauncher/smartspace/a;)V

    .line 63
    return-void

    .line 66
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 69
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.googlequicksearchbox"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 71
    :goto_0
    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/a;

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/nexuslauncher/smartspace/a;-><init>(Lcom/google/android/apps/nexuslauncher/smartspace/b/b;Landroid/content/Intent;ZJLandroid/content/pm/PackageInfo;)V

    .line 73
    invoke-static {p2}, Lcom/google/android/apps/nexuslauncher/smartspace/f;->get(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/smartspace/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/f;->cV(Lcom/google/android/apps/nexuslauncher/smartspace/a;)V

    .line 74
    return-void

    .line 70
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 32
    const-string/jumbo v0, "com.google.android.apps.nexuslauncher.extra.SMARTSPACE_CARD"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 33
    if-eqz v0, :cond_5

    .line 34
    new-instance v3, Lcom/google/android/apps/nexuslauncher/smartspace/b/a;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/smartspace/b/a;-><init>()V

    .line 36
    :try_start_0
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/a;->mergeFrom(Lcom/google/protobuf/nano/a;[B)Lcom/google/protobuf/nano/a;

    .line 37
    iget-object v5, v3, Lcom/google/android/apps/nexuslauncher/smartspace/b/a;->cw:[Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    array-length v6, v5

    move v4, v2

    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v7, v5, v4

    .line 38
    iget v0, v7, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cz:I

    if-ne v0, v1, :cond_1

    move v3, v1

    .line 40
    :goto_1
    iget v0, v7, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cz:I

    .line 41
    const/4 v8, 0x2

    .line 40
    if-ne v0, v8, :cond_2

    move v0, v1

    .line 42
    :goto_2
    if-nez v3, :cond_0

    if-eqz v0, :cond_3

    .line 43
    :cond_0
    invoke-direct {p0, v7, p1, p2, v3}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceBroadcastReceiver;->cg(Lcom/google/android/apps/nexuslauncher/smartspace/b/b;Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 37
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    move v3, v2

    .line 38
    goto :goto_1

    :cond_2
    move v0, v2

    .line 40
    goto :goto_2

    .line 45
    :cond_3
    const-string/jumbo v0, "SmartspaceReceiver"

    const-string/jumbo v3, "unrecognized card priority"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const-string/jumbo v1, "SmartspaceReceiver"

    const-string/jumbo v2, "proto"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    :cond_4
    :goto_4
    return-void

    .line 52
    :cond_5
    const-string/jumbo v0, "SmartspaceReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receiving update with no proto: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
