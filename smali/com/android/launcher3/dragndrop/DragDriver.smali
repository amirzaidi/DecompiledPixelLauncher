.class public abstract Lcom/android/launcher3/dragndrop/DragDriver;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/dragndrop/DragDriver$EventListener;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    .line 41
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/launcher3/dragndrop/DragController;Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragDriver;
    .locals 1

    .prologue
    .line 87
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT:Z

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/android/launcher3/dragndrop/DragOptions;->systemDndStartPoint:Landroid/graphics/Point;

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Lcom/android/launcher3/dragndrop/SystemDragDriver;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/launcher3/dragndrop/SystemDragDriver;-><init>(Lcom/android/launcher3/dragndrop/DragController;Landroid/content/Context;Lcom/android/launcher3/DropTarget$DragObject;)V

    return-object v0

    .line 90
    :cond_0
    new-instance v0, Lcom/android/launcher3/dragndrop/InternalDragDriver;

    invoke-direct {v0, p1}, Lcom/android/launcher3/dragndrop/InternalDragDriver;-><init>(Lcom/android/launcher3/dragndrop/DragController;)V

    return-object v0
.end method


# virtual methods
.method public abstract onDragEvent(Landroid/view/DragEvent;)Z
.end method

.method public onDragViewAnimationEnd()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 73
    packed-switch v0, :pswitch_data_0

    .line 82
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 75
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragEnd(FF)V

    goto :goto_0

    .line 78
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    invoke-interface {v0}, Lcom/android/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragCancel()V

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 51
    packed-switch v0, :pswitch_data_0

    .line 64
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragMove(FF)V

    goto :goto_0

    .line 56
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragMove(FF)V

    .line 57
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragEnd(FF)V

    goto :goto_0

    .line 60
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    invoke-interface {v0}, Lcom/android/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragCancel()V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
