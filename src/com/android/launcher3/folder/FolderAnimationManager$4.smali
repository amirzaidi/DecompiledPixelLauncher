.class final Lcom/android/launcher3/folder/FolderAnimationManager$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

.field final synthetic val$btv:Lcom/android/launcher3/BubbleTextView;

.field final synthetic val$initialScale:F

.field final synthetic val$xDistance:F

.field final synthetic val$yDistance:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderAnimationManager;Lcom/android/launcher3/BubbleTextView;FFF)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$4;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderAnimationManager$4;->val$btv:Lcom/android/launcher3/BubbleTextView;

    iput p3, p0, Lcom/android/launcher3/folder/FolderAnimationManager$4;->val$xDistance:F

    iput p4, p0, Lcom/android/launcher3/folder/FolderAnimationManager$4;->val$yDistance:F

    iput p5, p0, Lcom/android/launcher3/folder/FolderAnimationManager$4;->val$initialScale:F

    .line 316
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 331
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 332
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$4;->val$btv:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setTranslationX(F)V

    .line 333
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$4;->val$btv:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setTranslationY(F)V

    .line 334
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$4;->val$btv:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->setScaleX(F)V

    .line 335
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$4;->val$btv:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->setScaleY(F)V

    .line 336
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 319
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 321
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$4;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->-get1(Lcom/android/launcher3/folder/FolderAnimationManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$4;->val$btv:Lcom/android/launcher3/BubbleTextView;

    iget v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$4;->val$xDistance:F

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setTranslationX(F)V

    .line 323
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$4;->val$btv:Lcom/android/launcher3/BubbleTextView;

    iget v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$4;->val$yDistance:F

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setTranslationY(F)V

    .line 324
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$4;->val$btv:Lcom/android/launcher3/BubbleTextView;

    iget v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$4;->val$initialScale:F

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setScaleX(F)V

    .line 325
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$4;->val$btv:Lcom/android/launcher3/BubbleTextView;

    iget v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$4;->val$initialScale:F

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setScaleY(F)V

    .line 327
    :cond_0
    return-void
.end method
