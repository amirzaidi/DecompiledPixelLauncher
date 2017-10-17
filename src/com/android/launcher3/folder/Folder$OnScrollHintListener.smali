.class Lcom/android/launcher3/folder/Folder$OnScrollHintListener;
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
    .line 1459
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1460
    iput-object p2, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    .line 1461
    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 1468
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iget v0, v0, Lcom/android/launcher3/folder/Folder;->mCurrentScrollDir:I

    if-nez v0, :cond_0

    .line 1469
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->scrollLeft()V

    .line 1470
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iput v2, v0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    .line 1478
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iput v2, v0, Lcom/android/launcher3/folder/Folder;->mCurrentScrollDir:I

    .line 1481
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    new-instance v1, Lcom/android/launcher3/folder/Folder$OnScrollFinishedListener;

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/folder/Folder$OnScrollFinishedListener;-><init>(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/DropTarget$DragObject;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 1482
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 1483
    return-void

    .line 1471
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iget v0, v0, Lcom/android/launcher3/folder/Folder;->mCurrentScrollDir:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1472
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->scrollRight()V

    .line 1473
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iput v2, v0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    goto :goto_0

    .line 1476
    :cond_1
    return-void
.end method
