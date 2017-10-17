.class public Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public currentPss:J

.field public currentUss:J

.field public head:I

.field public max:J

.field public name:Ljava/lang/String;

.field public pid:I

.field public pss:[J

.field public startTime:J

.field public uss:[J


# direct methods
.method public constructor <init>(ILjava/lang/String;J)V
    .locals 3

    .prologue
    const/16 v1, 0x100

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->pss:[J

    .line 52
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->uss:[J

    .line 54
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->max:J

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->head:I

    .line 57
    iput p1, p0, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->pid:I

    .line 58
    iput-object p2, p0, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->name:Ljava/lang/String;

    .line 59
    iput-wide p3, p0, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->startTime:J

    .line 60
    return-void
.end method


# virtual methods
.method public getUptime()J
    .locals 4

    .prologue
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->startTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
