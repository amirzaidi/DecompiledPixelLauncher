.class final Lcom/android/launcher3/Launcher$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field final synthetic val$newScreenIndex:I

.field final synthetic val$startBounceAnimRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;ILjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$27;->this$0:Lcom/android/launcher3/Launcher;

    iput p2, p0, Lcom/android/launcher3/Launcher$27;->val$newScreenIndex:I

    iput-object p3, p0, Lcom/android/launcher3/Launcher$27;->val$startBounceAnimRunnable:Ljava/lang/Runnable;

    .line 3434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3436
    iget-object v0, p0, Lcom/android/launcher3/Launcher$27;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_0

    .line 3437
    iget-object v0, p0, Lcom/android/launcher3/Launcher$27;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget v1, p0, Lcom/android/launcher3/Launcher$27;->val$newScreenIndex:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    .line 3438
    iget-object v0, p0, Lcom/android/launcher3/Launcher$27;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$27;->val$startBounceAnimRunnable:Ljava/lang/Runnable;

    .line 3439
    sget v2, Lcom/android/launcher3/Launcher;->NEW_APPS_ANIMATION_DELAY:I

    int-to-long v2, v2

    .line 3438
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3441
    :cond_0
    return-void
.end method
