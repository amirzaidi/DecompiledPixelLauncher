.class final Lcom/android/launcher3/notification/NotificationListener$1;
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
    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationListener$1;->this$0:Lcom/android/launcher3/notification/NotificationListener;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 93
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 71
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener$1;->this$0:Lcom/android/launcher3/notification/NotificationListener;

    invoke-static {v0}, Lcom/android/launcher3/notification/NotificationListener;->-get0(Lcom/android/launcher3/notification/NotificationListener;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 74
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener$1;->this$0:Lcom/android/launcher3/notification/NotificationListener;

    invoke-static {v0}, Lcom/android/launcher3/notification/NotificationListener;->-get0(Lcom/android/launcher3/notification/NotificationListener;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 78
    :pswitch_2
    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->-get1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener$1;->this$0:Lcom/android/launcher3/notification/NotificationListener;

    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationListener$1;->this$0:Lcom/android/launcher3/notification/NotificationListener;

    invoke-virtual {v1}, Lcom/android/launcher3/notification/NotificationListener;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/notification/NotificationListener;->-wrap1(Lcom/android/launcher3/notification/NotificationListener;[Landroid/service/notification/StatusBarNotification;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationListener$1;->this$0:Lcom/android/launcher3/notification/NotificationListener;

    invoke-static {v1}, Lcom/android/launcher3/notification/NotificationListener;->-get0(Lcom/android/launcher3/notification/NotificationListener;)Landroid/os/Handler;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    const-string/jumbo v0, "NotificationListener"

    const-string/jumbo v1, "SecurityException: failed to fetch notifications"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 87
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
