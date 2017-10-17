.class Lcom/android/launcher3/folder/Folder$OnScrollFinishedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# instance fields
.field private final mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 0

    .prologue
    .line 1490
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$OnScrollFinishedListener;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1491
    iput-object p2, p0, Lcom/android/launcher3/folder/Folder$OnScrollFinishedListener;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    .line 1492
    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 3

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$OnScrollFinishedListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder$OnScrollFinishedListener;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/folder/Folder;->onDragOver(Lcom/android/launcher3/DropTarget$DragObject;I)V

    .line 1501
    return-void
.end method
