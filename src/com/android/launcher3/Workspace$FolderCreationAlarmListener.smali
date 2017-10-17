.class Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# instance fields
.field final bg:Lcom/android/launcher3/folder/PreviewBackground;

.field final cellX:I

.field final cellY:I

.field final layout:Lcom/android/launcher3/CellLayout;

.field final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;II)V
    .locals 5

    .prologue
    .line 3061
    iput-object p1, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3059
    new-instance v0, Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {v0}, Lcom/android/launcher3/folder/PreviewBackground;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->bg:Lcom/android/launcher3/folder/PreviewBackground;

    .line 3062
    iput-object p2, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->layout:Lcom/android/launcher3/CellLayout;

    .line 3063
    iput p3, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->cellX:I

    .line 3064
    iput p4, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->cellY:I

    .line 3066
    invoke-virtual {p2, p3, p4}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 3067
    iget-object v1, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->bg:Lcom/android/launcher3/folder/PreviewBackground;

    iget-object v2, p1, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getPaddingTop()I

    move-result v0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v0}, Lcom/android/launcher3/folder/PreviewBackground;->setup(Lcom/android/launcher3/Launcher;Landroid/view/View;II)V

    .line 3070
    iget-object v0, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->bg:Lcom/android/launcher3/folder/PreviewBackground;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/folder/PreviewBackground;->isClipping:Z

    .line 3071
    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 4

    .prologue
    .line 3074
    iget-object v0, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->bg:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-static {v0, v1}, Lcom/android/launcher3/Workspace;->-set1(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/folder/PreviewBackground;)Lcom/android/launcher3/folder/PreviewBackground;

    .line 3075
    iget-object v0, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->-get0(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->layout:Lcom/android/launcher3/CellLayout;

    iget v2, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->cellX:I

    iget v3, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->cellY:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/folder/PreviewBackground;->animateToAccept(Lcom/android/launcher3/CellLayout;II)V

    .line 3076
    iget-object v0, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->layout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->clearDragOutlines()V

    .line 3077
    iget-object v0, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    .line 3078
    return-void
.end method
