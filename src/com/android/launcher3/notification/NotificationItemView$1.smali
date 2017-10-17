.class final Lcom/android/launcher3/notification/NotificationItemView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/notification/NotificationFooterLayout$IconAnimationEndListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/notification/NotificationItemView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/notification/NotificationItemView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationItemView$1;->this$0:Lcom/android/launcher3/notification/NotificationItemView;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onIconAnimationEnd(Lcom/android/launcher3/notification/NotificationInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 178
    if-eqz p1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView$1;->this$0:Lcom/android/launcher3/notification/NotificationItemView;

    invoke-static {v0}, Lcom/android/launcher3/notification/NotificationItemView;->-get1(Lcom/android/launcher3/notification/NotificationItemView;)Lcom/android/launcher3/notification/NotificationMainView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationItemView$1;->this$0:Lcom/android/launcher3/notification/NotificationItemView;

    invoke-static {v1}, Lcom/android/launcher3/notification/NotificationItemView;->-get0(Lcom/android/launcher3/notification/NotificationItemView;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/launcher3/notification/NotificationMainView;->applyNotificationInfo(Lcom/android/launcher3/notification/NotificationInfo;Landroid/view/View;Z)V

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView$1;->this$0:Lcom/android/launcher3/notification/NotificationItemView;

    invoke-static {v0}, Lcom/android/launcher3/notification/NotificationItemView;->-get1(Lcom/android/launcher3/notification/NotificationItemView;)Lcom/android/launcher3/notification/NotificationMainView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/notification/NotificationMainView;->setVisibility(I)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView$1;->this$0:Lcom/android/launcher3/notification/NotificationItemView;

    invoke-static {v0, v3}, Lcom/android/launcher3/notification/NotificationItemView;->-set0(Lcom/android/launcher3/notification/NotificationItemView;Z)Z

    .line 183
    return-void
.end method
