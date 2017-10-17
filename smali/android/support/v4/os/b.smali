.class Landroid/support/v4/os/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final adr:I

.field final synthetic ads:Landroid/support/v4/os/ResultReceiver;

.field final adt:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/support/v4/os/ResultReceiver;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Landroid/support/v4/os/b;->ads:Landroid/support/v4/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p2, p0, Landroid/support/v4/os/b;->adr:I

    .line 55
    iput-object p3, p0, Landroid/support/v4/os/b;->adt:Landroid/os/Bundle;

    .line 56
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Landroid/support/v4/os/b;->ads:Landroid/support/v4/os/ResultReceiver;

    iget v1, p0, Landroid/support/v4/os/b;->adr:I

    iget-object v2, p0, Landroid/support/v4/os/b;->adt:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 61
    return-void
.end method
