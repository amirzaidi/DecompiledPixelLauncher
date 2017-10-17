.class Landroid/support/v4/app/h;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic YJ:Landroid/support/v4/app/a;


# direct methods
.method constructor <init>(Landroid/support/v4/app/a;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Landroid/support/v4/app/h;->YJ:Landroid/support/v4/app/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 93
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 84
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/h;->YJ:Landroid/support/v4/app/a;

    iget-boolean v0, v0, Landroid/support/v4/app/a;->mStopped:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Landroid/support/v4/app/h;->YJ:Landroid/support/v4/app/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/a;->ajg(Z)V

    goto :goto_0

    .line 89
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/app/h;->YJ:Landroid/support/v4/app/a;

    invoke-virtual {v0}, Landroid/support/v4/app/a;->ajk()V

    .line 90
    iget-object v0, p0, Landroid/support/v4/app/h;->YJ:Landroid/support/v4/app/a;

    iget-object v0, v0, Landroid/support/v4/app/a;->XH:Landroid/support/v4/app/J;

    invoke-virtual {v0}, Landroid/support/v4/app/J;->amy()Z

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
