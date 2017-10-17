.class Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# instance fields
.field bg:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

.field cellX:I

.field cellY:I

.field layout:Lcom/android/launcher3/CellLayout;

.field final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;II)V
    .locals 6

    .prologue
    .line 3158
    iput-object p1, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3156
    new-instance v0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    invoke-direct {v0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->bg:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    .line 3159
    iput-object p2, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->layout:Lcom/android/launcher3/CellLayout;

    .line 3160
    iput p3, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->cellX:I

    .line 3161
    iput p4, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->cellY:I

    .line 3163
    iget-object v0, p1, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    .line 3164
    invoke-virtual {p2, p3, p4}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    .line 3166
    iget-object v0, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->bg:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 3167
    invoke-virtual {v3}, Lcom/android/launcher3/BubbleTextView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/launcher3/BubbleTextView;->getPaddingTop()I

    move-result v5

    .line 3166
    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->setup(Landroid/util/DisplayMetrics;Lcom/android/launcher3/DeviceProfile;Landroid/view/View;II)V

    .line 3170
    iget-object v0, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->bg:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->isClipping:Z

    .line 3171
    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 4

    .prologue
    .line 3174
    iget-object v0, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->bg:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    invoke-static {v0, v1}, Lcom/android/launcher3/Workspace;->-set2(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;)Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    .line 3175
    iget-object v0, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->-get0(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->layout:Lcom/android/launcher3/CellLayout;

    iget v2, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->cellX:I

    iget v3, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->cellY:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->animateToAccept(Lcom/android/launcher3/CellLayout;II)V

    .line 3176
    iget-object v0, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->layout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->clearDragOutlines()V

    .line 3177
    iget-object v0, p0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    .line 3178
    return-void
.end method
