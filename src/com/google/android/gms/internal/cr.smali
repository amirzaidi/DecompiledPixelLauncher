.class Lcom/google/android/gms/internal/cr;
.super Lcom/google/android/gms/internal/by;


# instance fields
.field final synthetic wR:Lcom/google/android/gms/internal/cw;

.field final synthetic wS:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cw;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cr;->wR:Lcom/google/android/gms/internal/cw;

    iput-object p2, p0, Lcom/google/android/gms/internal/cr;->wS:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/google/android/gms/internal/by;-><init>()V

    return-void
.end method


# virtual methods
.method public zq()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->wR:Lcom/google/android/gms/internal/cw;

    iget-object v0, v0, Lcom/google/android/gms/internal/cw;->wZ:Lcom/google/android/gms/internal/bo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bo;->yD()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->wS:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->wS:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method
