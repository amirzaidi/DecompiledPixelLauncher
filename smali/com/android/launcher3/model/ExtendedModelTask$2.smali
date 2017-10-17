.class final Lcom/android/launcher3/model/ExtendedModelTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/ExtendedModelTask;

.field final synthetic val$shortcutMapCopy:Lcom/android/launcher3/util/MultiHashMap;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/ExtendedModelTask;Lcom/android/launcher3/util/MultiHashMap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/ExtendedModelTask$2;->this$0:Lcom/android/launcher3/model/ExtendedModelTask;

    iput-object p2, p0, Lcom/android/launcher3/model/ExtendedModelTask$2;->val$shortcutMapCopy:Lcom/android/launcher3/util/MultiHashMap;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherModel$Callbacks;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/model/ExtendedModelTask$2;->val$shortcutMapCopy:Lcom/android/launcher3/util/MultiHashMap;

    invoke-interface {p1, v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindDeepShortcutMap(Lcom/android/launcher3/util/MultiHashMap;)V

    .line 59
    return-void
.end method
