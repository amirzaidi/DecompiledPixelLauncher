.class final Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;

.field final synthetic val$params:Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

.field final synthetic val$scale0:F

.field final synthetic val$transX0:F

.field final synthetic val$transY0:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;FFF)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim$1;->this$1:Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim$1;->val$params:Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    iput p3, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim$1;->val$transX0:F

    iput p4, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim$1;->val$transY0:F

    iput p5, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim$1;->val$scale0:F

    .line 925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .prologue
    .line 927
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 929
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim$1;->val$params:Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    iget v2, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim$1;->val$transX0:F

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim$1;->this$1:Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;

    iget v3, v3, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;->finalTransX:F

    iget v4, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim$1;->val$transX0:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 930
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim$1;->val$params:Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    iget v2, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim$1;->val$transY0:F

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim$1;->this$1:Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;

    iget v3, v3, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;->finalTransY:F

    iget v4, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim$1;->val$transY0:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 931
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim$1;->val$params:Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    iget v2, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim$1;->val$scale0:F

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim$1;->this$1:Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;

    iget v3, v3, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;->finalScale:F

    iget v4, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim$1;->val$scale0:F

    sub-float/2addr v3, v4

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    iput v0, v1, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->scale:F

    .line 932
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim$1;->this$1:Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;->this$0:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 933
    return-void
.end method
