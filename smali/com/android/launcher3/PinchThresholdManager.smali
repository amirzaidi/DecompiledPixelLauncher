.class public Lcom/android/launcher3/PinchThresholdManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mPassedThreshold:F

.field private mWorkspace:Lcom/android/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Workspace;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/PinchThresholdManager;->mPassedThreshold:F

    .line 37
    iput-object p1, p0, Lcom/android/launcher3/PinchThresholdManager;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 38
    return-void
.end method


# virtual methods
.method public getPassedThreshold()F
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/android/launcher3/PinchThresholdManager;->mPassedThreshold:F

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/PinchThresholdManager;->mPassedThreshold:F

    .line 92
    return-void
.end method

.method public updateAndAnimatePassedThreshold(FLcom/android/launcher3/PinchAnimationManager;)F
    .locals 5

    .prologue
    const v4, 0x3f733333    # 0.95f

    const v3, 0x3f333333    # 0.7f

    const v1, 0x3ecccccd    # 0.4f

    .line 53
    iget-object v0, p0, Lcom/android/launcher3/PinchThresholdManager;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    .line 58
    :cond_0
    iget v2, p0, Lcom/android/launcher3/PinchThresholdManager;->mPassedThreshold:F

    .line 60
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/PinchThresholdManager;->mPassedThreshold:F

    .line 70
    :goto_0
    iget v0, p0, Lcom/android/launcher3/PinchThresholdManager;->mPassedThreshold:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/launcher3/PinchThresholdManager;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    .line 73
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/PinchThresholdManager;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    .line 75
    :goto_2
    iget v3, p0, Lcom/android/launcher3/PinchThresholdManager;->mPassedThreshold:F

    .line 76
    iget v4, p0, Lcom/android/launcher3/PinchThresholdManager;->mPassedThreshold:F

    cmpg-float v4, v4, v2

    if-gez v4, :cond_7

    move v1, v2

    move-object v2, v0

    .line 81
    :goto_3
    invoke-virtual {p2, v1, v0, v2}, Lcom/android/launcher3/PinchAnimationManager;->animateThreshold(FLcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;)V

    .line 83
    :cond_1
    iget v0, p0, Lcom/android/launcher3/PinchThresholdManager;->mPassedThreshold:F

    return v0

    .line 62
    :cond_2
    cmpg-float v0, p1, v3

    if-gez v0, :cond_3

    .line 63
    iput v1, p0, Lcom/android/launcher3/PinchThresholdManager;->mPassedThreshold:F

    goto :goto_0

    .line 64
    :cond_3
    cmpg-float v0, p1, v4

    if-gez v0, :cond_4

    .line 65
    iput v3, p0, Lcom/android/launcher3/PinchThresholdManager;->mPassedThreshold:F

    goto :goto_0

    .line 67
    :cond_4
    iput v4, p0, Lcom/android/launcher3/PinchThresholdManager;->mPassedThreshold:F

    goto :goto_0

    .line 72
    :cond_5
    sget-object v0, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    goto :goto_1

    .line 74
    :cond_6
    sget-object v1, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    goto :goto_2

    :cond_7
    move-object v2, v1

    move v1, v3

    goto :goto_3
.end method
