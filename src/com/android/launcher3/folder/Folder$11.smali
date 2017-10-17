.class final Lcom/android/launcher3/folder/Folder$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$11;->this$0:Lcom/android/launcher3/folder/Folder;

    .line 711
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$11;->this$0:Lcom/android/launcher3/folder/Folder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/folder/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    .line 715
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$11;->this$0:Lcom/android/launcher3/folder/Folder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/Folder;->-wrap0(Lcom/android/launcher3/folder/Folder;Z)V

    .line 716
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$11;->this$0:Lcom/android/launcher3/folder/Folder;

    .line 722
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder$11;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c004a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 721
    const/16 v2, 0x20

    .line 719
    invoke-static {v0, v2, v1}, Lcom/android/launcher3/Utilities;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    .line 723
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$11;->this$0:Lcom/android/launcher3/folder/Folder;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/launcher3/folder/Folder;->mState:I

    .line 724
    return-void
.end method
