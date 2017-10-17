.class public Landroid/support/v4/app/Y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ZA:Ljava/lang/CharSequence;

.field ZB:Landroid/app/PendingIntent;

.field public ZC:Landroid/graphics/Bitmap;

.field public ZD:I

.field ZE:Landroid/widget/RemoteViews;

.field ZF:Z

.field ZG:Z

.field ZH:Z

.field ZI:Ljava/lang/String;

.field ZJ:I

.field ZK:Landroid/os/Bundle;

.field ZL:I

.field ZM:Ljava/lang/String;

.field public ZN:Landroid/app/Notification;

.field ZO:I

.field public ZP:Z

.field ZQ:Landroid/widget/RemoteViews;

.field ZR:Z

.field ZS:Landroid/app/PendingIntent;

.field ZT:Landroid/app/Notification;

.field public ZU:Ljava/lang/CharSequence;

.field ZV:Landroid/widget/RemoteViews;

.field ZW:J

.field public ZX:Landroid/support/v4/app/z;

.field ZY:Z

.field ZZ:Ljava/lang/String;

.field Zp:I

.field public Zq:Ljava/util/ArrayList;

.field Zr:Ljava/lang/String;

.field public Zs:Ljava/util/ArrayList;

.field Zt:Ljava/lang/String;

.field public Zu:Ljava/lang/CharSequence;

.field public Zv:Ljava/lang/CharSequence;

.field Zw:Z

.field Zx:Landroid/widget/RemoteViews;

.field Zy:I

.field private Zz:I

.field public aaa:[Ljava/lang/CharSequence;

.field mBadgeIcon:I

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1096
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/Y;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1097
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Y;->ZR:Z

    .line 1041
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/Y;->Zq:Ljava/util/ArrayList;

    .line 1043
    iput-boolean v4, p0, Landroid/support/v4/app/Y;->Zw:Z

    .line 1048
    iput v4, p0, Landroid/support/v4/app/Y;->Zp:I

    .line 1049
    iput v4, p0, Landroid/support/v4/app/Y;->ZJ:I

    .line 1055
    iput v4, p0, Landroid/support/v4/app/Y;->mBadgeIcon:I

    .line 1058
    iput v4, p0, Landroid/support/v4/app/Y;->Zz:I

    .line 1061
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/Y;->ZN:Landroid/app/Notification;

    .line 1079
    iput-object p1, p0, Landroid/support/v4/app/Y;->mContext:Landroid/content/Context;

    .line 1080
    iput-object p2, p0, Landroid/support/v4/app/Y;->ZM:Ljava/lang/String;

    .line 1083
    iget-object v0, p0, Landroid/support/v4/app/Y;->ZN:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 1084
    iget-object v0, p0, Landroid/support/v4/app/Y;->ZN:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 1085
    iput v4, p0, Landroid/support/v4/app/Y;->ZO:I

    .line 1086
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/Y;->Zs:Ljava/util/ArrayList;

    .line 1087
    return-void
.end method

.method static synthetic amB(Landroid/support/v4/app/Y;)I
    .locals 1

    .prologue
    .line 986
    iget v0, p0, Landroid/support/v4/app/Y;->Zz:I

    return v0
.end method

.method private amD(IZ)V
    .locals 3

    .prologue
    .line 1488
    if-nez p2, :cond_0

    .line 1491
    iget-object v0, p0, Landroid/support/v4/app/Y;->ZN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1493
    :goto_0
    return-void

    .line 1489
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Y;->ZN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method

.method protected static amy(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/16 v1, 0x1400

    .line 1881
    if-eqz p0, :cond_0

    .line 1882
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 1885
    :goto_0
    return-object p0

    .line 1881
    :cond_0
    return-object p0

    .line 1883
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method protected amA()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1960
    iget-object v0, p0, Landroid/support/v4/app/Y;->Zu:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public amC(Ljava/lang/CharSequence;)Landroid/support/v4/app/Y;
    .locals 2

    .prologue
    .line 1301
    iget-object v0, p0, Landroid/support/v4/app/Y;->ZN:Landroid/app/Notification;

    invoke-static {p1}, Landroid/support/v4/app/Y;->amy(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1302
    return-object p0
.end method

.method public amE(Z)Landroid/support/v4/app/Y;
    .locals 1

    .prologue
    .line 1442
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/Y;->amD(IZ)V

    .line 1443
    return-object p0
.end method

.method public amF(Landroid/app/PendingIntent;)Landroid/support/v4/app/Y;
    .locals 0

    .prologue
    .line 1256
    iput-object p1, p0, Landroid/support/v4/app/Y;->ZS:Landroid/app/PendingIntent;

    .line 1257
    return-object p0
.end method

.method protected amG()Landroid/support/v4/app/ar;
    .locals 1

    .prologue
    .line 1877
    new-instance v0, Landroid/support/v4/app/ar;

    invoke-direct {v0}, Landroid/support/v4/app/ar;-><init>()V

    return-object v0
.end method

.method public amu(I)Landroid/support/v4/app/Y;
    .locals 1

    .prologue
    .line 1141
    iget-object v0, p0, Landroid/support/v4/app/Y;->ZN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 1142
    return-object p0
.end method

.method public amv(J)Landroid/support/v4/app/Y;
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Landroid/support/v4/app/Y;->ZN:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 1105
    return-object p0
.end method

.method public amw(Ljava/lang/CharSequence;)Landroid/support/v4/app/Y;
    .locals 1

    .prologue
    .line 1173
    invoke-static {p1}, Landroid/support/v4/app/Y;->amy(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Y;->Zv:Ljava/lang/CharSequence;

    .line 1174
    return-object p0
.end method

.method protected amx()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1950
    iget-object v0, p0, Landroid/support/v4/app/Y;->Zv:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public amz(Ljava/lang/CharSequence;)Landroid/support/v4/app/Y;
    .locals 1

    .prologue
    .line 1165
    invoke-static {p1}, Landroid/support/v4/app/Y;->amy(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Y;->Zu:Ljava/lang/CharSequence;

    .line 1166
    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 1869
    sget-object v0, Landroid/support/v4/app/i;->Xg:Landroid/support/v4/app/h;

    invoke-virtual {p0}, Landroid/support/v4/app/Y;->amG()Landroid/support/v4/app/ar;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/support/v4/app/h;->ajY(Landroid/support/v4/app/Y;Landroid/support/v4/app/ar;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
