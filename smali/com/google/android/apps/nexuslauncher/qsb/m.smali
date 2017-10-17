.class final Lcom/google/android/apps/nexuslauncher/qsb/m;
.super Landroid/util/Property;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public ak(Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 41
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->E(Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public al(Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;Ljava/lang/Integer;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->E(Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 35
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->setWillNotDraw(Z)V

    .line 36
    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->invalidate()V

    .line 37
    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    check-cast p1, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/m;->ak(Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/qsb/m;->al(Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;Ljava/lang/Integer;)V

    return-void
.end method
