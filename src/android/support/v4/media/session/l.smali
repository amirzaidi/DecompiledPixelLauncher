.class public Landroid/support/v4/media/session/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asO(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 200
    invoke-static {p0}, Landroid/support/v4/media/session/l;->asQ(Ljava/lang/Object;)Landroid/media/AudioAttributes;

    move-result-object v0

    .line 201
    invoke-static {v0}, Landroid/support/v4/media/session/l;->asP(Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method private static asP(Landroid/media/AudioAttributes;)I
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 224
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eq v0, v1, :cond_0

    .line 228
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eq v0, v3, :cond_1

    .line 233
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 257
    :pswitch_0
    return v2

    .line 226
    :cond_0
    const/4 v0, 0x7

    return v0

    .line 229
    :cond_1
    const/4 v0, 0x6

    return v0

    .line 238
    :pswitch_1
    return v2

    .line 240
    :pswitch_2
    return v1

    .line 242
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 244
    :pswitch_4
    const/16 v0, 0x8

    return v0

    .line 246
    :pswitch_5
    return v3

    .line 248
    :pswitch_6
    const/4 v0, 0x2

    return v0

    .line 254
    :pswitch_7
    const/4 v0, 0x5

    return v0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static asQ(Ljava/lang/Object;)Landroid/media/AudioAttributes;
    .locals 1

    .prologue
    .line 196
    check-cast p0, Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method
