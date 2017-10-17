.class public Lcom/android/launcher3/testing/MemoryTracker;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field mAm:Landroid/app/ActivityManager;

.field private final mBinder:Landroid/os/IBinder;

.field public final mData:Landroid/util/LongSparseArray;

.field mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field public final mPids:Ljava/util/ArrayList;

.field private mPidsArray:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/launcher3/testing/MemoryTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/testing/MemoryTracker;->TAG:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 65
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker;->mData:Landroid/util/LongSparseArray;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker;->mPids:Ljava/util/ArrayList;

    .line 67
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker;->mPidsArray:[I

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker;->mLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Lcom/android/launcher3/testing/MemoryTracker$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/testing/MemoryTracker$1;-><init>(Lcom/android/launcher3/testing/MemoryTracker;)V

    iput-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker;->mHandler:Landroid/os/Handler;

    .line 210
    new-instance v0, Lcom/android/launcher3/testing/MemoryTracker$MemoryTrackerInterface;

    invoke-direct {v0, p0}, Lcom/android/launcher3/testing/MemoryTracker$MemoryTrackerInterface;-><init>(Lcom/android/launcher3/testing/MemoryTracker;)V

    iput-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker;->mBinder:Landroid/os/IBinder;

    .line 37
    return-void
.end method


# virtual methods
.method public getMemInfo(I)Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker;->mData:Landroid/util/LongSparseArray;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;

    return-object v0
.end method

.method public getTrackedProcesses()[I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker;->mPidsArray:[I

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 215
    iget-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 10

    .prologue
    .line 159
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/testing/MemoryTracker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker;->mAm:Landroid/app/ActivityManager;

    .line 162
    iget-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker;->mAm:Landroid/app/ActivityManager;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 164
    iget-object v2, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/testing/MemoryTracker;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    sget-object v2, Lcom/android/launcher3/testing/MemoryTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "discovered running service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget v2, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    iget-object v3, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    .line 166
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/launcher3/testing/MemoryTracker;->startTrackingProcess(ILjava/lang/String;J)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 173
    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 174
    invoke-virtual {p0}, Lcom/android/launcher3/testing/MemoryTracker;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    sget-object v3, Lcom/android/launcher3/testing/MemoryTracker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "discovered other running process: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/android/launcher3/testing/MemoryTracker;->startTrackingProcess(ILjava/lang/String;J)V

    goto :goto_1

    .line 179
    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 184
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 188
    sget-object v0, Lcom/android/launcher3/testing/MemoryTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received start id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    if-eqz p1, :cond_0

    .line 191
    const-string/jumbo v0, "com.android.launcher3.action.START_TRACKING"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    const-string/jumbo v0, "pid"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 193
    const-string/jumbo v1, "name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    const-string/jumbo v2, "start"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 195
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/launcher3/testing/MemoryTracker;->startTrackingProcess(ILjava/lang/String;J)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 201
    return v6
.end method

.method public startTrackingProcess(ILjava/lang/String;J)V
    .locals 5

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/launcher3/testing/MemoryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 102
    int-to-long v2, p1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 104
    iget-object v2, p0, Lcom/android/launcher3/testing/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    .line 106
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/launcher3/testing/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {p0}, Lcom/android/launcher3/testing/MemoryTracker;->updatePidsArrayL()V

    .line 109
    iget-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker;->mData:Landroid/util/LongSparseArray;

    int-to-long v2, p1

    new-instance v4, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;

    invoke-direct {v4, p1, p2, p3, p4}, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 111
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method update()V
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 126
    iget-object v2, p0, Lcom/android/launcher3/testing/MemoryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/testing/MemoryTracker;->mAm:Landroid/app/ActivityManager;

    iget-object v3, p0, Lcom/android/launcher3/testing/MemoryTracker;->mPidsArray:[I

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v3

    move v1, v0

    .line 128
    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_0

    .line 129
    aget-object v4, v3, v1

    .line 130
    iget-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v1, v0, :cond_2

    .line 131
    sget-object v0, Lcom/android/launcher3/testing/MemoryTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update: unknown process info received: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_6

    .line 148
    iget-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    int-to-long v4, v0

    .line 149
    iget-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker;->mData:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 151
    invoke-virtual {p0}, Lcom/android/launcher3/testing/MemoryTracker;->updatePidsArrayL()V

    .line 147
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    int-to-long v6, v0

    .line 135
    iget-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker;->mData:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;

    .line 136
    iget v5, v0, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->head:I

    add-int/lit8 v5, v5, 0x1

    iget-object v8, v0, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->pss:[J

    array-length v8, v8

    rem-int/2addr v5, v8

    iput v5, v0, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->head:I

    .line 137
    iget-object v5, v0, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->pss:[J

    iget v8, v0, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->head:I

    invoke-virtual {v4}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v9

    int-to-long v10, v9

    iput-wide v10, v0, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->currentPss:J

    int-to-long v10, v9

    aput-wide v10, v5, v8

    .line 138
    iget-object v5, v0, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->uss:[J

    iget v8, v0, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->head:I

    invoke-virtual {v4}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v4

    int-to-long v10, v4

    iput-wide v10, v0, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->currentUss:J

    int-to-long v10, v4

    aput-wide v10, v5, v8

    .line 139
    iget-wide v4, v0, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->currentPss:J

    iget-wide v8, v0, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->max:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_3

    iget-wide v4, v0, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->currentPss:J

    iput-wide v4, v0, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->max:J

    .line 140
    :cond_3
    iget-wide v4, v0, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->currentUss:J

    iget-wide v8, v0, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->max:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_4

    iget-wide v4, v0, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->currentUss:J

    iput-wide v4, v0, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->max:J

    .line 142
    :cond_4
    iget-wide v4, v0, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->currentPss:J

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-nez v0, :cond_5

    .line 143
    sget-object v0, Lcom/android/launcher3/testing/MemoryTracker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update: pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " has pss=0, it probably died"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker;->mData:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v6, v7}, Landroid/util/LongSparseArray;->remove(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_6
    monitor-exit v2

    .line 155
    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method updatePidsArrayL()V
    .locals 5

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 115
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker;->mPidsArray:[I

    .line 116
    new-instance v3, Ljava/lang/StringBuffer;

    const-string/jumbo v0, "Now tracking processes: "

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    .line 119
    iget-object v4, p0, Lcom/android/launcher3/testing/MemoryTracker;->mPidsArray:[I

    aput v0, v4, v1

    .line 120
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 122
    :cond_0
    sget-object v0, Lcom/android/launcher3/testing/MemoryTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method
