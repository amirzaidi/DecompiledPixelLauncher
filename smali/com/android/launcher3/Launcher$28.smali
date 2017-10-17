.class final Lcom/android/launcher3/Launcher$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field final synthetic val$item:Lcom/android/launcher3/LauncherAppWidgetInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherAppWidgetInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$28;->this$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$28;->val$item:Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 3457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3459
    iget-object v0, p0, Lcom/android/launcher3/Launcher$28;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$28;->val$item:Lcom/android/launcher3/LauncherAppWidgetInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->bindAppWidget(Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 3460
    return-void
.end method
