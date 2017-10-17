.class final Lcom/android/launcher3/model/PackageUpdatedTask$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/PackageUpdatedTask;

.field final synthetic val$widgets:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/PackageUpdatedTask;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/PackageUpdatedTask$3;->this$0:Lcom/android/launcher3/model/PackageUpdatedTask;

    iput-object p2, p0, Lcom/android/launcher3/model/PackageUpdatedTask$3;->val$widgets:Ljava/util/ArrayList;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherModel$Callbacks;)V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/launcher3/model/PackageUpdatedTask$3;->val$widgets:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindWidgetsRestored(Ljava/util/ArrayList;)V

    .line 307
    return-void
.end method
