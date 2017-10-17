.class final Lcom/android/launcher3/model/PackageInstallStateChangedTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/PackageInstallStateChangedTask;

.field final synthetic val$updatedPromiseApp:Lcom/android/launcher3/PromiseAppInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/PackageInstallStateChangedTask;Lcom/android/launcher3/PromiseAppInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask$1;->this$0:Lcom/android/launcher3/model/PackageInstallStateChangedTask;

    iput-object p2, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask$1;->val$updatedPromiseApp:Lcom/android/launcher3/PromiseAppInfo;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherModel$Callbacks;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask$1;->val$updatedPromiseApp:Lcom/android/launcher3/PromiseAppInfo;

    invoke-interface {p1, v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindPromiseAppProgressUpdated(Lcom/android/launcher3/PromiseAppInfo;)V

    .line 78
    return-void
.end method
