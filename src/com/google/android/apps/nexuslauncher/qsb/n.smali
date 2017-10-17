.class final Lcom/google/android/apps/nexuslauncher/qsb/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ag:Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;

.field final synthetic ah:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/n;->ag:Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/n;->ah:Landroid/view/View;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/n;->ag:Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/n;->ah:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->removeView(Landroid/view/View;)V

    .line 168
    return-void
.end method
