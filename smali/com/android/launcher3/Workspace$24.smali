.class final Lcom/android/launcher3/Workspace$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field final synthetic val$updates:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Ljava/util/HashSet;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$24;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$24;->val$updates:Ljava/util/HashSet;

    .line 4037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4040
    instance-of v0, p1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_1

    .line 4041
    iget-object v0, p0, Lcom/android/launcher3/Workspace$24;->val$updates:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 4040
    if-eqz v0, :cond_1

    .line 4042
    check-cast p2, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p2, v1}, Lcom/android/launcher3/BubbleTextView;->applyPromiseState(Z)V

    .line 4049
    :cond_0
    :goto_0
    return v1

    .line 4043
    :cond_1
    instance-of v0, p2, Lcom/android/launcher3/PendingAppWidgetHostView;

    if-eqz v0, :cond_0

    .line 4044
    instance-of v0, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 4043
    if-eqz v0, :cond_0

    .line 4045
    iget-object v0, p0, Lcom/android/launcher3/Workspace$24;->val$updates:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 4043
    if-eqz v0, :cond_0

    .line 4046
    check-cast p2, Lcom/android/launcher3/PendingAppWidgetHostView;

    invoke-virtual {p2}, Lcom/android/launcher3/PendingAppWidgetHostView;->applyState()V

    goto :goto_0
.end method
