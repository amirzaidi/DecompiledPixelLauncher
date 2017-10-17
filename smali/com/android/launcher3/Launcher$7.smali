.class final Lcom/android/launcher3/Launcher$7;
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
    iput-object p1, p0, Lcom/android/launcher3/Launcher$7;->this$0:Lcom/android/launcher3/Launcher;

    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 777
    iget-object v0, p0, Lcom/android/launcher3/Launcher$7;->this$0:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 778
    return-void
.end method
