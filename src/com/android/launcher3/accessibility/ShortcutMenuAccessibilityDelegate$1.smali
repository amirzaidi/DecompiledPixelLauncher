.class final Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;

.field final synthetic val$coordinates:[I

.field final synthetic val$info:Lcom/android/launcher3/ShortcutInfo;

.field final synthetic val$screenId:J


# direct methods
.method constructor <init>(Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;Lcom/android/launcher3/ShortcutInfo;J[I)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$1;->this$0:Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;

    iput-object p2, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$1;->val$info:Lcom/android/launcher3/ShortcutInfo;

    iput-wide p3, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$1;->val$screenId:J

    iput-object p5, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$1;->val$coordinates:[I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$1;->this$0:Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;

    iget-object v0, v0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$1;->val$info:Lcom/android/launcher3/ShortcutInfo;

    .line 73
    const-wide/16 v2, -0x64

    .line 74
    iget-wide v4, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$1;->val$screenId:J

    iget-object v6, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$1;->val$coordinates:[I

    aget v6, v6, v8

    iget-object v7, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$1;->val$coordinates:[I

    aget v7, v7, v9

    .line 72
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    iget-object v1, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$1;->val$info:Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v1, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$1;->this$0:Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;

    iget-object v1, v1, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v0, v8, v2, v9}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/ArrayList;IIZ)V

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$1;->this$0:Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;

    iget-object v0, v0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/Launcher;)V

    .line 79
    iget-object v0, p0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate$1;->this$0:Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;

    const v1, 0x7f0c0070

    invoke-virtual {v0, v1}, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->announceConfirmation(I)V

    .line 80
    return-void
.end method
