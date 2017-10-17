.class public Lcom/google/android/gms/common/o;
.super Landroid/app/DialogFragment;


# instance fields
.field private kU:Landroid/content/DialogInterface$OnCancelListener;

.field private kV:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/o;->kV:Landroid/app/Dialog;

    iput-object v0, p0, Lcom/google/android/gms/common/o;->kU:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public static oz(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/o;
    .locals 3

    const/4 v2, 0x0

    new-instance v1, Lcom/google/android/gms/common/o;

    invoke-direct {v1}, Lcom/google/android/gms/common/o;-><init>()V

    const-string/jumbo v0, "Cannot display null dialog"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/l;->ho(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object v0, v1, Lcom/google/android/gms/common/o;->kV:Landroid/app/Dialog;

    if-nez p1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iput-object p1, v1, Lcom/google/android/gms/common/o;->kU:Landroid/content/DialogInterface$OnCancelListener;

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/o;->kU:Landroid/content/DialogInterface$OnCancelListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/o;->kU:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/o;->kV:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/o;->kV:Landroid/app/Dialog;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/o;->setShowsDialog(Z)V

    goto :goto_0
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
