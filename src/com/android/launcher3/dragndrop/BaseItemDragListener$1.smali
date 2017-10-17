.class final Lcom/android/launcher3/dragndrop/BaseItemDragListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/dragndrop/BaseItemDragListener;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/BaseItemDragListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/BaseItemDragListener$1;->this$0:Lcom/android/launcher3/dragndrop/BaseItemDragListener;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/BaseItemDragListener$1;->this$0:Lcom/android/launcher3/dragndrop/BaseItemDragListener;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->removeListener()V

    .line 205
    return-void
.end method
