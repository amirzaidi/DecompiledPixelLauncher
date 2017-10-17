.class final Lcom/android/launcher3/Launcher$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$16;->this$0:Lcom/android/launcher3/Launcher;

    .line 2042
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2046
    iget-object v0, p0, Lcom/android/launcher3/Launcher$16;->this$0:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x1

    const/16 v2, 0x1f4

    .line 2047
    const/4 v3, 0x0

    .line 2046
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 2048
    return-void
.end method
