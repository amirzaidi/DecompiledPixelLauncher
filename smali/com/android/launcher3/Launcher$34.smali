.class final Lcom/android/launcher3/Launcher$34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field final synthetic val$removed:Ljava/util/ArrayList;

.field final synthetic val$updated:Ljava/util/ArrayList;

.field final synthetic val$user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/UserHandle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$34;->this$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$34;->val$updated:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/Launcher$34;->val$removed:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/Launcher$34;->val$user:Landroid/os/UserHandle;

    .line 3802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3804
    iget-object v0, p0, Lcom/android/launcher3/Launcher$34;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$34;->val$updated:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/Launcher$34;->val$removed:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/Launcher$34;->val$user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->bindShortcutsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    .line 3805
    return-void
.end method
