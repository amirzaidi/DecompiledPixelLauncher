.class final Lcom/google/android/apps/nexuslauncher/smartspace/j;
.super Lcom/android/launcher3/ItemInfo;
.source "SourceFile"


# instance fields
.field final synthetic eb:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/j;->eb:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    .line 157
    invoke-direct {p0}, Lcom/android/launcher3/ItemInfo;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getTargetComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 160
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/j;->eb:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method
