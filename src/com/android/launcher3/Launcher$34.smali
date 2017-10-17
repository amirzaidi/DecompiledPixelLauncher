.class final Lcom/android/launcher3/Launcher$34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field final synthetic val$app:Lcom/android/launcher3/PromiseAppInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/PromiseAppInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$34;->this$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$34;->val$app:Lcom/android/launcher3/PromiseAppInfo;

    .line 3743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3745
    iget-object v0, p0, Lcom/android/launcher3/Launcher$34;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$34;->val$app:Lcom/android/launcher3/PromiseAppInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->bindPromiseAppProgressUpdated(Lcom/android/launcher3/PromiseAppInfo;)V

    .line 3746
    return-void
.end method
