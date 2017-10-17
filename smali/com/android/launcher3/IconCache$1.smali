.class final Lcom/android/launcher3/IconCache$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/IconCache;

.field final synthetic val$caller:Lcom/android/launcher3/IconCache$ItemInfoUpdateReceiver;

.field final synthetic val$info:Lcom/android/launcher3/ItemInfoWithIcon;


# direct methods
.method constructor <init>(Lcom/android/launcher3/IconCache;Lcom/android/launcher3/ItemInfoWithIcon;Lcom/android/launcher3/IconCache$ItemInfoUpdateReceiver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/IconCache$1;->this$0:Lcom/android/launcher3/IconCache;

    iput-object p2, p0, Lcom/android/launcher3/IconCache$1;->val$info:Lcom/android/launcher3/ItemInfoWithIcon;

    iput-object p3, p0, Lcom/android/launcher3/IconCache$1;->val$caller:Lcom/android/launcher3/IconCache$ItemInfoUpdateReceiver;

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 419
    iget-object v0, p0, Lcom/android/launcher3/IconCache$1;->val$info:Lcom/android/launcher3/ItemInfoWithIcon;

    instance-of v0, v0, Lcom/android/launcher3/AppInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/IconCache$1;->val$info:Lcom/android/launcher3/ItemInfoWithIcon;

    instance-of v0, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_2

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/IconCache$1;->this$0:Lcom/android/launcher3/IconCache;

    iget-object v1, p0, Lcom/android/launcher3/IconCache$1;->val$info:Lcom/android/launcher3/ItemInfoWithIcon;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Z)V

    .line 424
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/IconCache$1;->this$0:Lcom/android/launcher3/IconCache;

    iget-object v0, v0, Lcom/android/launcher3/IconCache;->mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

    new-instance v1, Lcom/android/launcher3/IconCache$1$1;

    iget-object v2, p0, Lcom/android/launcher3/IconCache$1;->val$caller:Lcom/android/launcher3/IconCache$ItemInfoUpdateReceiver;

    iget-object v3, p0, Lcom/android/launcher3/IconCache$1;->val$info:Lcom/android/launcher3/ItemInfoWithIcon;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/launcher3/IconCache$1$1;-><init>(Lcom/android/launcher3/IconCache$1;Lcom/android/launcher3/IconCache$ItemInfoUpdateReceiver;Lcom/android/launcher3/ItemInfoWithIcon;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 431
    return-void

    .line 421
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/IconCache$1;->val$info:Lcom/android/launcher3/ItemInfoWithIcon;

    instance-of v0, v0, Lcom/android/launcher3/model/PackageItemInfo;

    if-eqz v0, :cond_1

    .line 422
    iget-object v1, p0, Lcom/android/launcher3/IconCache$1;->this$0:Lcom/android/launcher3/IconCache;

    iget-object v0, p0, Lcom/android/launcher3/IconCache$1;->val$info:Lcom/android/launcher3/ItemInfoWithIcon;

    check-cast v0, Lcom/android/launcher3/model/PackageItemInfo;

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/IconCache;->getTitleAndIconForApp(Lcom/android/launcher3/model/PackageItemInfo;Z)V

    goto :goto_0
.end method
