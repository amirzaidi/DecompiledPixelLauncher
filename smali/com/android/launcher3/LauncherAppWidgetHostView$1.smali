.class final Lcom/android/launcher3/LauncherAppWidgetHostView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherAppWidgetHostView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherAppWidgetHostView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppWidgetHostView$1;->this$0:Lcom/android/launcher3/LauncherAppWidgetHostView;

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView$1;->this$0:Lcom/android/launcher3/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->switchToErrorView()V

    .line 381
    return-void
.end method
