.class public abstract Lcom/google/android/gms/internal/bo;
.super Lcom/google/android/gms/internal/aJ;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field protected mStarted:Z

.field private final tY:Landroid/os/Handler;

.field protected tZ:Z

.field private ua:Lcom/google/android/gms/common/ConnectionResult;

.field private ub:I

.field protected final uc:Lcom/google/android/gms/common/a;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/aC;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/a;->nI()Lcom/google/android/gms/common/a;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/bo;-><init>(Lcom/google/android/gms/internal/aC;Lcom/google/android/gms/common/a;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/aC;Lcom/google/android/gms/common/a;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/aJ;-><init>(Lcom/google/android/gms/internal/aC;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/bo;->ub:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bo;->tY:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/bo;->uc:Lcom/google/android/gms/common/a;

    return-void
.end method

.method static synthetic yB(Lcom/google/android/gms/internal/bo;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ua:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method static synthetic yy(Lcom/google/android/gms/internal/bo;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/bo;->ub:I

    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x12

    const/16 v2, 0xd

    const/4 v1, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ua:Lcom/google/android/gms/common/ConnectionResult;

    iget v1, p0, Lcom/google/android/gms/internal/bo;->ub:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/bo;->yz(Lcom/google/android/gms/common/ConnectionResult;I)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/google/android/gms/internal/bo;->uc:Lcom/google/android/gms/common/a;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bo;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/a;->nN(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/bo;->ua:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->nu()I

    move-result v1

    if-ne v1, v4, :cond_0

    if-ne v2, v4, :cond_0

    return-void

    :cond_1
    move v0, v1

    goto :goto_2

    :pswitch_1
    const/4 v3, -0x1

    if-eq p2, v3, :cond_2

    if-nez p2, :cond_0

    if-nez p3, :cond_3

    move v1, v2

    :goto_3
    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v2, v1, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/bo;->ua:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "<<ResolutionFailureErrorDetail>>"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/bo;->yD()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget v1, p0, Lcom/google/android/gms/internal/bo;->ub:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/bo;->yz(Lcom/google/android/gms/common/ConnectionResult;I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bo;->yD()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/aJ;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "resolving_error"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bo;->tZ:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bo;->tZ:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "failed_client_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/bo;->ub:I

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const-string/jumbo v0, "failed_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v0, "failed_resolution"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/bo;->ua:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/aJ;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bo;->tZ:Z

    const-string/jumbo v1, "resolving_error"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bo;->tZ:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/bo;->ub:I

    const-string/jumbo v1, "failed_client_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ua:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->nu()I

    move-result v0

    const-string/jumbo v1, "failed_status"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->ua:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->ny()Landroid/app/PendingIntent;

    move-result-object v0

    const-string/jumbo v1, "failed_resolution"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/aJ;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bo;->mStarted:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/aJ;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bo;->mStarted:Z

    return-void
.end method

.method public yA(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bo;->tZ:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bo;->tZ:Z

    iput p2, p0, Lcom/google/android/gms/internal/bo;->ub:I

    iput-object p1, p0, Lcom/google/android/gms/internal/bo;->ua:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->tY:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/cw;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/cw;-><init>(Lcom/google/android/gms/internal/bo;Lcom/google/android/gms/internal/bY;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected abstract yC()V
.end method

.method protected yD()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/bo;->ub:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bo;->tZ:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/bo;->ua:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bo;->yC()V

    return-void
.end method

.method protected abstract yz(Lcom/google/android/gms/common/ConnectionResult;I)V
.end method
