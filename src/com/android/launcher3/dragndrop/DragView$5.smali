.class final Lcom/android/launcher3/dragndrop/DragView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/dragndrop/DragView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/DragView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView$5;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$5;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 328
    return-void
.end method
