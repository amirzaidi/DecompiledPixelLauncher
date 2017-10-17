.class final Lcom/android/launcher3/allapps/search/HeaderElevationController$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/search/HeaderElevationController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/search/HeaderElevationController;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController$1;->this$0:Lcom/android/launcher3/allapps/search/HeaderElevationController;

    .line 34
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 5

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    neg-int v0, v0

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 47
    iget-object v4, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController$1;->this$0:Lcom/android/launcher3/allapps/search/HeaderElevationController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/search/HeaderElevationController;->-get0(Lcom/android/launcher3/allapps/search/HeaderElevationController;)F

    move-result v4

    float-to-int v4, v4

    .line 48
    sub-int/2addr v0, v4

    sub-int/2addr v1, v4

    add-int/2addr v2, v4

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Outline;->setRect(IIII)V

    .line 49
    return-void
.end method
