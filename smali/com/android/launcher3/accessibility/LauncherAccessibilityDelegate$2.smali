.class final Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field final synthetic val$item:Lcom/android/launcher3/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/ItemInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$2;->this$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iput-object p2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$2;->val$item:Lcom/android/launcher3/ItemInfo;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$2;->val$item:Lcom/android/launcher3/ItemInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$2;->this$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v1, v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v3, v2, v4}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/ArrayList;IIZ)V

    .line 210
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$2;->this$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    const v1, 0x7f0c006d

    invoke-virtual {v0, v1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(I)V

    .line 211
    return-void
.end method
