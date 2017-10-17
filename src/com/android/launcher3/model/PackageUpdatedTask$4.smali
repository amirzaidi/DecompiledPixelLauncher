.class final Lcom/android/launcher3/model/PackageUpdatedTask$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/PackageUpdatedTask;

.field final synthetic val$removedComponents:Ljava/util/HashSet;

.field final synthetic val$removedPackages:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/PackageUpdatedTask;Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/PackageUpdatedTask$4;->this$0:Lcom/android/launcher3/model/PackageUpdatedTask;

    iput-object p2, p0, Lcom/android/launcher3/model/PackageUpdatedTask$4;->val$removedPackages:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/android/launcher3/model/PackageUpdatedTask$4;->val$removedComponents:Ljava/util/HashSet;

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherModel$Callbacks;)V
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/launcher3/model/PackageUpdatedTask$4;->val$removedPackages:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/launcher3/model/PackageUpdatedTask$4;->val$removedComponents:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/launcher3/model/PackageUpdatedTask$4;->this$0:Lcom/android/launcher3/model/PackageUpdatedTask;

    invoke-static {v2}, Lcom/android/launcher3/model/PackageUpdatedTask;->-get0(Lcom/android/launcher3/model/PackageUpdatedTask;)Landroid/os/UserHandle;

    move-result-object v2

    .line 344
    invoke-interface {p1, v0, v1, v2}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindWorkspaceComponentsRemoved(Ljava/util/HashSet;Ljava/util/HashSet;Landroid/os/UserHandle;)V

    .line 346
    return-void
.end method
