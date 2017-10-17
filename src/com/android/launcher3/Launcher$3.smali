.class final Lcom/android/launcher3/Launcher$3;
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
    iput-object p1, p0, Lcom/android/launcher3/Launcher$3;->this$0:Lcom/android/launcher3/Launcher;

    .line 3722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3724
    iget-object v0, p0, Lcom/android/launcher3/Launcher$3;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$3;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mTmpAppsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->bindAllApplications(Ljava/util/ArrayList;)V

    .line 3725
    iget-object v0, p0, Lcom/android/launcher3/Launcher$3;->this$0:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/Launcher;->mTmpAppsList:Ljava/util/ArrayList;

    .line 3726
    return-void
.end method
