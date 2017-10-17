.class Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field private afc:Ljava/lang/ref/WeakReference;


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 2165
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->afc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/p;

    .line 2166
    if-nez v0, :cond_1

    .line 2167
    :cond_0
    return-void

    .line 2166
    :cond_1
    if-eqz p2, :cond_0

    .line 2169
    const-string/jumbo v1, "android.support.v4.media.session.EXTRA_BINDER"

    .line 2170
    invoke-static {p2, v1}, Landroid/support/v4/app/aI;->aop(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 2169
    invoke-static {v1}, Landroid/support/v4/media/session/IMediaSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaSession;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/media/session/p;->asW(Landroid/support/v4/media/session/p;Landroid/support/v4/media/session/IMediaSession;)Landroid/support/v4/media/session/IMediaSession;

    .line 2171
    invoke-static {v0}, Landroid/support/v4/media/session/p;->asU(Landroid/support/v4/media/session/p;)V

    .line 2172
    return-void
.end method
