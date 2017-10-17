.class public Lcom/android/launcher3/notification/NotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "SourceFile"


# static fields
.field private static sIsConnected:Z

.field private static sNotificationListenerInstance:Lcom/android/launcher3/notification/NotificationListener;

.field private static sNotificationsChangedListener:Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;


# instance fields
.field private mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

.field private mUiCallback:Landroid/os/Handler$Callback;

.field private final mUiHandler:Landroid/os/Handler;

.field private mWorkerCallback:Landroid/os/Handler$Callback;

.field private final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/notification/NotificationListener;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/notification/NotificationListener;->sIsConnected:Z

    return v0
.end method

.method static synthetic -get2()Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;
    .locals 1

    sget-object v0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationsChangedListener:Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/launcher3/notification/NotificationListener;Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/notification/NotificationListener;->shouldBeFilteredOut(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/launcher3/notification/NotificationListener;[Landroid/service/notification/StatusBarNotification;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/notification/NotificationListener;->filterNotifications([Landroid/service/notification/StatusBarNotification;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationListenerInstance:Lcom/android/launcher3/notification/NotificationListener;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 60
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 62
    new-instance v0, Lcom/android/launcher3/notification/NotificationListener$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/notification/NotificationListener$1;-><init>(Lcom/android/launcher3/notification/NotificationListener;)V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mWorkerCallback:Landroid/os/Handler$Callback;

    .line 83
    new-instance v0, Lcom/android/launcher3/notification/NotificationListener$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/notification/NotificationListener$2;-><init>(Lcom/android/launcher3/notification/NotificationListener;)V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mUiCallback:Landroid/os/Handler$Callback;

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationListener;->mWorkerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mWorkerHandler:Landroid/os/Handler;

    .line 115
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationListener;->mUiCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mUiHandler:Landroid/os/Handler;

    .line 116
    sput-object p0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationListenerInstance:Lcom/android/launcher3/notification/NotificationListener;

    .line 117
    return-void
.end method

.method private filterNotifications([Landroid/service/notification/StatusBarNotification;)Ljava/util/List;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 203
    if-nez p1, :cond_0

    return-object v0

    .line 204
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move v0, v1

    .line 205
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 206
    aget-object v3, p1, v0

    invoke-direct {p0, v3}, Lcom/android/launcher3/notification/NotificationListener;->shouldBeFilteredOut(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 211
    array-length v3, p1

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    sub-int/2addr v3, v4

    .line 210
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 212
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_4

    .line 213
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 214
    aget-object v3, p1, v1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 217
    :cond_4
    return-object v0
.end method

.method public static getInstanceIfConnected()Lcom/android/launcher3/notification/NotificationListener;
    .locals 1

    .prologue
    .line 120
    sget-boolean v0, Lcom/android/launcher3/notification/NotificationListener;->sIsConnected:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationListenerInstance:Lcom/android/launcher3/notification/NotificationListener;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onNotificationFullRefresh()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mWorkerHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 147
    return-void
.end method

.method public static removeNotificationsChangedListener()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationsChangedListener:Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    .line 136
    return-void
.end method

.method public static setNotificationsChangedListener(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V
    .locals 1

    .prologue
    .line 127
    sput-object p0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationsChangedListener:Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    .line 129
    sget-object v0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationListenerInstance:Lcom/android/launcher3/notification/NotificationListener;

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationListenerInstance:Lcom/android/launcher3/notification/NotificationListener;

    invoke-direct {v0}, Lcom/android/launcher3/notification/NotificationListener;->onNotificationFullRefresh()V

    .line 132
    :cond_0
    return-void
.end method

.method private shouldBeFilteredOut(Landroid/service/notification/StatusBarNotification;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 221
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationListener;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/notification/NotificationListener;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0, v3, v4}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 222
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->canShowBadge()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    return v1

    .line 225
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 226
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "miscellaneous"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget v0, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 229
    return v1

    .line 232
    :cond_1
    iget v0, v3, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_4

    move v0, v1

    .line 233
    :goto_0
    iget-object v4, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "android.title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 234
    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "android.text"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 235
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 236
    :cond_2
    if-nez v0, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    move v0, v2

    .line 232
    goto :goto_0
.end method


# virtual methods
.method public getNotificationsForKeys(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .prologue
    .line 190
    invoke-static {p1}, Lcom/android/launcher3/notification/NotificationKeyData;->extractKeysOnly(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 191
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 190
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationListener;->getActiveNotifications([Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 192
    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public onListenerConnected()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    .line 141
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/notification/NotificationListener;->sIsConnected:Z

    .line 142
    invoke-direct {p0}, Lcom/android/launcher3/notification/NotificationListener;->onNotificationFullRefresh()V

    .line 143
    return-void
.end method

.method public onListenerDisconnected()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerDisconnected()V

    .line 152
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/notification/NotificationListener;->sIsConnected:Z

    .line 153
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    .line 158
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/notification/NotificationListener$NotificationPostedMsg;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/notification/NotificationListener$NotificationPostedMsg;-><init>(Lcom/android/launcher3/notification/NotificationListener;Landroid/service/notification/StatusBarNotification;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 160
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    .line 181
    new-instance v0, Landroid/support/v4/a/b;

    invoke-static {p1}, Lcom/android/launcher3/util/PackageUserKey;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v1

    .line 182
    invoke-static {p1}, Lcom/android/launcher3/notification/NotificationKeyData;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/notification/NotificationKeyData;

    move-result-object v2

    .line 181
    invoke-direct {v0, v1, v2}, Landroid/support/v4/a/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationListener;->mWorkerHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 185
    return-void
.end method
