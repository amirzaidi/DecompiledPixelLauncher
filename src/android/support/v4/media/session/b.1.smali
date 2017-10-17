.class Landroid/support/v4/media/session/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic adE:Z

.field final synthetic adF:Landroid/support/v4/media/session/s;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/s;Z)V
    .locals 0

    .prologue
    .line 2127
    iput-object p1, p0, Landroid/support/v4/media/session/b;->adF:Landroid/support/v4/media/session/s;

    iput-boolean p2, p0, Landroid/support/v4/media/session/b;->adE:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2130
    iget-object v0, p0, Landroid/support/v4/media/session/b;->adF:Landroid/support/v4/media/session/s;

    invoke-static {v0}, Landroid/support/v4/media/session/s;->arE(Landroid/support/v4/media/session/s;)Landroid/support/v4/media/session/c;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v4/media/session/b;->adE:Z

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/c;->onCaptioningEnabledChanged(Z)V

    .line 2131
    return-void
.end method
