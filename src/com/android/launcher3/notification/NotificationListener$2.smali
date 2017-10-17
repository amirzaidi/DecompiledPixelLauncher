.class final Lcom/android/launcher3/notification/NotificationListener$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/notification/NotificationListener;


# direct methods
.method constructor <init>(Lcom/android/launcher3/notification/NotificationListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationListener$2;->this$0:Lcom/android/launcher3/notification/NotificationListener;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .prologue
    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 122
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 102
    :pswitch_0
    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->-get2()Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/notification/NotificationListener$NotificationPostedMsg;

    .line 104
    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->-get2()Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/notification/NotificationListener$NotificationPostedMsg;->packageUserKey:Lcom/android/launcher3/util/PackageUserKey;

    .line 105
    iget-object v3, v0, Lcom/android/launcher3/notification/NotificationListener$NotificationPostedMsg;->notificationKey:Lcom/android/launcher3/notification/NotificationKeyData;

    iget-boolean v0, v0, Lcom/android/launcher3/notification/NotificationListener$NotificationPostedMsg;->shouldBeFilteredOut:Z

    .line 104
    invoke-interface {v1, v2, v3, v0}, Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;->onNotificationPosted(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;Z)V

    goto :goto_0

    .line 109
    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->-get2()Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 112
    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->-get2()Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    move-result-object v2

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/notification/NotificationKeyData;

    invoke-interface {v2, v1, v0}, Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;->onNotificationRemoved(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;)V

    goto :goto_0

    .line 116
    :pswitch_2
    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->-get2()Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->-get2()Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    move-result-object v1

    .line 118
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 117
    invoke-interface {v1, v0}, Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;->onNotificationFullRefresh(Ljava/util/List;)V

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
