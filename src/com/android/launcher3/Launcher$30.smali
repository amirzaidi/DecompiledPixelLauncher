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

    .line 3639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3642
    iget-object v0, p0, Lcom/android/launcher3/Launcher$30;->val$executor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    if-eqz v0, :cond_0

    .line 3643
    iget-object v0, p0, Lcom/android/launcher3/Launcher$30;->val$executor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->onLoadAnimationCompleted()V

    .line 3645
    :cond_0
    return-void
.end method
