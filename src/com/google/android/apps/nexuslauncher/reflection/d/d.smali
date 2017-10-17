.class public Lcom/google/android/apps/nexuslauncher/reflection/d/d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/nexuslauncher/reflection/f;


# instance fields
.field private bP:Z

.field private bQ:J

.field private final bR:Lcom/google/android/apps/nexuslauncher/reflection/b/b;

.field private bS:Z

.field private bT:J

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/reflection/b/b;Landroid/content/Context;)V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 47
    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->bT:J

    .line 49
    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->bQ:J

    .line 53
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->mContext:Landroid/content/Context;

    .line 54
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->bR:Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 59
    const-string/jumbo v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p2, p0, v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 63
    const-string/jumbo v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 64
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->bS:Z

    .line 65
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->bP:Z

    .line 66
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public be()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 136
    return-void
.end method

.method protected bf(Z)V
    .locals 2

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->bP:Z

    .line 129
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->bQ:J

    .line 130
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->bg()V

    .line 131
    return-void
.end method

.method public bg()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->bT:J

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    .line 72
    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/a/e;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/a/e;-><init>()V

    .line 73
    const-string/jumbo v0, "headset"

    iput-object v0, v2, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aN:Ljava/lang/String;

    .line 74
    iget-wide v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->bT:J

    iput-wide v4, v2, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aM:J

    .line 75
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->bS:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "headset_wired_in"

    :goto_0
    iput-object v0, v2, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aJ:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/b/a;

    invoke-direct {v0, v2}, Lcom/google/android/apps/nexuslauncher/reflection/b/a;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/a/e;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->bQ:J

    cmp-long v0, v2, v6

    if-lez v0, :cond_1

    .line 79
    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/a/e;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/a/e;-><init>()V

    .line 80
    const-string/jumbo v0, "headset"

    iput-object v0, v2, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aN:Ljava/lang/String;

    .line 81
    iget-wide v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->bQ:J

    iput-wide v4, v2, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aM:J

    .line 82
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->bP:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "headset_bluetooth_in"

    :goto_1
    iput-object v0, v2, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aJ:Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/b/a;

    invoke-direct {v0, v2}, Lcom/google/android/apps/nexuslauncher/reflection/b/a;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/a/e;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->bR:Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    const-string/jumbo v2, "headset"

    invoke-static {v0, v2, v1}, Lcom/google/research/reflection/common/b;->Uo(Lcom/google/research/reflection/a/b;Ljava/lang/String;Ljava/util/List;)V

    .line 91
    return-void

    .line 75
    :cond_2
    const-string/jumbo v0, "headset_wired_out"

    goto :goto_0

    .line 82
    :cond_3
    const-string/jumbo v0, "headset_bluetooth_out"

    goto :goto_1
.end method

.method protected bh(Z)V
    .locals 2

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->bS:Z

    .line 123
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->bT:J

    .line 124
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->bg()V

    .line 125
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->isInitialStickyBroadcast()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 96
    if-eqz v0, :cond_1

    .line 98
    const-string/jumbo v0, "state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 99
    packed-switch v0, :pswitch_data_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 101
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->bh(Z)V

    goto :goto_0

    .line 104
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->bh(Z)V

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->isInitialStickyBroadcast()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 107
    if-eqz v0, :cond_0

    .line 109
    const-string/jumbo v0, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 110
    packed-switch v0, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 115
    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->bf(Z)V

    goto :goto_0

    .line 112
    :pswitch_4
    invoke-virtual {p0, v4}, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->bf(Z)V

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 110
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
