.class public Lcom/google/android/gms/internal/aD;
.super Ljava/lang/Object;


# instance fields
.field protected final sI:Lcom/google/android/gms/internal/aw;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/aw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/aD;->sI:Lcom/google/android/gms/internal/aw;

    return-void
.end method

.method protected static uZ(Lcom/google/android/gms/internal/e;)Lcom/google/android/gms/internal/aw;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e;->rL()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/e;->rM()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/aZ;->yh(Landroid/app/Activity;)Lcom/google/android/gms/internal/aZ;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e;->rN()Landroid/support/v4/app/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ba;->yn(Landroid/support/v4/app/a;)Lcom/google/android/gms/internal/ba;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aD;->sI:Lcom/google/android/gms/internal/aw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aw;->uH()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
