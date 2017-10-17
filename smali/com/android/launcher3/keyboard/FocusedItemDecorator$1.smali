.class final Lcom/android/launcher3/keyboard/FocusedItemDecorator$1;
.super Lcom/android/launcher3/keyboard/FocusIndicatorHelper;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/keyboard/FocusedItemDecorator;


# direct methods
.method constructor <init>(Lcom/android/launcher3/keyboard/FocusedItemDecorator;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/keyboard/FocusedItemDecorator$1;->this$0:Lcom/android/launcher3/keyboard/FocusedItemDecorator;

    .line 35
    invoke-direct {p0, p2}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;-><init>(Landroid/view/View;)V

    .line 1
    return-void
.end method


# virtual methods
.method public viewToRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 40
    return-void
.end method
