.class final Lcom/android/launcher3/Workspace$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field final synthetic val$animate:Z

.field final synthetic val$onComplete:Ljava/lang/Runnable;

.field final synthetic val$stripEmptyScreens:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;ZLjava/lang/Runnable;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$1;->this$0:Lcom/android/launcher3/Workspace;

    iput-boolean p2, p0, Lcom/android/launcher3/Workspace$1;->val$animate:Z

    iput-object p3, p0, Lcom/android/launcher3/Workspace$1;->val$onComplete:Ljava/lang/Runnable;

    iput-boolean p4, p0, Lcom/android/launcher3/Workspace$1;->val$stripEmptyScreens:Z

    .line 829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/launcher3/Workspace$1;->this$0:Lcom/android/launcher3/Workspace;

    iget-boolean v1, p0, Lcom/android/launcher3/Workspace$1;->val$animate:Z

    iget-object v2, p0, Lcom/android/launcher3/Workspace$1;->val$onComplete:Ljava/lang/Runnable;

    iget-boolean v3, p0, Lcom/android/launcher3/Workspace$1;->val$stripEmptyScreens:Z

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    .line 833
    return-void
.end method
