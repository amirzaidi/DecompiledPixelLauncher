.class Landroid/support/v4/media/session/f;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic adL:Landroid/support/v4/media/session/c;


# virtual methods
.method public arw(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 928
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/f;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 929
    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 930
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 931
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 884
    iget-object v0, p0, Landroid/support/v4/media/session/f;->adL:Landroid/support/v4/media/session/c;

    iget-boolean v0, v0, Landroid/support/v4/media/session/c;->adH:Z

    if-eqz v0, :cond_0

    .line 887
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 925
    :goto_0
    return-void

    .line 885
    :cond_0
    return-void

    .line 889
    :pswitch_0
    iget-object v1, p0, Landroid/support/v4/media/session/f;->adL:Landroid/support/v4/media/session/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/media/session/c;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 892
    :pswitch_1
    iget-object v1, p0, Landroid/support/v4/media/session/f;->adL:Landroid/support/v4/media/session/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/c;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    goto :goto_0

    .line 895
    :pswitch_2
    iget-object v1, p0, Landroid/support/v4/media/session/f;->adL:Landroid/support/v4/media/session/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/c;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V

    goto :goto_0

    .line 898
    :pswitch_3
    iget-object v1, p0, Landroid/support/v4/media/session/f;->adL:Landroid/support/v4/media/session/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/c;->onQueueChanged(Ljava/util/List;)V

    goto :goto_0

    .line 901
    :pswitch_4
    iget-object v1, p0, Landroid/support/v4/media/session/f;->adL:Landroid/support/v4/media/session/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/c;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 904
    :pswitch_5
    iget-object v1, p0, Landroid/support/v4/media/session/f;->adL:Landroid/support/v4/media/session/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/c;->onCaptioningEnabledChanged(Z)V

    goto :goto_0

    .line 907
    :pswitch_6
    iget-object v1, p0, Landroid/support/v4/media/session/f;->adL:Landroid/support/v4/media/session/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/c;->onRepeatModeChanged(I)V

    goto :goto_0

    .line 910
    :pswitch_7
    iget-object v1, p0, Landroid/support/v4/media/session/f;->adL:Landroid/support/v4/media/session/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/c;->arv(Z)V

    goto :goto_0

    .line 913
    :pswitch_8
    iget-object v1, p0, Landroid/support/v4/media/session/f;->adL:Landroid/support/v4/media/session/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/c;->onShuffleModeChanged(I)V

    goto :goto_0

    .line 916
    :pswitch_9
    iget-object v1, p0, Landroid/support/v4/media/session/f;->adL:Landroid/support/v4/media/session/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/c;->onExtrasChanged(Landroid/os/Bundle;)V

    goto :goto_0

    .line 919
    :pswitch_a
    iget-object v1, p0, Landroid/support/v4/media/session/f;->adL:Landroid/support/v4/media/session/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/media/session/r;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/c;->aru(Landroid/support/v4/media/session/r;)V

    goto/16 :goto_0

    .line 922
    :pswitch_b
    iget-object v0, p0, Landroid/support/v4/media/session/f;->adL:Landroid/support/v4/media/session/c;

    invoke-virtual {v0}, Landroid/support/v4/media/session/c;->onSessionDestroyed()V

    goto/16 :goto_0

    .line 887
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
