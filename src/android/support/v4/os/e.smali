.class Landroid/support/v4/os/e;
.super Landroid/support/v4/os/IResultReceiver$Stub;
.source "SourceFile"


# instance fields
.field final synthetic aeU:Landroid/support/v4/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroid/support/v4/os/ResultReceiver;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Landroid/support/v4/os/e;->aeU:Landroid/support/v4/os/ResultReceiver;

    invoke-direct {p0}, Landroid/support/v4/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v4/os/e;->aeU:Landroid/support/v4/os/ResultReceiver;

    iget-object v0, v0, Landroid/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Landroid/support/v4/os/e;->aeU:Landroid/support/v4/os/ResultReceiver;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 72
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Landroid/support/v4/os/e;->aeU:Landroid/support/v4/os/ResultReceiver;

    iget-object v0, v0, Landroid/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/os/a;

    iget-object v2, p0, Landroid/support/v4/os/e;->aeU:Landroid/support/v4/os/ResultReceiver;

    invoke-direct {v1, v2, p1, p2}, Landroid/support/v4/os/a;-><init>(Landroid/support/v4/os/ResultReceiver;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
