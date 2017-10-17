.class Lcom/android/launcher3/dragndrop/SystemDragDriver;
.super Lcom/android/launcher3/dragndrop/DragDriver;
.source "SourceFile"


# instance fields
.field mLastX:F

.field mLastY:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/DragController;Landroid/content/Context;Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/DragDriver;-><init>(Lcom/android/launcher3/dragndrop/DragDriver$EventListener;)V

    .line 99
    iput v0, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mLastX:F

    .line 100
    iput v0, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mLastY:F

    .line 104
    return-void
.end method


# virtual methods
.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 118
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 120
    packed-switch v0, :pswitch_data_0

    .line 150
    const/4 v0, 0x0

    return v0

    .line 122
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mLastX:F

    .line 123
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mLastY:F

    .line 124
    return v3

    .line 127
    :pswitch_1
    return v3

    .line 130
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mLastX:F

    .line 131
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mLastY:F

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragMove(FF)V

    .line 133
    return v3

    .line 136
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mLastX:F

    .line 137
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mLastY:F

    .line 138
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragMove(FF)V

    .line 139
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    iget v1, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mLastX:F

    iget v2, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mLastY:F

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragEnd(FF)V

    .line 140
    return v3

    .line 142
    :pswitch_4
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    invoke-interface {v0}, Lcom/android/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragExitWindow()V

    .line 143
    return v3

    .line 146
    :pswitch_5
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    invoke-interface {v0}, Lcom/android/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragCancel()V

    .line 147
    return v3

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method
