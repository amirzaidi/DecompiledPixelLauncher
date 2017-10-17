.class final Lcom/android/launcher3/Launcher$33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field final synthetic val$widgets:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$33;->this$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$33;->val$widgets:Ljava/util/ArrayList;

    .line 3779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3781
    iget-object v0, p0, Lcom/android/launcher3/Launcher$33;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$33;->val$widgets:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->bindWidgetsRestored(Ljava/util/ArrayList;)V

    .line 3782
    return-void
.end method
