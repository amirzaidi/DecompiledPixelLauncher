.class final Lcom/android/launcher3/Workspace$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field final synthetic val$changedInfo:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$24;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$24;->val$changedInfo:Ljava/util/ArrayList;

    .line 3975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 3978
    instance-of v0, p2, Lcom/android/launcher3/PendingAppWidgetHostView;

    if-eqz v0, :cond_0

    .line 3979
    iget-object v0, p0, Lcom/android/launcher3/Workspace$24;->val$changedInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 3978
    if-eqz v0, :cond_0

    .line 3980
    check-cast p1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    const/16 v0, 0x64

    iput v0, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->installProgress:I

    .line 3981
    check-cast p2, Lcom/android/launcher3/PendingAppWidgetHostView;

    invoke-virtual {p2}, Lcom/android/launcher3/PendingAppWidgetHostView;->applyState()V

    .line 3984
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
