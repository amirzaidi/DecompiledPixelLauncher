.class final Lcom/android/launcher3/Launcher$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field final synthetic val$appWidgetId:I

.field final synthetic val$layout:Landroid/appwidget/AppWidgetHostView;

.field final synthetic val$requestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/util/PendingRequestArgs;Landroid/appwidget/AppWidgetHostView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$9;->this$0:Lcom/android/launcher3/Launcher;

    iput p2, p0, Lcom/android/launcher3/Launcher$9;->val$appWidgetId:I

    iput-object p3, p0, Lcom/android/launcher3/Launcher$9;->val$requestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    iput-object p4, p0, Lcom/android/launcher3/Launcher$9;->val$layout:Landroid/appwidget/AppWidgetHostView;

    iput p5, p0, Lcom/android/launcher3/Launcher$9;->val$resultCode:I

    .line 901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 904
    iget-object v1, p0, Lcom/android/launcher3/Launcher$9;->this$0:Lcom/android/launcher3/Launcher;

    iget v2, p0, Lcom/android/launcher3/Launcher$9;->val$appWidgetId:I

    iget-object v3, p0, Lcom/android/launcher3/Launcher$9;->val$requestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    iget-object v4, p0, Lcom/android/launcher3/Launcher$9;->val$layout:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/launcher3/Launcher;->completeAddAppWidget(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V

    .line 905
    iget-object v1, p0, Lcom/android/launcher3/Launcher$9;->this$0:Lcom/android/launcher3/Launcher;

    iget v2, p0, Lcom/android/launcher3/Launcher$9;->val$resultCode:I

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 906
    :cond_0
    const/16 v2, 0x1f4

    .line 905
    invoke-virtual {v1, v0, v2, v5}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 907
    return-void
.end method
