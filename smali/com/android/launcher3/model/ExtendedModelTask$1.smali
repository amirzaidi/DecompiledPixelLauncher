.class final Lcom/android/launcher3/model/ExtendedModelTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/ExtendedModelTask;

.field final synthetic val$removedShortcuts:Ljava/util/ArrayList;

.field final synthetic val$updatedShortcuts:Ljava/util/ArrayList;

.field final synthetic val$user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/ExtendedModelTask;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/UserHandle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/ExtendedModelTask$1;->this$0:Lcom/android/launcher3/model/ExtendedModelTask;

    iput-object p2, p0, Lcom/android/launcher3/model/ExtendedModelTask$1;->val$updatedShortcuts:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/model/ExtendedModelTask$1;->val$removedShortcuts:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/model/ExtendedModelTask$1;->val$user:Landroid/os/UserHandle;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherModel$Callbacks;)V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/launcher3/model/ExtendedModelTask$1;->val$updatedShortcuts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/model/ExtendedModelTask$1;->val$removedShortcuts:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/model/ExtendedModelTask$1;->val$user:Landroid/os/UserHandle;

    invoke-interface {p1, v0, v1, v2}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindShortcutsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    .line 48
    return-void
.end method
