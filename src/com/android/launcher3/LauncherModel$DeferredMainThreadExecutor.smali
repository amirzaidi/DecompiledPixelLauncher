.class Lcom/android/launcher3/LauncherModel$DeferredMainThreadExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;)V
    .locals 0

    .prologue
    .line 1975
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$DeferredMainThreadExecutor;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1979
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$DeferredMainThreadExecutor;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0, p1}, Lcom/android/launcher3/LauncherModel;->-wrap1(Lcom/android/launcher3/LauncherModel;Ljava/lang/Runnable;)V

    .line 1980
    return-void
.end method
