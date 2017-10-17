.class final Lcom/google/android/apps/nexuslauncher/h;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field final synthetic dP:Lcom/google/android/apps/nexuslauncher/b;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/b;JJ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/h;->dP:Lcom/google/android/apps/nexuslauncher/b;

    .line 81
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 1
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/h;->dP:Lcom/google/android/apps/nexuslauncher/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/nexuslauncher/b;->db(Lcom/google/android/apps/nexuslauncher/b;Z)V

    .line 94
    return-void
.end method

.method public onTick(J)V
    .locals 5

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/h;->dP:Lcom/google/android/apps/nexuslauncher/b;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/b;->cY(Lcom/google/android/apps/nexuslauncher/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/h;->dP:Lcom/google/android/apps/nexuslauncher/b;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/b;->da(Lcom/google/android/apps/nexuslauncher/b;)V

    .line 87
    :cond_0
    const-wide/16 v0, 0x1e

    div-long v0, p1, v0

    const-wide/16 v2, 0x64

    sub-long v0, v2, v0

    .line 88
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/h;->dP:Lcom/google/android/apps/nexuslauncher/b;

    invoke-static {v2}, Lcom/google/android/apps/nexuslauncher/b;->cZ(Lcom/google/android/apps/nexuslauncher/b;)Lcom/android/launcher3/ExtendedEditText;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u2764 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/launcher3/ExtendedEditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method
