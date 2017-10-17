.class Landroid/support/v4/media/session/h;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic afd:Landroid/support/v4/media/session/c;

.field afe:Z


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 980
    iget-boolean v0, p0, Landroid/support/v4/media/session/h;->afe:Z

    if-eqz v0, :cond_0

    .line 983
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1021
    :goto_0
    return-void

    .line 981
    :cond_0
    return-void

    .line 985
    :pswitch_0
    iget-object v1, p0, Landroid/support/v4/media/session/h;->afd:Landroid/support/v4/media/session/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/media/session/c;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 988
    :pswitch_1
    iget-object v1, p0, Landroid/support/v4/media/session/h;->afd:Landroid/support/v4/media/session/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/c;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    goto :goto_0

    .line 991
    :pswitch_2
    iget-object v1, p0, Landroid/support/v4/media/session/h;->afd:Landroid/support/v4/media/session/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/c;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V

    goto :goto_0

    .line 994
    :pswitch_3
    iget-object v1, p0, Landroid/support/v4/media/session/h;->afd:Landroid/support/v4/media/session/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/c;->onQueueChanged(Ljava/util/List;)V

    goto :goto_0

    .line 997
    :pswitch_4
    iget-object v1, p0, Landroid/support/v4/media/session/h;->afd:Landroid/support/v4/media/session/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/c;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1000
    :pswitch_5
    iget-object v1, p0, Landroid/support/v4/media/session/h;->afd:Landroid/support/v4/media/session/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/c;->onCaptioningEnabledChanged(Z)V

    goto :goto_0

    .line 1003
    :pswitch_6
    iget-object v1, p0, Landroid/support/v4/media/session/h;->afd:Landroid/support/v4/media/session/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/c;->onRepeatModeChanged(I)V

    goto :goto_0

    .line 1006
    :pswitch_7
    iget-object v1, p0, Landroid/support/v4/media/session/h;->afd:Landroid/support/v4/media/session/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/c;->asz(Z)V

    goto :goto_0

    .line 1009
    :pswitch_8
    iget-object v1, p0, Landroid/support/v4/media/session/h;->afd:Landroid/support/v4/media/session/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/c;->onShuffleModeChanged(I)V

    goto :goto_0

    .line 1012
    :pswitch_9
    iget-object v1, p0, Landroid/support/v4/media/session/h;->afd:Landroid/support/v4/media/session/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/c;->onExtrasChanged(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1015
    :pswitch_a
    iget-object v1, p0, Landroid/support/v4/media/session/h;->afd:Landroid/support/v4/media/session/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/media/session/v;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/c;->asy(Landroid/support/v4/media/session/v;)V

    goto/16 :goto_0

    .line 1018
    :pswitch_b
    iget-object v0, p0, Landroid/support/v4/media/session/h;->afd:Landroid/support/v4/media/session/c;

    invoke-virtual {v0}, Landroid/support/v4/media/session/c;->onSessionDestroyed()V

    goto/16 :goto_0

    .line 983
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_9
        :pswitch_b
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method
