.class public Landroid/support/v4/app/R;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/X;
.implements Landroid/support/v4/app/C;


# instance fields
.field private Yn:Landroid/app/Notification$Builder;

.field private Yo:Landroid/widget/RemoteViews;

.field private Yp:Landroid/widget/RemoteViews;

.field private Yq:I

.field private Yr:Landroid/widget/RemoteViews;

.field private Ys:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;IILandroid/app/Notification;Ljava/lang/String;ZLjava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;I)V
    .locals 8

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-wide v6, p2, Landroid/app/Notification;->when:J

    .line 84
    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 85
    move/from16 v0, p14

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, p2, Landroid/app/Notification;->icon:I

    iget v6, p2, Landroid/app/Notification;->iconLevel:I

    .line 86
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 87
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 88
    invoke-virtual {v4, v5, p6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v6, p2, Landroid/app/Notification;->audioStreamType:I

    .line 89
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->vibrate:[J

    .line 90
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, p2, Landroid/app/Notification;->ledARGB:I

    iget v6, p2, Landroid/app/Notification;->ledOnMS:I

    iget v7, p2, Landroid/app/Notification;->ledOffMS:I

    .line 91
    invoke-virtual {v4, v5, v6, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v4, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 92
    :goto_0
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v4, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    const/4 v4, 0x0

    .line 93
    :goto_1
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v4, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_2

    const/4 v4, 0x0

    .line 94
    :goto_2
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, p2, Landroid/app/Notification;->defaults:I

    .line 95
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 96
    invoke-virtual {v4, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 97
    invoke-virtual {v4, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 98
    move-object/from16 v0, p17

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 99
    invoke-virtual {v4, p5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 100
    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 101
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v4, p2, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_3

    const/4 v4, 0x0

    .line 102
    :goto_3
    move-object/from16 v0, p9

    invoke-virtual {v5, v0, v4}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 104
    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 105
    invoke-virtual {v4, p7}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 106
    move/from16 v0, p15

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 107
    move/from16 v0, p16

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 108
    move/from16 v0, p11

    move/from16 v1, p12

    move/from16 v2, p13

    invoke-virtual {v4, v0, v1, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 109
    move/from16 v0, p18

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 110
    move-object/from16 v0, p25

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 111
    move/from16 v0, p26

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 112
    move-object/from16 v0, p27

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 113
    move-object/from16 v0, p19

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 114
    move/from16 v0, p22

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 115
    move/from16 v0, p23

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 116
    move-object/from16 v0, p24

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v4/app/R;->Yn:Landroid/app/Notification$Builder;

    .line 117
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, p0, Landroid/support/v4/app/R;->Ys:Landroid/os/Bundle;

    .line 118
    if-nez p21, :cond_4

    .line 121
    :goto_4
    invoke-virtual/range {p20 .. p20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 124
    move-object/from16 v0, p28

    iput-object v0, p0, Landroid/support/v4/app/R;->Yr:Landroid/widget/RemoteViews;

    .line 125
    move-object/from16 v0, p29

    iput-object v0, p0, Landroid/support/v4/app/R;->Yo:Landroid/widget/RemoteViews;

    .line 126
    move-object/from16 v0, p30

    iput-object v0, p0, Landroid/support/v4/app/R;->Yp:Landroid/widget/RemoteViews;

    .line 127
    move/from16 v0, p31

    iput v0, p0, Landroid/support/v4/app/R;->Yq:I

    .line 128
    return-void

    .line 91
    :cond_0
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 92
    :cond_1
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 93
    :cond_2
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 101
    :cond_3
    const/4 v4, 0x1

    goto/16 :goto_3

    .line 119
    :cond_4
    iget-object v4, p0, Landroid/support/v4/app/R;->Ys:Landroid/os/Bundle;

    move-object/from16 v0, p21

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_4

    .line 121
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 122
    iget-object v6, p0, Landroid/support/v4/app/R;->Yn:Landroid/app/Notification$Builder;

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_5
.end method

.method private alQ(Landroid/app/Notification;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 172
    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 173
    iput-object v0, p1, Landroid/app/Notification;->vibrate:[J

    .line 174
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 175
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 176
    return-void
.end method


# virtual methods
.method public aim(Landroid/support/v4/app/S;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Landroid/support/v4/app/R;->Yn:Landroid/app/Notification$Builder;

    invoke-static {v0, p1}, Landroid/support/v4/app/aR;->anV(Landroid/app/Notification$Builder;Landroid/support/v4/app/S;)V

    .line 133
    return-void
.end method

.method public ain()Landroid/app/Notification$Builder;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Landroid/support/v4/app/R;->Yn:Landroid/app/Notification$Builder;

    return-object v0
.end method

.method public build()Landroid/app/Notification;
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/v4/app/R;->Yn:Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroid/support/v4/app/R;->Ys:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 143
    iget-object v0, p0, Landroid/support/v4/app/R;->Yn:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 144
    iget-object v1, p0, Landroid/support/v4/app/R;->Yr:Landroid/widget/RemoteViews;

    if-nez v1, :cond_1

    .line 147
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/R;->Yo:Landroid/widget/RemoteViews;

    if-nez v1, :cond_2

    .line 150
    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/R;->Yp:Landroid/widget/RemoteViews;

    if-nez v1, :cond_3

    .line 154
    :goto_2
    iget v1, p0, Landroid/support/v4/app/R;->Yq:I

    if-nez v1, :cond_4

    .line 168
    :cond_0
    :goto_3
    return-object v0

    .line 145
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/R;->Yr:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_0

    .line 148
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/R;->Yo:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    goto :goto_1

    .line 151
    :cond_3
    iget-object v1, p0, Landroid/support/v4/app/R;->Yp:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    goto :goto_2

    .line 156
    :cond_4
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 162
    :cond_5
    :goto_4
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/v4/app/R;->Yq:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 165
    invoke-direct {p0, v0}, Landroid/support/v4/app/R;->alQ(Landroid/app/Notification;)V

    goto :goto_3

    .line 156
    :cond_6
    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/support/v4/app/R;->Yq:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 159
    invoke-direct {p0, v0}, Landroid/support/v4/app/R;->alQ(Landroid/app/Notification;)V

    goto :goto_4
.end method
