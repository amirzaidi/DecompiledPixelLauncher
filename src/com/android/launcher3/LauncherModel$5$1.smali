.class final Lcom/android/launcher3/LauncherModel$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$5;

.field final synthetic val$arrayList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$5;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$5$1;->this$1:Lcom/android/launcher3/LauncherModel$5;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$5$1;->val$arrayList:Ljava/util/ArrayList;

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherModel$Callbacks;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 541
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$5$1;->val$arrayList:Ljava/util/ArrayList;

    invoke-interface {p1, v1, v1, v1, v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 542
    return-void
.end method
