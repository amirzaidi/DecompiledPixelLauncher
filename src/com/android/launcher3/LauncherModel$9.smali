.class final Lcom/android/launcher3/LauncherModel$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;

.field final synthetic val$bindFirst:Z

.field final synthetic val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

.field final synthetic val$packageUser:Lcom/android/launcher3/util/PackageUserKey;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;ZLcom/android/launcher3/LauncherModel$Callbacks;Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$9;->this$0:Lcom/android/launcher3/LauncherModel;

    iput-boolean p2, p0, Lcom/android/launcher3/LauncherModel$9;->val$bindFirst:Z

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$9;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    iput-object p4, p0, Lcom/android/launcher3/LauncherModel$9;->val$packageUser:Lcom/android/launcher3/util/PackageUserKey;

    .line 1930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1933
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel$9;->val$bindFirst:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$9;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->-get1(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/model/WidgetsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/model/WidgetsModel;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1934
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$9;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$9;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherModel;->-wrap0(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/LauncherModel$Callbacks;)V

    .line 1936
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$9;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->-get1(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/model/WidgetsModel;

    move-result-object v0

    .line 1937
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$9;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$9;->val$packageUser:Lcom/android/launcher3/util/PackageUserKey;

    .line 1936
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/model/WidgetsModel;->update(Landroid/content/Context;Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1938
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$9;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$9;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    invoke-static {v1, v2}, Lcom/android/launcher3/LauncherModel;->-wrap0(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/LauncherModel$Callbacks;)V

    .line 1941
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$9;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getWidgetCache()Lcom/android/launcher3/WidgetPreviewLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$9;->val$packageUser:Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/WidgetPreviewLoader;->removeObsoletePreviews(Ljava/util/ArrayList;Lcom/android/launcher3/util/PackageUserKey;)V

    .line 1942
    return-void
.end method
