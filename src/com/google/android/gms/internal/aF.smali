.class Lcom/google/android/gms/internal/aF;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic st:Lcom/google/android/gms/internal/aJ;

.field final synthetic su:Ljava/lang/String;

.field final synthetic sv:Lcom/google/android/gms/internal/bf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bf;Lcom/google/android/gms/internal/aJ;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aF;->sv:Lcom/google/android/gms/internal/bf;

    iput-object p2, p0, Lcom/google/android/gms/internal/aF;->st:Lcom/google/android/gms/internal/aJ;

    iput-object p3, p0, Lcom/google/android/gms/internal/aF;->su:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/aF;->sv:Lcom/google/android/gms/internal/bf;

    invoke-static {v1}, Lcom/google/android/gms/internal/bf;->yl(Lcom/google/android/gms/internal/bf;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aF;->sv:Lcom/google/android/gms/internal/bf;

    invoke-static {v0}, Lcom/google/android/gms/internal/bf;->yl(Lcom/google/android/gms/internal/bf;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aF;->sv:Lcom/google/android/gms/internal/bf;

    invoke-static {v0}, Lcom/google/android/gms/internal/bf;->yl(Lcom/google/android/gms/internal/bf;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    :goto_2
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aF;->st:Lcom/google/android/gms/internal/aJ;

    iget-object v2, p0, Lcom/google/android/gms/internal/aF;->sv:Lcom/google/android/gms/internal/bf;

    invoke-static {v2}, Lcom/google/android/gms/internal/bf;->yj(Lcom/google/android/gms/internal/bf;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/aJ;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aF;->sv:Lcom/google/android/gms/internal/bf;

    invoke-static {v0}, Lcom/google/android/gms/internal/bf;->yj(Lcom/google/android/gms/internal/bf;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/aF;->su:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/aF;->st:Lcom/google/android/gms/internal/aJ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aJ;->onStart()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/aF;->st:Lcom/google/android/gms/internal/aJ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aJ;->onStop()V

    goto :goto_2
.end method
