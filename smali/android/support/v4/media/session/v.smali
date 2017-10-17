.class Landroid/support/v4/media/session/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aec:Ljava/lang/String;

.field final synthetic aed:Landroid/os/Bundle;

.field final synthetic aee:Landroid/support/v4/media/session/s;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/s;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 2082
    iput-object p1, p0, Landroid/support/v4/media/session/v;->aee:Landroid/support/v4/media/session/s;

    iput-object p2, p0, Landroid/support/v4/media/session/v;->aec:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/media/session/v;->aed:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2085
    iget-object v0, p0, Landroid/support/v4/media/session/v;->aee:Landroid/support/v4/media/session/s;

    invoke-static {v0}, Landroid/support/v4/media/session/s;->arE(Landroid/support/v4/media/session/s;)Landroid/support/v4/media/session/c;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/session/v;->aec:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/media/session/v;->aed:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/c;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2086
    return-void
.end method
