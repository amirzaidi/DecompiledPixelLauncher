.class public Lcom/google/android/apps/nexuslauncher/reflection/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/nexuslauncher/reflection/d;


# instance fields
.field private final by:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/reflection/k;->initRecordedTime(Landroid/content/Context;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->by:J

    .line 37
    return-void
.end method


# virtual methods
.method public aE()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->by:J

    return-wide v0
.end method

.method protected getAbsoluteBootTime()J
    .locals 4

    .prologue
    .line 45
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method protected initRecordedTime(Landroid/content/Context;I)J
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.google.android.apps.nexuslauncher.reflection.ACTION_BOOT_CYCLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    const/high16 v1, 0x20000000

    .line 51
    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 53
    new-instance v2, Landroid/util/MutableLong;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/k;->getAbsoluteBootTime()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/util/MutableLong;-><init>(J)V

    .line 55
    if-eqz v1, :cond_0

    .line 57
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 58
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 59
    new-instance v4, Lcom/google/android/apps/nexuslauncher/reflection/p;

    invoke-direct {v4, p0, v2, v3}, Lcom/google/android/apps/nexuslauncher/reflection/p;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/k;Landroid/util/MutableLong;Ljava/util/concurrent/CountDownLatch;)V

    .line 66
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 59
    invoke-virtual {v1, p2, v4, v5}, Landroid/app/PendingIntent;->send(ILandroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 69
    const-wide/16 v4, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 70
    iget-wide v0, v2, Landroid/util/MutableLong;->value:J
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 71
    :catch_0
    move-exception v1

    .line 79
    :cond_0
    const-string/jumbo v1, "time"

    iget-wide v4, v2, Landroid/util/MutableLong;->value:J

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 81
    const/high16 v1, 0x8000000

    .line 80
    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 85
    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 86
    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v0, v7, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 88
    iget-wide v0, v2, Landroid/util/MutableLong;->value:J

    return-wide v0
.end method
