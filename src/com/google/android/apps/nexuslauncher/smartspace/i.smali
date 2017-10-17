.class final Lcom/google/android/apps/nexuslauncher/smartspace/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic ea:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/i;->ea:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/i;->ea:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->ct(Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;)Lcom/google/android/apps/nexuslauncher/smartspace/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/i;->ea:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->ct(Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;)Lcom/google/android/apps/nexuslauncher/smartspace/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/e;->cR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/i;->ea:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->cp(I)V

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/i;->ea:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->ct(Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;)Lcom/google/android/apps/nexuslauncher/smartspace/e;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/e;->dO:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cu(Landroid/view/View;)V

    .line 80
    :cond_0
    return-void
.end method
