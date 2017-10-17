.class public abstract Lcom/android/launcher3/BaseActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field protected mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field protected mSystemUiController:Lcom/android/launcher3/util/SystemUiController;

.field protected mUserEventDispatcher:Lcom/android/launcher3/logging/UserEventDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;
    .locals 1

    .prologue
    .line 54
    instance-of v0, p0, Lcom/android/launcher3/BaseActivity;

    if-eqz v0, :cond_0

    .line 55
    check-cast p0, Lcom/android/launcher3/BaseActivity;

    return-object p0

    .line 57
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BaseActivity;

    return-object v0
.end method


# virtual methods
.method public getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceProfile()Lcom/android/launcher3/DeviceProfile;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    return-object v0
.end method

.method public getSystemUiController()Lcom/android/launcher3/util/SystemUiController;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mSystemUiController:Lcom/android/launcher3/util/SystemUiController;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/android/launcher3/util/SystemUiController;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/SystemUiController;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/launcher3/BaseActivity;->mSystemUiController:Lcom/android/launcher3/util/SystemUiController;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mSystemUiController:Lcom/android/launcher3/util/SystemUiController;

    return-object v0
.end method

.method public final getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mUserEventDispatcher:Lcom/android/launcher3/logging/UserEventDispatcher;

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isInMultiWindowModeCompat()Z

    move-result v1

    .line 43
    invoke-static {p0, v0, v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->newInstance(Landroid/content/Context;ZZ)Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BaseActivity;->mUserEventDispatcher:Lcom/android/launcher3/logging/UserEventDispatcher;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mUserEventDispatcher:Lcom/android/launcher3/logging/UserEventDispatcher;

    return-object v0
.end method

.method public isInMultiWindowModeCompat()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isInMultiWindowMode()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
