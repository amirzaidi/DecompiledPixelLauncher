.class final Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field final synthetic val$actions:Ljava/util/ArrayList;

.field final synthetic val$host:Landroid/view/View;

.field final synthetic val$info:Lcom/android/launcher3/LauncherAppWidgetInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Ljava/util/ArrayList;Landroid/view/View;Lcom/android/launcher3/LauncherAppWidgetInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;->this$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iput-object p2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;->val$actions:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;->val$host:Landroid/view/View;

    iput-object p4, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;->val$info:Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;->this$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;->val$host:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;->val$info:Lcom/android/launcher3/LauncherAppWidgetInfo;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->performResizeAction(ILandroid/view/View;Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 228
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 229
    return-void
.end method
