.class final Lcom/android/launcher3/Launcher$4;
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
    iput-object p1, p0, Lcom/android/launcher3/Launcher$4;->this$0:Lcom/android/launcher3/Launcher;

    .line 3910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3912
    iget-object v0, p0, Lcom/android/launcher3/Launcher$4;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$4;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mAllWidgets:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->bindAllWidgets(Lcom/android/launcher3/util/MultiHashMap;)V

    .line 3913
    return-void
.end method
