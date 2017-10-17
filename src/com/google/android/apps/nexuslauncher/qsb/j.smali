.class final Lcom/google/android/apps/nexuslauncher/qsb/j;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic cv:Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/j;->cv:Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;

    .line 217
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/j;->cv:Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->bR(Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/j;->cv:Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->bS(Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 223
    :cond_0
    return-void
.end method
