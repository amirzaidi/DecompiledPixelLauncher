.class public Landroid/support/v4/app/aS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/Y;
.implements Landroid/support/v4/app/D;


# instance fields
.field private adW:Landroid/app/Notification$Builder;

.field private adX:Ljava/util/List;

.field private adY:Landroid/widget/RemoteViews;

.field private adZ:Landroid/widget/RemoteViews;

.field private aea:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/util/ArrayList;Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 8

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/support/v4/app/aS;->adX:Ljava/util/List;

    .line 49
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-wide v6, p2, Landroid/app/Notification;->when:J

    .line 50
    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 51
    move/from16 v0, p14

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, p2, Landroid/app/Notification;->icon:I

    iget v6, p2, Landroid/app/Notification;->iconLevel:I

    .line 52
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 53
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 54
    invoke-virtual {v4, v5, p6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v6, p2, Landroid/app/Notification;->audioStreamType:I

    .line 55
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->vibrate:[J

    .line 56
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, p2, Landroid/app/Notification;->ledARGB:I

    iget v6, p2, Landroid/app/Notification;->ledOnMS:I

    iget v7, p2, Landroid/app/Notification;->ledOffMS:I

    .line 57
    invoke-virtual {v4, v5, v6, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v4, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    const/4 v4, 0x0

    .line 58
    :goto_0
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v4, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_2

    const/4 v4, 0x0

    .line 59
    :goto_1
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v4, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_3

    const/4 v4, 0x0

    .line 60
    :goto_2
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, p2, Landroid/app/Notification;->defaults:I

    .line 61
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 62
    invoke-virtual {v4, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 63
    invoke-virtual {v4, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 64
    move-object/from16 v0, p17

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 65
    invoke-virtual {v4, p5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 66
    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 67
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v4, p2, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_4

    const/4 v4, 0x0

    .line 68
    :goto_3
    move-object/from16 v0, p9

    invoke-virtual {v5, v0, v4}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 70
    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 71
    invoke-virtual {v4, p7}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 72
    move/from16 v0, p15

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 73
    move/from16 v0, p16

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 74
    move/from16 v0, p11

    move/from16 v1, p12

    move/from16 v2, p13

    invoke-virtual {v4, v0, v1, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v4/app/aS;->adW:Landroid/app/Notification$Builder;

    .line 75
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, p0, Landroid/support/v4/app/aS;->aea:Landroid/os/Bundle;

    .line 76
    if-nez p20, :cond_5

    .line 79
    :goto_4
    if-nez p19, :cond_6

    .line 83
    :cond_0
    :goto_5
    if-nez p18, :cond_7

    .line 86
    :goto_6
    if-nez p21, :cond_8

    .line 94
    :goto_7
    if-nez p23, :cond_a

    .line 97
    :goto_8
    move-object/from16 v0, p24

    iput-object v0, p0, Landroid/support/v4/app/aS;->adZ:Landroid/widget/RemoteViews;

    .line 98
    move-object/from16 v0, p25

    iput-object v0, p0, Landroid/support/v4/app/aS;->adY:Landroid/widget/RemoteViews;

    .line 99
    return-void

    .line 57
    :cond_1
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 58
    :cond_2
    const/4 v4, 0x1

    goto :goto_1

    .line 59
    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    .line 67
    :cond_4
    const/4 v4, 0x1

    goto :goto_3

    .line 77
    :cond_5
    iget-object v4, p0, Landroid/support/v4/app/aS;->aea:Landroid/os/Bundle;

    move-object/from16 v0, p20

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_4

    .line 79
    :cond_6
    invoke-virtual/range {p19 .. p19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 80
    iget-object v5, p0, Landroid/support/v4/app/aS;->aea:Landroid/os/Bundle;

    const-string/jumbo v6, "android.people"

    .line 81
    invoke-virtual/range {p19 .. p19}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, p19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 80
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5

    .line 84
    :cond_7
    iget-object v4, p0, Landroid/support/v4/app/aS;->aea:Landroid/os/Bundle;

    const-string/jumbo v5, "android.support.localOnly"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_6

    .line 87
    :cond_8
    iget-object v4, p0, Landroid/support/v4/app/aS;->aea:Landroid/os/Bundle;

    const-string/jumbo v5, "android.support.groupKey"

    move-object/from16 v0, p21

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    if-nez p22, :cond_9

    .line 91
    iget-object v4, p0, Landroid/support/v4/app/aS;->aea:Landroid/os/Bundle;

    const-string/jumbo v5, "android.support.useSideChannel"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_7

    .line 89
    :cond_9
    iget-object v4, p0, Landroid/support/v4/app/aS;->aea:Landroid/os/Bundle;

    const-string/jumbo v5, "android.support.isGroupSummary"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_7

    .line 95
    :cond_a
    iget-object v4, p0, Landroid/support/v4/app/aS;->aea:Landroid/os/Bundle;

    const-string/jumbo v5, "android.support.sortKey"

    move-object/from16 v0, p23

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method


# virtual methods
.method public ajA(Landroid/support/v4/app/T;)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Landroid/support/v4/app/aS;->adX:Ljava/util/List;

    iget-object v1, p0, Landroid/support/v4/app/aS;->adW:Landroid/app/Notification$Builder;

    invoke-static {v1, p1}, Landroid/support/v4/app/aF;->aoo(Landroid/app/Notification$Builder;Landroid/support/v4/app/T;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public build()Landroid/app/Notification;
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Landroid/support/v4/app/aS;->adX:Ljava/util/List;

    invoke-static {v0}, Landroid/support/v4/app/aF;->aon(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v0

    .line 115
    if-nez v0, :cond_0

    .line 120
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/aS;->adW:Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroid/support/v4/app/aS;->aea:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 121
    iget-object v0, p0, Landroid/support/v4/app/aS;->adW:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 122
    iget-object v1, p0, Landroid/support/v4/app/aS;->adZ:Landroid/widget/RemoteViews;

    if-nez v1, :cond_1

    .line 125
    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/aS;->adY:Landroid/widget/RemoteViews;

    if-nez v1, :cond_2

    .line 128
    :goto_2
    return-object v0

    .line 117
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/aS;->aea:Landroid/os/Bundle;

    const-string/jumbo v2, "android.support.actionExtras"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/aS;->adZ:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_1

    .line 126
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/aS;->adY:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    goto :goto_2
.end method
