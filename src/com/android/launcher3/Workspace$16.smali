.class final Lcom/android/launcher3/Workspace$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field final synthetic val$appWidgetId:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$16;->this$0:Lcom/android/launcher3/Workspace;

    iput p2, p0, Lcom/android/launcher3/Workspace$16;->val$appWidgetId:I

    .line 3717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3721
    instance-of v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v1, :cond_0

    .line 3722
    check-cast p1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    iget v2, p0, Lcom/android/launcher3/Workspace$16;->val$appWidgetId:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 3721
    :cond_0
    return v0
.end method
