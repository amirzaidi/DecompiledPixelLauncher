.class final Lcom/android/launcher3/DropTargetBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/DropTargetBar;


# direct methods
.method constructor <init>(Lcom/android/launcher3/DropTargetBar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/DropTargetBar$1;->this$0:Lcom/android/launcher3/DropTargetBar;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/launcher3/DropTargetBar$1;->this$0:Lcom/android/launcher3/DropTargetBar;

    invoke-virtual {v0}, Lcom/android/launcher3/DropTargetBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 47
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 48
    iget-object v1, p0, Lcom/android/launcher3/DropTargetBar$1;->this$0:Lcom/android/launcher3/DropTargetBar;

    invoke-static {v1, v0}, Lcom/android/launcher3/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 49
    return-void
.end method
