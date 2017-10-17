.class final Lcom/android/launcher3/dragndrop/DragController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/dragndrop/DragController;

.field final synthetic val$onComplete:Ljava/lang/Runnable;

.field final synthetic val$originalIcon:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/DragController;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragController$1;->this$0:Lcom/android/launcher3/dragndrop/DragController;

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/DragController$1;->val$originalIcon:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/dragndrop/DragController$1;->val$onComplete:Ljava/lang/Runnable;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController$1;->val$originalIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController$1;->val$originalIcon:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController$1;->val$onComplete:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController$1;->val$onComplete:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 305
    :cond_1
    return-void
.end method
