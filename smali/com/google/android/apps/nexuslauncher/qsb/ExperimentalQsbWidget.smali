.class public Lcom/google/android/apps/nexuslauncher/qsb/ExperimentalQsbWidget;
.super Lcom/google/android/apps/nexuslauncher/qsb/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentalQsbWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentalQsbWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/nexuslauncher/qsb/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentalQsbWidget;->P:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentalQsbWidget;->Q:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 46
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 47
    iget-object v2, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-static {v1, v2}, Lcom/android/launcher3/DeviceProfile;->calculateCellWidth(II)I

    move-result v2

    .line 48
    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v2, v0

    .line 50
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentalQsbWidget;->P:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 51
    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 54
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/qsb/f;->onMeasure(II)V

    .line 55
    return-void
.end method

.method protected u(Z)I
    .locals 1

    .prologue
    .line 33
    if-eqz p1, :cond_0

    const v0, 0x7f040026

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f040027

    goto :goto_0
.end method

.method protected v(Landroid/graphics/Rect;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentalQsbWidget;->R:Z

    if-nez v0, :cond_0

    .line 60
    const-string/jumbo v0, "source_mic_alpha"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 62
    :cond_0
    return-void
.end method

.method protected w(Landroid/content/SharedPreferences;)Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method
