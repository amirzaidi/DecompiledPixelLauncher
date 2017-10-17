.class Landroid/support/v4/media/session/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aeA:Landroid/support/v4/media/session/s;

.field final synthetic aez:Landroid/support/v4/media/session/PlaybackStateCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/s;Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 0

    .prologue
    .line 2099
    iput-object p1, p0, Landroid/support/v4/media/session/C;->aeA:Landroid/support/v4/media/session/s;

    iput-object p2, p0, Landroid/support/v4/media/session/C;->aez:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2102
    iget-object v0, p0, Landroid/support/v4/media/session/C;->aeA:Landroid/support/v4/media/session/s;

    invoke-static {v0}, Landroid/support/v4/media/session/s;->arE(Landroid/support/v4/media/session/s;)Landroid/support/v4/media/session/c;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/session/C;->aez:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/c;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 2103
    return-void
.end method
