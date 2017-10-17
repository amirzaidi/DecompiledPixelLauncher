.class final Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;

.field final synthetic val$params:Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;Ljava/lang/Runnable;Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim$2;->this$1:Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim$2;->val$onCompleteRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim$2;->val$params:Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    .line 936
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 943
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim$2;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim$2;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim$2;->val$params:Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    iput-object v1, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;

    .line 947
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 939
    return-void
.end method
