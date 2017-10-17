.class final Lcom/android/launcher3/LauncherModel$LoaderTask$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

.field final synthetic val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

.field final synthetic val$widget:Lcom/android/launcher3/LauncherAppWidgetInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/LauncherModel$Callbacks;Lcom/android/launcher3/LauncherAppWidgetInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$6;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$6;->val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$6;->val$widget:Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 1471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$6;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$6;->val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 1474
    if-eqz v0, :cond_0

    .line 1475
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$6;->val$widget:Lcom/android/launcher3/LauncherAppWidgetInfo;

    invoke-interface {v0, v1}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindAppWidget(Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 1477
    :cond_0
    return-void
.end method
