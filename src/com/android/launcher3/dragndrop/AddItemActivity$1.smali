.class final Lcom/android/launcher3/dragndrop/AddItemActivity$1;
.super Landroid/view/View$DragShadowBuilder;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/dragndrop/AddItemActivity;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/AddItemActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity$1;->this$0:Lcom/android/launcher3/dragndrop/AddItemActivity;

    .line 174
    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2

    .prologue
    const/16 v1, 0xa

    const/4 v0, 0x5

    .line 181
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 182
    invoke-virtual {p2, v0, v0}, Landroid/graphics/Point;->set(II)V

    .line 183
    return-void
.end method
