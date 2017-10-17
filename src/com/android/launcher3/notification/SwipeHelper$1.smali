.class final Lcom/android/launcher3/notification/SwipeHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/notification/SwipeHelper;

.field final synthetic val$ev:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lcom/android/launcher3/notification/SwipeHelper;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/notification/SwipeHelper$1;->this$0:Lcom/android/launcher3/notification/SwipeHelper;

    iput-object p2, p0, Lcom/android/launcher3/notification/SwipeHelper$1;->val$ev:Landroid/view/MotionEvent;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 273
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper$1;->this$0:Lcom/android/launcher3/notification/SwipeHelper;

    invoke-static {v0}, Lcom/android/launcher3/notification/SwipeHelper;->-get1(Lcom/android/launcher3/notification/SwipeHelper;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper$1;->this$0:Lcom/android/launcher3/notification/SwipeHelper;

    invoke-static {v0}, Lcom/android/launcher3/notification/SwipeHelper;->-get5(Lcom/android/launcher3/notification/SwipeHelper;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper$1;->this$0:Lcom/android/launcher3/notification/SwipeHelper;

    invoke-static {v0, v3}, Lcom/android/launcher3/notification/SwipeHelper;->-set0(Lcom/android/launcher3/notification/SwipeHelper;Z)Z

    .line 275
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper$1;->this$0:Lcom/android/launcher3/notification/SwipeHelper;

    invoke-static {v0}, Lcom/android/launcher3/notification/SwipeHelper;->-get1(Lcom/android/launcher3/notification/SwipeHelper;)Landroid/view/View;

    move-result-object v0

    .line 276
    const/4 v1, 0x2

    .line 275
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 277
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper$1;->this$0:Lcom/android/launcher3/notification/SwipeHelper;

    invoke-static {v0}, Lcom/android/launcher3/notification/SwipeHelper;->-get1(Lcom/android/launcher3/notification/SwipeHelper;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/notification/SwipeHelper$1;->this$0:Lcom/android/launcher3/notification/SwipeHelper;

    invoke-static {v1}, Lcom/android/launcher3/notification/SwipeHelper;->-get6(Lcom/android/launcher3/notification/SwipeHelper;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 278
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper$1;->val$ev:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/launcher3/notification/SwipeHelper$1;->this$0:Lcom/android/launcher3/notification/SwipeHelper;

    invoke-static {v1}, Lcom/android/launcher3/notification/SwipeHelper;->-get6(Lcom/android/launcher3/notification/SwipeHelper;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    .line 279
    iget-object v1, p0, Lcom/android/launcher3/notification/SwipeHelper$1;->val$ev:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher3/notification/SwipeHelper$1;->this$0:Lcom/android/launcher3/notification/SwipeHelper;

    invoke-static {v2}, Lcom/android/launcher3/notification/SwipeHelper;->-get6(Lcom/android/launcher3/notification/SwipeHelper;)[I

    move-result-object v2

    aget v2, v2, v3

    sub-int/2addr v1, v2

    .line 280
    iget-object v2, p0, Lcom/android/launcher3/notification/SwipeHelper$1;->this$0:Lcom/android/launcher3/notification/SwipeHelper;

    invoke-static {v2}, Lcom/android/launcher3/notification/SwipeHelper;->-get4(Lcom/android/launcher3/notification/SwipeHelper;)Lcom/android/launcher3/notification/SwipeHelper$LongPressListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/notification/SwipeHelper$1;->this$0:Lcom/android/launcher3/notification/SwipeHelper;

    invoke-static {v3}, Lcom/android/launcher3/notification/SwipeHelper;->-get1(Lcom/android/launcher3/notification/SwipeHelper;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lcom/android/launcher3/notification/SwipeHelper$LongPressListener;->onLongPress(Landroid/view/View;II)Z

    .line 282
    :cond_0
    return-void
.end method
