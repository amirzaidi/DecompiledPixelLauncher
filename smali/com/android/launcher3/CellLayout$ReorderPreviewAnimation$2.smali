.class final Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$2;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    .line 2077
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2080
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$2;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->setInitialAnimationValues(Z)V

    .line 2081
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$2;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    iput-boolean v1, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->repeating:Z

    .line 2082
    return-void
.end method
