.class final Lcom/android/launcher3/Workspace$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field final synthetic val$operator:Lcom/android/launcher3/Workspace$ItemOperator;

.field final synthetic val$value:[Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/Workspace$ItemOperator;[Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$18;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$18;->val$operator:Lcom/android/launcher3/Workspace$ItemOperator;

    iput-object p3, p0, Lcom/android/launcher3/Workspace$18;->val$value:[Landroid/view/View;

    .line 3829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3832
    iget-object v0, p0, Lcom/android/launcher3/Workspace$18;->val$operator:Lcom/android/launcher3/Workspace$ItemOperator;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/Workspace$ItemOperator;->evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3833
    iget-object v0, p0, Lcom/android/launcher3/Workspace$18;->val$value:[Landroid/view/View;

    aput-object p2, v0, v1

    .line 3834
    const/4 v0, 0x1

    return v0

    .line 3836
    :cond_0
    return v1
.end method
