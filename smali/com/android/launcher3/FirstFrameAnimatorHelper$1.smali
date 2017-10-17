.class final Lcom/android/launcher3/FirstFrameAnimatorHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field private mTime:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/FirstFrameAnimatorHelper$1;->mTime:J

    .line 1
    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 4

    .prologue
    .line 77
    sget-wide v0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/launcher3/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    .line 83
    return-void
.end method
