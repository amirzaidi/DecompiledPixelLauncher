.class Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field private aeh:Ljava/lang/ref/WeakReference;


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 2063
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->aeh:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/A;

    .line 2064
    if-nez v0, :cond_1

    .line 2065
    :cond_0
    return-void

    .line 2064
    :cond_1
    if-eqz p2, :cond_0

    .line 2067
    const-string/jumbo v1, "android.support.v4.media.session.EXTRA_BINDER"

    .line 2068
    invoke-static {p2, v1}, Landroid/support/v4/app/aM;->ano(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 2067
    invoke-static {v1}, Landroid/support/v4/media/session/IMediaSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaSession;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/media/session/A;->arX(Landroid/support/v4/media/session/A;Landroid/support/v4/media/session/IMediaSession;)Landroid/support/v4/media/session/IMediaSession;

    .line 2069
    invoke-static {v0}, Landroid/support/v4/media/session/A;->arZ(Landroid/support/v4/media/session/A;)V

    .line 2070
    return-void
.end method
