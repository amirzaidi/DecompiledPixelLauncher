.class public Landroid/support/v4/app/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field aaU:I

.field public aaV:Ljava/util/ArrayList;

.field aaW:Ljava/lang/String;

.field public aaX:Ljava/util/ArrayList;

.field aaY:Ljava/lang/String;

.field public aaZ:Ljava/lang/CharSequence;

.field abA:Landroid/widget/RemoteViews;

.field abB:J

.field public abC:Landroid/support/v4/app/A;

.field abD:Z

.field abE:Ljava/lang/String;

.field public abF:[Ljava/lang/CharSequence;

.field public aba:Ljava/lang/CharSequence;

.field abb:Z

.field abc:Landroid/widget/RemoteViews;

.field abd:I

.field private abe:I

.field public abf:Ljava/lang/CharSequence;

.field abg:Landroid/app/PendingIntent;

.field public abh:Landroid/graphics/Bitmap;

.field public abi:I

.field abj:Landroid/widget/RemoteViews;

.field abk:Z

.field abl:Z

.field abm:Z

.field abn:Ljava/lang/String;

.field abo:I

.field abp:Landroid/os/Bundle;

.field abq:I

.field abr:Ljava/lang/String;

.field public abs:Landroid/app/Notification;

.field abt:I

.field public abu:Z

.field abv:Landroid/widget/RemoteViews;

.field abw:Z

.field abx:Landroid/app/PendingIntent;

.field aby:Landroid/app/Notification;

.field public abz:Ljava/lang/CharSequence;

.field mBadgeIcon:I

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/Z;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1082
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1025
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Z;->abw:Z

    .line 1045
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/Z;->aaV:Ljava/util/ArrayList;

    .line 1047
    iput-boolean v4, p0, Landroid/support/v4/app/Z;->abb:Z

    .line 1052
    iput v4, p0, Landroid/support/v4/app/Z;->aaU:I

    .line 1053
    iput v4, p0, Landroid/support/v4/app/Z;->abo:I

    .line 1059
    iput v4, p0, Landroid/support/v4/app/Z;->mBadgeIcon:I

    .line 1062
    iput v4, p0, Landroid/support/v4/app/Z;->abe:I

    .line 1065
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/Z;->abs:Landroid/app/Notification;

    .line 1083
    iput-object p1, p0, Landroid/support/v4/app/Z;->mContext:Landroid/content/Context;

    .line 1084
    iput-object p2, p0, Landroid/support/v4/app/Z;->abr:Ljava/lang/String;

    .line 1087
    iget-object v0, p0, Landroid/support/v4/app/Z;->abs:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 1088
    iget-object v0, p0, Landroid/support/v4/app/Z;->abs:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 1089
    iput v4, p0, Landroid/support/v4/app/Z;->abt:I

    .line 1090
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/Z;->aaX:Ljava/util/ArrayList;

    .line 1091
    return-void
.end method

.method protected static anM(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/16 v1, 0x1400

    .line 1873
    if-eqz p0, :cond_0

    .line 1874
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 1877
    :goto_0
    return-object p0

    .line 1873
    :cond_0
    return-object p0

    .line 1875
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0
.end method

.method static synthetic anO(Landroid/support/v4/app/Z;)I
    .locals 1

    .prologue
    .line 990
    iget v0, p0, Landroid/support/v4/app/Z;->abe:I

    return v0
.end method

.method private anQ(IZ)V
    .locals 3

    .prologue
    .line 1492
    if-nez p2, :cond_0

    .line 1495
    iget-object v0, p0, Landroid/support/v4/app/Z;->abs:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1497
    :goto_0
    return-void

    .line 1493
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Z;->abs:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public anJ(I)Landroid/support/v4/app/Z;
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Landroid/support/v4/app/Z;->abs:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 1146
    return-object p0
.end method

.method public anK(J)Landroid/support/v4/app/Z;
    .locals 1

    .prologue
    .line 1108
    iget-object v0, p0, Landroid/support/v4/app/Z;->abs:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 1109
    return-object p0
.end method

.method public anL(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;
    .locals 1

    .prologue
    .line 1177
    invoke-static {p1}, Landroid/support/v4/app/Z;->anM(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Z;->aba:Ljava/lang/CharSequence;

    .line 1178
    return-object p0
.end method

.method public anN(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;
    .locals 1

    .prologue
    .line 1169
    invoke-static {p1}, Landroid/support/v4/app/Z;->anM(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Z;->aaZ:Ljava/lang/CharSequence;

    .line 1170
    return-object p0
.end method

.method public anP(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;
    .locals 2

    .prologue
    .line 1305
    iget-object v0, p0, Landroid/support/v4/app/Z;->abs:Landroid/app/Notification;

    invoke-static {p1}, Landroid/support/v4/app/Z;->anM(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1306
    return-object p0
.end method

.method public anR(Z)Landroid/support/v4/app/Z;
    .locals 1

    .prologue
    .line 1446
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/Z;->anQ(IZ)V

    .line 1447
    return-object p0
.end method

.method public anS(Landroid/app/PendingIntent;)Landroid/support/v4/app/Z;
    .locals 0

    .prologue
    .line 1260
    iput-object p1, p0, Landroid/support/v4/app/Z;->abx:Landroid/app/PendingIntent;

    .line 1261
    return-object p0
.end method

.method protected anT()Landroid/support/v4/app/aq;
    .locals 1

    .prologue
    .line 1869
    new-instance v0, Landroid/support/v4/app/aq;

    invoke-direct {v0}, Landroid/support/v4/app/aq;-><init>()V

    return-object v0
.end method

.method public build()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 1861
    sget-object v0, Landroid/support/v4/app/k;->YQ:Landroid/support/v4/app/j;

    invoke-virtual {p0}, Landroid/support/v4/app/Z;->anT()Landroid/support/v4/app/aq;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/support/v4/app/j;->all(Landroid/support/v4/app/Z;Landroid/support/v4/app/aq;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
