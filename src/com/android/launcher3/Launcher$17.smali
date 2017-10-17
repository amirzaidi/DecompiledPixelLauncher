.class final Lcom/android/launcher3/Launcher$17;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field final synthetic val$appWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

.field final synthetic val$widgetInfo:Lcom/android/launcher3/LauncherAppWidgetInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherAppWidgetHost;Lcom/android/launcher3/LauncherAppWidgetInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$17;->this$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$17;->val$appWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    iput-object p3, p0, Lcom/android/launcher3/Launcher$17;->val$widgetInfo:Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 2196
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2197
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher$17;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 2198
    iget-object v0, p0, Lcom/android/launcher3/Launcher$17;->val$appWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$17;->val$widgetInfo:Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 2199
    const/4 v0, 0x0

    return-object v0
.end method
