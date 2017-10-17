.class Landroid/support/v4/media/session/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aef:I

.field final synthetic aeg:Landroid/support/v4/media/session/s;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/s;I)V
    .locals 0

    .prologue
    .line 2137
    iput-object p1, p0, Landroid/support/v4/media/session/x;->aeg:Landroid/support/v4/media/session/s;

    iput p2, p0, Landroid/support/v4/media/session/x;->aef:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2140
    iget-object v0, p0, Landroid/support/v4/media/session/x;->aeg:Landroid/support/v4/media/session/s;

    invoke-static {v0}, Landroid/support/v4/media/session/s;->arE(Landroid/support/v4/media/session/s;)Landroid/support/v4/media/session/c;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/media/session/x;->aef:I

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/c;->onRepeatModeChanged(I)V

    .line 2141
    return-void
.end method
