.class final Lcom/android/launcher3/folder/Folder$10;
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
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$10;->this$0:Lcom/android/launcher3/folder/Folder;

    iput-object p2, p0, Lcom/android/launcher3/folder/Folder$10;->val$onCompleteRunnable:Ljava/lang/Runnable;

    .line 633
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$10;->this$0:Lcom/android/launcher3/folder/Folder;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/launcher3/folder/Folder;->mState:I

    .line 652
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$10;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 653
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$10;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->setFocusOnFirstChild()V

    .line 654
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 636
    sget-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_NEW_FOLDER_ANIMATION:Z

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$10;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->setBackgroundVisible(Z)V

    .line 638
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$10;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->drawLeaveBehindIfExists()V

    .line 644
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$10;->this$0:Lcom/android/launcher3/folder/Folder;

    .line 646
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder$10;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->getAccessibilityDescription()Ljava/lang/String;

    move-result-object v1

    .line 645
    const/16 v2, 0x20

    .line 643
    invoke-static {v0, v2, v1}, Lcom/android/launcher3/Utilities;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    .line 647
    return-void

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$10;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->setVisibility(I)V

    goto :goto_0
.end method
