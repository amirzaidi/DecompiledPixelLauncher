.class final Lcom/google/android/apps/nexuslauncher/smartspace/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic dY:Lcom/google/android/apps/nexuslauncher/smartspace/b;

.field final synthetic val$launcher:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/smartspace/b;Lcom/android/launcher3/Launcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/g;->dY:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/g;->val$launcher:Lcom/android/launcher3/Launcher;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/f;->get(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/smartspace/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/f;->cZ()V

    .line 357
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/g;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/Launcher;)V

    .line 358
    return-void
.end method
