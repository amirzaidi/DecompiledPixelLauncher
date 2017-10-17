.class public abstract Lcom/google/android/gms/internal/bi;
.super Lcom/google/android/gms/internal/aD;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field protected mStarted:Z

.field private final ue:Landroid/os/Handler;

.field protected uf:Z

.field private ug:Lcom/google/android/gms/common/ConnectionResult;

.field private uh:I

.field protected final ui:Lcom/google/android/gms/common/a;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/aw;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/a;->getInstance()Lcom/google/android/gms/common/a;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/bi;-><init>(Lcom/google/android/gms/internal/aw;Lcom/google/android/gms/common/a;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/aw;Lcom/google/android/gms/common/a;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/aD;-><init>(Lcom/google/android/gms/internal/aw;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/bi;->uh:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bi;->ue:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/bi;->ui:Lcom/google/android/gms/common/a;

    return-void
.end method

.method static synthetic yA(Lcom/google/android/gms/internal/bi;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bi;->ug:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method static synthetic yx(Lcom/google/android/gms/internal/bi;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/bi;->uh:I

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

    iget-object v0, p0, Lcom/google/android/gms/internal/bi;->ug:Lcom/google/android/gms/common/ConnectionResult;

    iget v1, p0, Lcom/google/android/gms/internal/bi;->uh:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/bi;->yy(Lcom/google/android/gms/common/ConnectionResult;I)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/google/android/gms/internal/bi;->ui:Lcom/google/android/gms/common/a;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bi;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/a;->qz(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/bi;->ug:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->qh()I

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

    iput-object v2, p0, Lcom/google/android/gms/internal/bi;->ug:Lcom/google/android/gms/common/ConnectionResult;

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/bi;->yC()V

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

    iget v1, p0, Lcom/google/android/gms/internal/bi;->uh:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/bi;->yy(Lcom/google/android/gms/common/ConnectionResult;I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bi;->yC()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/aD;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "resolving_error"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bi;->uf:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bi;->uf:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "failed_client_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/bi;->uh:I

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const-string/jumbo v0, "failed_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v0, "failed_resolution"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/bi;->ug:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/aD;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bi;->uf:Z

    const-string/jumbo v1, "resolving_error"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bi;->uf:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/bi;->uh:I

    const-string/jumbo v1, "failed_client_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bi;->ug:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->qh()I

    move-result v0

    const-string/jumbo v1, "failed_status"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bi;->ug:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->ql()Landroid/app/PendingIntent;

    move-result-object v0

    const-string/jumbo v1, "failed_resolution"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/aD;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bi;->mStarted:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/aD;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bi;->mStarted:Z

    return-void
.end method

.method protected abstract yB()V
.end method

.method protected yC()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/bi;->uh:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bi;->uf:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/bi;->ug:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bi;->yB()V

    return-void
.end method

.method protected abstract yy(Lcom/google/android/gms/common/ConnectionResult;I)V
.end method

.method public yz(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bi;->uf:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bi;->uf:Z

    iput p2, p0, Lcom/google/android/gms/internal/bi;->uh:I

    iput-object p1, p0, Lcom/google/android/gms/internal/bi;->ug:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/bi;->ue:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/cq;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/cq;-><init>(Lcom/google/android/gms/internal/bi;Lcom/google/android/gms/internal/bS;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
