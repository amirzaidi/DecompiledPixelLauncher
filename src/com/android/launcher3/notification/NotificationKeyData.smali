.class public Lcom/android/launcher3/notification/NotificationKeyData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public count:I

.field public final notificationKey:Ljava/lang/String;

.field public final shortcutId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationKeyData;->notificationKey:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/android/launcher3/notification/NotificationKeyData;->shortcutId:Ljava/lang/String;

    .line 40
    const/4 v0, 0x1

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/notification/NotificationKeyData;->count:I

    .line 41
    return-void
.end method

.method public static extractKeysOnly(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .prologue
    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/notification/NotificationKeyData;

    .line 51
    iget-object v0, v0, Lcom/android/launcher3/notification/NotificationKeyData;->notificationKey:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_0
    return-object v1
.end method

.method public static fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/notification/NotificationKeyData;
    .locals 4

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 45
    new-instance v1, Lcom/android/launcher3/notification/NotificationKeyData;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v3

    iget v0, v0, Landroid/app/Notification;->number:I

    invoke-direct {v1, v2, v3, v0}, Lcom/android/launcher3/notification/NotificationKeyData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 58
    instance-of v0, p1, Lcom/android/launcher3/notification/NotificationKeyData;

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x0

    return v0

    .line 62
    :cond_0
    check-cast p1, Lcom/android/launcher3/notification/NotificationKeyData;

    iget-object v0, p1, Lcom/android/launcher3/notification/NotificationKeyData;->notificationKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationKeyData;->notificationKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
