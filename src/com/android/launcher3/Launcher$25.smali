.class final Lcom/android/launcher3/Launcher$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field final synthetic val$end:I

.field final synthetic val$forceAnimateIcons:Z

.field final synthetic val$items:Ljava/util/ArrayList;

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;IIZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$25;->this$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$25;->val$items:Ljava/util/ArrayList;

    iput p3, p0, Lcom/android/launcher3/Launcher$25;->val$start:I

    iput p4, p0, Lcom/android/launcher3/Launcher$25;->val$end:I

    iput-boolean p5, p0, Lcom/android/launcher3/Launcher$25;->val$forceAnimateIcons:Z

    .line 3331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3333
    iget-object v0, p0, Lcom/android/launcher3/Launcher$25;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$25;->val$items:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/launcher3/Launcher$25;->val$start:I

    iget v3, p0, Lcom/android/launcher3/Launcher$25;->val$end:I

    iget-boolean v4, p0, Lcom/android/launcher3/Launcher$25;->val$forceAnimateIcons:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/ArrayList;IIZ)V

    .line 3334
    return-void
.end method
