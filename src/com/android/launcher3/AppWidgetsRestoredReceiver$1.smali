.class final Lcom/android/launcher3/AppWidgetsRestoredReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/AppWidgetsRestoredReceiver;

.field final synthetic val$asyncResult:Landroid/content/BroadcastReceiver$PendingResult;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$newIds:[I

.field final synthetic val$oldIds:[I


# direct methods
.method constructor <init>(Lcom/android/launcher3/AppWidgetsRestoredReceiver;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;[I[I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/AppWidgetsRestoredReceiver$1;->this$0:Lcom/android/launcher3/AppWidgetsRestoredReceiver;

    iput-object p2, p0, Lcom/android/launcher3/AppWidgetsRestoredReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/launcher3/AppWidgetsRestoredReceiver$1;->val$asyncResult:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p4, p0, Lcom/android/launcher3/AppWidgetsRestoredReceiver$1;->val$oldIds:[I

    iput-object p5, p0, Lcom/android/launcher3/AppWidgetsRestoredReceiver$1;->val$newIds:[I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetsRestoredReceiver$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/AppWidgetsRestoredReceiver$1;->val$asyncResult:Landroid/content/BroadcastReceiver$PendingResult;

    iget-object v2, p0, Lcom/android/launcher3/AppWidgetsRestoredReceiver$1;->val$oldIds:[I

    iget-object v3, p0, Lcom/android/launcher3/AppWidgetsRestoredReceiver$1;->val$newIds:[I

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/AppWidgetsRestoredReceiver;->restoreAppWidgetIds(Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;[I[I)V

    .line 42
    return-void
.end method
