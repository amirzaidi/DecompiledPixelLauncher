.class final Lcom/android/launcher3/folder/FolderIcon$PreviewBackground$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

.field final synthetic val$onEnd:Ljava/lang/Runnable;

.field final synthetic val$onStart:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground$2;->this$1:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground$2;->val$onStart:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground$2;->val$onEnd:Ljava/lang/Runnable;

    .line 771
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 781
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground$2;->val$onEnd:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground$2;->val$onEnd:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground$2;->this$1:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    iput-object v1, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    .line 785
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground$2;->val$onStart:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground$2;->val$onStart:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 777
    :cond_0
    return-void
.end method
