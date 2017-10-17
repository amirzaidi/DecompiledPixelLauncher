.class Lcom/google/android/gms/internal/cw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic wZ:Lcom/google/android/gms/internal/bo;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/bo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cw;->wZ:Lcom/google/android/gms/internal/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/bo;Lcom/google/android/gms/internal/bY;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cw;-><init>(Lcom/google/android/gms/internal/bo;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->wZ:Lcom/google/android/gms/internal/bo;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/bo;->mStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->wZ:Lcom/google/android/gms/internal/bo;

    invoke-static {v0}, Lcom/google/android/gms/internal/bo;->yB(Lcom/google/android/gms/internal/bo;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->nx()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->wZ:Lcom/google/android/gms/internal/bo;

    iget-object v0, v0, Lcom/google/android/gms/internal/bo;->uc:Lcom/google/android/gms/common/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->wZ:Lcom/google/android/gms/internal/bo;

    invoke-static {v1}, Lcom/google/android/gms/internal/bo;->yB(Lcom/google/android/gms/internal/bo;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->nu()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/a;->nC(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->wZ:Lcom/google/android/gms/internal/bo;

    invoke-static {v0}, Lcom/google/android/gms/internal/bo;->yB(Lcom/google/android/gms/internal/bo;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->nu()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->wZ:Lcom/google/android/gms/internal/bo;

    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->wZ:Lcom/google/android/gms/internal/bo;

    invoke-static {v1}, Lcom/google/android/gms/internal/bo;->yB(Lcom/google/android/gms/internal/bo;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cw;->wZ:Lcom/google/android/gms/internal/bo;

    invoke-static {v2}, Lcom/google/android/gms/internal/bo;->yy(Lcom/google/android/gms/internal/bo;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/bo;->yz(Lcom/google/android/gms/common/ConnectionResult;I)V

    :goto_0
    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->wZ:Lcom/google/android/gms/internal/bo;

    iget-object v0, v0, Lcom/google/android/gms/internal/bo;->sC:Lcom/google/android/gms/internal/aC;

    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->wZ:Lcom/google/android/gms/internal/bo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cw;->wZ:Lcom/google/android/gms/internal/bo;

    invoke-static {v2}, Lcom/google/android/gms/internal/bo;->yB(Lcom/google/android/gms/internal/bo;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->ny()Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/cw;->wZ:Lcom/google/android/gms/internal/bo;

    invoke-static {v3}, Lcom/google/android/gms/internal/bo;->yy(Lcom/google/android/gms/internal/bo;)I

    move-result v3

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/common/api/GoogleApiActivity;->eQ(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/aC;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->wZ:Lcom/google/android/gms/internal/bo;

    iget-object v0, v0, Lcom/google/android/gms/internal/bo;->uc:Lcom/google/android/gms/common/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->wZ:Lcom/google/android/gms/internal/bo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cw;->wZ:Lcom/google/android/gms/internal/bo;

    iget-object v2, v2, Lcom/google/android/gms/internal/bo;->sC:Lcom/google/android/gms/internal/aC;

    iget-object v3, p0, Lcom/google/android/gms/internal/cw;->wZ:Lcom/google/android/gms/internal/bo;

    invoke-static {v3}, Lcom/google/android/gms/internal/bo;->yB(Lcom/google/android/gms/internal/bo;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->nu()I

    move-result v3

    iget-object v5, p0, Lcom/google/android/gms/internal/cw;->wZ:Lcom/google/android/gms/internal/bo;

    const/4 v4, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/a;->nD(Landroid/app/Activity;Lcom/google/android/gms/internal/aC;IILandroid/content/DialogInterface$OnCancelListener;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/cw;->wZ:Lcom/google/android/gms/internal/bo;

    iget-object v0, v0, Lcom/google/android/gms/internal/bo;->uc:Lcom/google/android/gms/common/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->wZ:Lcom/google/android/gms/internal/bo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cw;->wZ:Lcom/google/android/gms/internal/bo;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/a;->nH(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cw;->wZ:Lcom/google/android/gms/internal/bo;

    iget-object v1, v1, Lcom/google/android/gms/internal/bo;->uc:Lcom/google/android/gms/common/a;

    iget-object v2, p0, Lcom/google/android/gms/internal/cw;->wZ:Lcom/google/android/gms/internal/bo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/bo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/cr;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/cr;-><init>(Lcom/google/android/gms/internal/cw;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/a;->nz(Landroid/content/Context;Lcom/google/android/gms/internal/by;)Lcom/google/android/gms/internal/bw;

    goto :goto_0
.end method
