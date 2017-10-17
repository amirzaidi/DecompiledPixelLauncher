.class Lcom/google/android/gms/internal/cq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic xf:Lcom/google/android/gms/internal/bi;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/bi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cq;->xf:Lcom/google/android/gms/internal/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/bi;Lcom/google/android/gms/internal/bS;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cq;-><init>(Lcom/google/android/gms/internal/bi;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/cq;->xf:Lcom/google/android/gms/internal/bi;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/bi;->mStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cq;->xf:Lcom/google/android/gms/internal/bi;

    invoke-static {v0}, Lcom/google/android/gms/internal/bi;->yA(Lcom/google/android/gms/internal/bi;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->qk()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/cq;->xf:Lcom/google/android/gms/internal/bi;

    iget-object v0, v0, Lcom/google/android/gms/internal/bi;->ui:Lcom/google/android/gms/common/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/cq;->xf:Lcom/google/android/gms/internal/bi;

    invoke-static {v1}, Lcom/google/android/gms/internal/bi;->yA(Lcom/google/android/gms/internal/bi;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->qh()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/a;->qp(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/cq;->xf:Lcom/google/android/gms/internal/bi;

    invoke-static {v0}, Lcom/google/android/gms/internal/bi;->yA(Lcom/google/android/gms/internal/bi;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->qh()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/cq;->xf:Lcom/google/android/gms/internal/bi;

    iget-object v1, p0, Lcom/google/android/gms/internal/cq;->xf:Lcom/google/android/gms/internal/bi;

    invoke-static {v1}, Lcom/google/android/gms/internal/bi;->yA(Lcom/google/android/gms/internal/bi;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cq;->xf:Lcom/google/android/gms/internal/bi;

    invoke-static {v2}, Lcom/google/android/gms/internal/bi;->yx(Lcom/google/android/gms/internal/bi;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/bi;->yy(Lcom/google/android/gms/common/ConnectionResult;I)V

    :goto_0
    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cq;->xf:Lcom/google/android/gms/internal/bi;

    iget-object v0, v0, Lcom/google/android/gms/internal/bi;->sI:Lcom/google/android/gms/internal/aw;

    iget-object v1, p0, Lcom/google/android/gms/internal/cq;->xf:Lcom/google/android/gms/internal/bi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bi;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cq;->xf:Lcom/google/android/gms/internal/bi;

    invoke-static {v2}, Lcom/google/android/gms/internal/bi;->yA(Lcom/google/android/gms/internal/bi;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->ql()Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/cq;->xf:Lcom/google/android/gms/internal/bi;

    invoke-static {v3}, Lcom/google/android/gms/internal/bi;->yx(Lcom/google/android/gms/internal/bi;)I

    move-result v3

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/common/api/GoogleApiActivity;->hE(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/aw;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/cq;->xf:Lcom/google/android/gms/internal/bi;

    iget-object v0, v0, Lcom/google/android/gms/internal/bi;->ui:Lcom/google/android/gms/common/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/cq;->xf:Lcom/google/android/gms/internal/bi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bi;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cq;->xf:Lcom/google/android/gms/internal/bi;

    iget-object v2, v2, Lcom/google/android/gms/internal/bi;->sI:Lcom/google/android/gms/internal/aw;

    iget-object v3, p0, Lcom/google/android/gms/internal/cq;->xf:Lcom/google/android/gms/internal/bi;

    invoke-static {v3}, Lcom/google/android/gms/internal/bi;->yA(Lcom/google/android/gms/internal/bi;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->qh()I

    move-result v3

    iget-object v5, p0, Lcom/google/android/gms/internal/cq;->xf:Lcom/google/android/gms/internal/bi;

    const/4 v4, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/a;->qq(Landroid/app/Activity;Lcom/google/android/gms/internal/aw;IILandroid/content/DialogInterface$OnCancelListener;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/cq;->xf:Lcom/google/android/gms/internal/bi;

    iget-object v0, v0, Lcom/google/android/gms/internal/bi;->ui:Lcom/google/android/gms/common/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/cq;->xf:Lcom/google/android/gms/internal/bi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bi;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cq;->xf:Lcom/google/android/gms/internal/bi;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/a;->qu(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cq;->xf:Lcom/google/android/gms/internal/bi;

    iget-object v1, v1, Lcom/google/android/gms/internal/bi;->ui:Lcom/google/android/gms/common/a;

    iget-object v2, p0, Lcom/google/android/gms/internal/cq;->xf:Lcom/google/android/gms/internal/bi;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/bi;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/cl;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/cl;-><init>(Lcom/google/android/gms/internal/cq;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/a;->qm(Landroid/content/Context;Lcom/google/android/gms/internal/bs;)Lcom/google/android/gms/internal/bq;

    goto :goto_0
.end method
