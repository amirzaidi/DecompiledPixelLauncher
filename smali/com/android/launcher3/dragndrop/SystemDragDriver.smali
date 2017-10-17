.class Lcom/android/launcher3/dragndrop/SystemDragDriver;
.super Lcom/android/launcher3/dragndrop/DragDriver;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

.field mLastX:F

.field mLastY:F


# direct methods
.method public constructor <init>(Lcom/android/launcher3/dragndrop/DragController;Landroid/content/Context;Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/DragDriver;-><init>(Lcom/android/launcher3/dragndrop/DragDriver$EventListener;)V

    .line 103
    iput v0, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mLastX:F

    .line 104
    iput v0, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mLastY:F

    .line 108
    iput-object p3, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    .line 109
    iput-object p2, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mContext:Landroid/content/Context;

    .line 110
    return-void
.end method


# virtual methods
.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 124
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 126
    packed-switch v0, :pswitch_data_0

    .line 156
    const/4 v0, 0x0

    return v0

    .line 128
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mLastX:F

    .line 129
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mLastY:F

    .line 130
    return v3

    .line 133
    :pswitch_1
    return v3

    .line 136
    :pswitch_2
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
    return v3

    .line 142
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mLastX:F

    .line 143
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mLastY:F

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragMove(FF)V

    .line 145
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    iget v1, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mLastX:F

    iget v2, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mLastY:F

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragEnd(FF)V

    .line 146
    return v3

    .line 148
    :pswitch_4
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    invoke-interface {v0}, Lcom/android/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragExitWindow()V

    .line 149
    return v3

    .line 152
    :pswitch_5
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    invoke-interface {v0}, Lcom/android/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragCancel()V

    .line 153
    return v3

    .line 126
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
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method
