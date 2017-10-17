.class final Lcom/android/launcher3/Launcher$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field final synthetic val$updatedBadges:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$13;->this$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$13;->val$updatedBadges:Ljava/util/Set;

    .line 1574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/android/launcher3/Launcher$13;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$13;->val$updatedBadges:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->updateIconBadges(Ljava/util/Set;)V

    .line 1578
    iget-object v0, p0, Lcom/android/launcher3/Launcher$13;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$13;->val$updatedBadges:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->updateIconBadges(Ljava/util/Set;)V

    .line 1580
    iget-object v0, p0, Lcom/android/launcher3/Launcher$13;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    .line 1581
    if-eqz v0, :cond_0

    .line 1582
    iget-object v1, p0, Lcom/android/launcher3/Launcher$13;->val$updatedBadges:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->updateNotificationHeader(Ljava/util/Set;)V

    .line 1584
    :cond_0
    return-void
.end method
