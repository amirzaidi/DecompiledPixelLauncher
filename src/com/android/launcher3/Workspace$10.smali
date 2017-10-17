.class final Lcom/android/launcher3/Workspace$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field final synthetic val$container:J

.field final synthetic val$item:Lcom/android/launcher3/ItemInfo;

.field final synthetic val$pendingInfo:Lcom/android/launcher3/PendingAddItemInfo;

.field final synthetic val$screenId:J


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/PendingAddItemInfo;JJLcom/android/launcher3/ItemInfo;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$10;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$10;->val$pendingInfo:Lcom/android/launcher3/PendingAddItemInfo;

    iput-wide p3, p0, Lcom/android/launcher3/Workspace$10;->val$container:J

    iput-wide p5, p0, Lcom/android/launcher3/Workspace$10;->val$screenId:J

    iput-object p7, p0, Lcom/android/launcher3/Workspace$10;->val$item:Lcom/android/launcher3/ItemInfo;

    .line 3209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 3215
    iget-object v0, p0, Lcom/android/launcher3/Workspace$10;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->deferRemoveExtraEmptyScreen()V

    .line 3219
    iget-object v0, p0, Lcom/android/launcher3/Workspace$10;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Workspace$10;->val$pendingInfo:Lcom/android/launcher3/PendingAddItemInfo;

    iget-wide v2, p0, Lcom/android/launcher3/Workspace$10;->val$container:J

    iget-wide v4, p0, Lcom/android/launcher3/Workspace$10;->val$screenId:J

    iget-object v6, p0, Lcom/android/launcher3/Workspace$10;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v6, v6, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 3220
    iget-object v7, p0, Lcom/android/launcher3/Workspace$10;->val$item:Lcom/android/launcher3/ItemInfo;

    iget v7, v7, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget-object v8, p0, Lcom/android/launcher3/Workspace$10;->val$item:Lcom/android/launcher3/ItemInfo;

    iget v8, v8, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 3219
    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/Launcher;->addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;JJ[III)V

    .line 3221
    return-void
.end method
