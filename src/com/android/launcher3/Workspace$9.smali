.class final Lcom/android/launcher3/Workspace$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$9;->this$0:Lcom/android/launcher3/Workspace;

    .line 2678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2681
    iget-object v0, p0, Lcom/android/launcher3/Workspace$9;->this$0:Lcom/android/launcher3/Workspace;

    iput-boolean v1, v0, Lcom/android/launcher3/Workspace;->mAnimatingViewIntoPlace:Z

    .line 2682
    iget-object v0, p0, Lcom/android/launcher3/Workspace$9;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 2683
    return-void
.end method
