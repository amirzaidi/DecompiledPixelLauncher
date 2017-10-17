.class final Lcom/android/launcher3/allapps/HeaderElevationController$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/HeaderElevationController;

.field final synthetic val$res:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/HeaderElevationController;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/allapps/HeaderElevationController$1;->this$0:Lcom/android/launcher3/allapps/HeaderElevationController;

    iput-object p2, p0, Lcom/android/launcher3/allapps/HeaderElevationController$1;->val$res:Landroid/content/res/Resources;

    .line 33
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/launcher3/allapps/HeaderElevationController$1;->this$0:Lcom/android/launcher3/allapps/HeaderElevationController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/HeaderElevationController;->-get0(Lcom/android/launcher3/allapps/HeaderElevationController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 43
    iget-object v4, p0, Lcom/android/launcher3/allapps/HeaderElevationController$1;->this$0:Lcom/android/launcher3/allapps/HeaderElevationController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/HeaderElevationController;->-get1(Lcom/android/launcher3/allapps/HeaderElevationController;)F

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/allapps/HeaderElevationController$1;->val$res:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v4

    .line 44
    sub-int/2addr v0, v4

    sub-int/2addr v1, v4

    add-int/2addr v2, v4

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Outline;->setRect(IIII)V

    .line 45
    return-void
.end method
