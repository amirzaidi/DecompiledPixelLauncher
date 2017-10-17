.class final Lcom/android/launcher3/Launcher$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field final synthetic val$addAnimated:Ljava/util/ArrayList;

.field final synthetic val$addNotAnimated:Ljava/util/ArrayList;

.field final synthetic val$addedApps:Ljava/util/ArrayList;

.field final synthetic val$newScreens:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$24;->this$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$24;->val$newScreens:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/Launcher$24;->val$addNotAnimated:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/Launcher$24;->val$addAnimated:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/launcher3/Launcher$24;->val$addedApps:Ljava/util/ArrayList;

    .line 3290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3292
    iget-object v0, p0, Lcom/android/launcher3/Launcher$24;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$24;->val$newScreens:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/Launcher$24;->val$addNotAnimated:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/Launcher$24;->val$addAnimated:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/Launcher$24;->val$addedApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/Launcher;->bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3293
    return-void
.end method
