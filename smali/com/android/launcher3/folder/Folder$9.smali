.class final Lcom/android/launcher3/folder/Folder$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$9;->this$0:Lcom/android/launcher3/folder/Folder;

    iput-object p2, p0, Lcom/android/launcher3/folder/Folder$9;->val$onCompleteRunnable:Ljava/lang/Runnable;

    .line 600
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$9;->this$0:Lcom/android/launcher3/folder/Folder;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/launcher3/folder/Folder;->mState:I

    .line 613
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$9;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 614
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$9;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->setFocusOnFirstChild()V

    .line 615
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$9;->this$0:Lcom/android/launcher3/folder/Folder;

    .line 606
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder$9;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->getAccessibilityDescription()Ljava/lang/String;

    move-result-object v1

    .line 605
    const/16 v2, 0x20

    .line 603
    invoke-static {v0, v2, v1}, Lcom/android/launcher3/Utilities;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$9;->this$0:Lcom/android/launcher3/folder/Folder;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/launcher3/folder/Folder;->mState:I

    .line 608
    return-void
.end method
