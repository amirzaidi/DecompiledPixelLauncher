.class Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field anim:Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;

.field drawable:Landroid/graphics/drawable/Drawable;

.field hidden:Z

.field public overlayAlpha:F

.field scale:F

.field transX:F

.field transY:F


# direct methods
.method constructor <init>(FFFF)V
    .locals 0

    .prologue
    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    iput p1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 427
    iput p2, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 428
    iput p3, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->scale:F

    .line 429
    iput p4, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->overlayAlpha:F

    .line 430
    return-void
.end method


# virtual methods
.method public update(FFF)V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;

    if-eqz v0, :cond_2

    .line 436
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;

    iget v0, v0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;->finalTransX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;

    iget v0, v0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;->finalTransY:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_1

    .line 438
    :cond_0
    return-void

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;

    iget v0, v0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;->finalScale:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;->cancel()V

    .line 443
    :cond_2
    iput p1, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 444
    iput p2, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 445
    iput p3, p0, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->scale:F

    .line 446
    return-void
.end method
