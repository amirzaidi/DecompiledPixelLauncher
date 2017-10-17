.class final Lcom/android/launcher3/Launcher$37;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field final synthetic val$updates:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Ljava/util/HashSet;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$37;->this$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$37;->val$updates:Ljava/util/HashSet;

    .line 3828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3830
    iget-object v0, p0, Lcom/android/launcher3/Launcher$37;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$37;->val$updates:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->bindRestoreItemsChange(Ljava/util/HashSet;)V

    .line 3831
    return-void
.end method
