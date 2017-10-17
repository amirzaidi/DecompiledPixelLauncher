.class Lcom/google/android/gms/internal/aB;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic sE:Lcom/google/android/gms/internal/aD;

.field final synthetic sF:Lcom/google/android/gms/internal/ba;

.field final synthetic sG:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ba;Lcom/google/android/gms/internal/aD;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aB;->sF:Lcom/google/android/gms/internal/ba;

    iput-object p2, p0, Lcom/google/android/gms/internal/aB;->sE:Lcom/google/android/gms/internal/aD;

    iput-object p3, p0, Lcom/google/android/gms/internal/aB;->sG:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/aB;->sF:Lcom/google/android/gms/internal/ba;

    invoke-static {v1}, Lcom/google/android/gms/internal/ba;->ym(Lcom/google/android/gms/internal/ba;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aB;->sF:Lcom/google/android/gms/internal/ba;

    invoke-static {v0}, Lcom/google/android/gms/internal/ba;->ym(Lcom/google/android/gms/internal/ba;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aB;->sF:Lcom/google/android/gms/internal/ba;

    invoke-static {v0}, Lcom/google/android/gms/internal/ba;->ym(Lcom/google/android/gms/internal/ba;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    :goto_2
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aB;->sE:Lcom/google/android/gms/internal/aD;

    iget-object v2, p0, Lcom/google/android/gms/internal/aB;->sF:Lcom/google/android/gms/internal/ba;

    invoke-static {v2}, Lcom/google/android/gms/internal/ba;->yl(Lcom/google/android/gms/internal/ba;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/aD;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aB;->sF:Lcom/google/android/gms/internal/ba;

    invoke-static {v0}, Lcom/google/android/gms/internal/ba;->yl(Lcom/google/android/gms/internal/ba;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/aB;->sG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/aB;->sE:Lcom/google/android/gms/internal/aD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aD;->onStart()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/aB;->sE:Lcom/google/android/gms/internal/aD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aD;->onStop()V

    goto :goto_2
.end method
