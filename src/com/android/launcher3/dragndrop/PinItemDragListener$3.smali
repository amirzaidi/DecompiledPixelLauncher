.class final Lcom/android/launcher3/dragndrop/PinItemDragListener$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/dragndrop/PinItemDragListener;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/PinItemDragListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener$3;->this$0:Lcom/android/launcher3/dragndrop/PinItemDragListener;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener$3;->this$0:Lcom/android/launcher3/dragndrop/PinItemDragListener;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/PinItemDragListener;->removeListener()V

    .line 264
    return-void
.end method
