.class final Lcom/android/launcher3/Workspace$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field final synthetic val$folderIds:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Ljava/util/HashSet;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$21;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$21;->val$folderIds:Ljava/util/HashSet;

    .line 3979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3982
    instance-of v0, p1, Lcom/android/launcher3/FolderInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace$21;->val$folderIds:Ljava/util/HashSet;

    iget-wide v2, p1, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3983
    check-cast p1, Lcom/android/launcher3/FolderInfo;

    invoke-virtual {p1, v4}, Lcom/android/launcher3/FolderInfo;->itemsChanged(Z)V

    .line 3986
    :cond_0
    return v4
.end method
