.class public Lcom/android/launcher3/Alarm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mAlarmListener:Lcom/android/launcher3/OnAlarmListener;

.field private mAlarmPending:Z

.field private mAlarmTriggerTime:J

.field private mHandler:Landroid/os/Handler;

.field private mWaitingForCallback:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Alarm;->mHandler:Landroid/os/Handler;

    .line 36
    return-void
.end method


# virtual methods
.method public alarmPending()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    return v0
.end method

.method public cancelAlarm()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    .line 63
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 67
    iput-boolean v4, p0, Lcom/android/launcher3/Alarm;->mWaitingForCallback:Z

    .line 68
    iget-boolean v0, p0, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 70
    iget-wide v2, p0, Lcom/android/launcher3/Alarm;->mAlarmTriggerTime:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/android/launcher3/Alarm;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lcom/android/launcher3/Alarm;->mAlarmTriggerTime:J

    sub-long v0, v6, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Alarm;->mWaitingForCallback:Z

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iput-boolean v4, p0, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/Alarm;->mAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/Alarm;->mAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    invoke-interface {v0, p0}, Lcom/android/launcher3/OnAlarmListener;->onAlarm(Lcom/android/launcher3/Alarm;)V

    goto :goto_0
.end method

.method public setAlarm(J)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 46
    iput-boolean v6, p0, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    .line 47
    iget-wide v2, p0, Lcom/android/launcher3/Alarm;->mAlarmTriggerTime:J

    .line 48
    add-long v4, v0, p1

    iput-wide v4, p0, Lcom/android/launcher3/Alarm;->mAlarmTriggerTime:J

    .line 51
    iget-boolean v4, p0, Lcom/android/launcher3/Alarm;->mWaitingForCallback:Z

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/android/launcher3/Alarm;->mAlarmTriggerTime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/android/launcher3/Alarm;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 53
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/Alarm;->mWaitingForCallback:Z

    .line 55
    :cond_0
    iget-boolean v2, p0, Lcom/android/launcher3/Alarm;->mWaitingForCallback:Z

    if-nez v2, :cond_1

    .line 56
    iget-object v2, p0, Lcom/android/launcher3/Alarm;->mHandler:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/android/launcher3/Alarm;->mAlarmTriggerTime:J

    sub-long v0, v4, v0

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    iput-boolean v6, p0, Lcom/android/launcher3/Alarm;->mWaitingForCallback:Z

    .line 59
    :cond_1
    return-void
.end method

.method public setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/launcher3/Alarm;->mAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    .line 40
    return-void
.end method
