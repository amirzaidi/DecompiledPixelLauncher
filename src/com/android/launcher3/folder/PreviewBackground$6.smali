.class final Lcom/android/launcher3/folder/PreviewBackground$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/PreviewBackground;

.field final synthetic val$onEnd:Ljava/lang/Runnable;

.field final synthetic val$onStart:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/PreviewBackground;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground$6;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    iput-object p2, p0, Lcom/android/launcher3/folder/PreviewBackground$6;->val$onStart:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/launcher3/folder/PreviewBackground$6;->val$onEnd:Ljava/lang/Runnable;

    .line 371
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 381
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground$6;->val$onEnd:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground$6;->val$onEnd:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground$6;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/PreviewBackground;->-set1(Lcom/android/launcher3/folder/PreviewBackground;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 385
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground$6;->val$onStart:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground$6;->val$onStart:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 377
    :cond_0
    return-void
.end method
