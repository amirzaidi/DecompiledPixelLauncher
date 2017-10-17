.class final Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;

.field final synthetic val$listener:Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout$1;->this$0:Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;

    iput-object p2, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout$1;->val$listener:Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout$1;->this$0:Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;

    invoke-static {v0}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->-get0(Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout$1;->this$0:Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;

    invoke-static {v1}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->-get0(Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    .line 204
    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomPaddingPx:I

    sub-int v0, p5, v0

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v0, v2

    .line 205
    iget v0, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout$1;->this$0:Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;

    invoke-static {v1}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->-get1(Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;)I

    move-result v1

    iget-object v3, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout$1;->this$0:Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;

    invoke-static {v3}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->-get2(Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;)I

    move-result v3

    sub-int/2addr v1, v3

    add-int/2addr v1, v0

    .line 206
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout$1;->this$0:Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 205
    add-int/2addr v0, v1

    .line 207
    iget-object v1, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout$1;->val$listener:Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;

    sub-int v0, v2, v0

    invoke-interface {v1, v0}, Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;->onScrollRangeChanged(I)V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout$1;->val$listener:Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;

    invoke-interface {v0, p5}, Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;->onScrollRangeChanged(I)V

    goto :goto_0
.end method
