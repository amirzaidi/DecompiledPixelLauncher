.class final Lcom/android/launcher3/Launcher$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field final synthetic val$executor:Lcom/android/launcher3/util/ViewOnDrawExecutor;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/ViewOnDrawExecutor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$30;->this$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$30;->val$executor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    .line 3593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3595
    iget-object v0, p0, Lcom/android/launcher3/Launcher$30;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$30;->val$executor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->finishFirstPageBind(Lcom/android/launcher3/util/ViewOnDrawExecutor;)V

    .line 3596
    return-void
.end method
