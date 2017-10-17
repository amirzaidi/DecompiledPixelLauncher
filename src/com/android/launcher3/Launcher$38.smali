.class final Lcom/android/launcher3/Launcher$38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field final synthetic val$components:Ljava/util/HashSet;

.field final synthetic val$packageNames:Ljava/util/HashSet;

.field final synthetic val$user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Ljava/util/HashSet;Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$38;->this$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$38;->val$packageNames:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/android/launcher3/Launcher$38;->val$components:Ljava/util/HashSet;

    iput-object p4, p0, Lcom/android/launcher3/Launcher$38;->val$user:Landroid/os/UserHandle;

    .line 3851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3853
    iget-object v0, p0, Lcom/android/launcher3/Launcher$38;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$38;->val$packageNames:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/launcher3/Launcher$38;->val$components:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/launcher3/Launcher$38;->val$user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->bindWorkspaceComponentsRemoved(Ljava/util/HashSet;Ljava/util/HashSet;Landroid/os/UserHandle;)V

    .line 3854
    return-void
.end method
