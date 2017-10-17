.class Lcom/google/android/gms/internal/cl;
.super Lcom/google/android/gms/internal/bs;


# instance fields
.field final synthetic wX:Lcom/google/android/gms/internal/cq;

.field final synthetic wY:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cq;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cl;->wX:Lcom/google/android/gms/internal/cq;

    iput-object p2, p0, Lcom/google/android/gms/internal/cl;->wY:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/google/android/gms/internal/bs;-><init>()V

    return-void
.end method


# virtual methods
.method public zp()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cl;->wX:Lcom/google/android/gms/internal/cq;

    iget-object v0, v0, Lcom/google/android/gms/internal/cq;->xf:Lcom/google/android/gms/internal/bi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bi;->yC()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cl;->wY:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cl;->wY:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method
