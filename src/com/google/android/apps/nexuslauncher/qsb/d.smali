.class Lcom/google/android/apps/nexuslauncher/qsb/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private final bZ:Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;

.field final synthetic ca:Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->ca:Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->bZ:Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;

    .line 205
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->ca:Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->cb:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->bZ:Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;

    invoke-interface {v0, p5}, Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;->onScrollRangeChanged(I)V

    .line 212
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->ca:Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->cb:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->bH(Lcom/android/launcher3/Launcher;)I

    move-result v0

    sub-int v1, p5, v0

    .line 216
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->ca:Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 217
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->ca:Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    .line 216
    add-int/2addr v0, v2

    .line 218
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->ca:Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 216
    add-int/2addr v0, v2

    .line 219
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/d;->bZ:Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;

    sub-int v0, v1, v0

    invoke-interface {v2, v0}, Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;->onScrollRangeChanged(I)V

    .line 220
    return-void
.end method
