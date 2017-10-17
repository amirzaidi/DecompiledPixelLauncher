.class final Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

.field final synthetic val$params:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

.field final synthetic val$previewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

.field final synthetic val$scale0:F

.field final synthetic val$transX0:F

.field final synthetic val$transY0:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderPreviewItemAnim;Lcom/android/launcher3/folder/PreviewItemDrawingParams;FFFLcom/android/launcher3/folder/PreviewItemManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->this$0:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->val$params:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iput p3, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->val$transX0:F

    iput p4, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->val$transY0:F

    iput p5, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->val$scale0:F

    iput-object p6, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->val$previewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 66
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->val$params:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v2, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->val$transX0:F

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->this$0:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    iget v3, v3, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalTransX:F

    iget v4, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->val$transX0:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    .line 67
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->val$params:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v2, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->val$transY0:F

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->this$0:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    iget v3, v3, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalTransY:F

    iget v4, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->val$transY0:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    .line 68
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->val$params:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v2, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->val$scale0:F

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->this$0:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    iget v3, v3, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalScale:F

    iget v4, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->val$scale0:F

    sub-float/2addr v3, v4

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    iput v0, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    .line 69
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;->val$previewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewItemManager;->onParamsChanged()V

    .line 70
    return-void
.end method
