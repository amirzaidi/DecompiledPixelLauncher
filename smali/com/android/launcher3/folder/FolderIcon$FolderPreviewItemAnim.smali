.class Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field finalScale:F

.field finalTransX:F

.field finalTransY:F

.field mValueAnimator:Landroid/animation/ValueAnimator;

.field final synthetic this$0:Lcom/android/launcher3/folder/FolderIcon;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;IIIIILjava/lang/Runnable;)V
    .locals 7

    .prologue
    .line 899
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;->this$0:Lcom/android/launcher3/folder/FolderIcon;

    .line 909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 912
    invoke-static {p1}, Lcom/android/launcher3/folder/FolderIcon;->-get1(Lcom/android/launcher3/folder/FolderIcon;)Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    move-result-object v0

    invoke-static {p1, p5, p6, v0}, Lcom/android/launcher3/folder/FolderIcon;->-wrap0(Lcom/android/launcher3/folder/FolderIcon;IILcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    .line 914
    invoke-static {p1}, Lcom/android/launcher3/folder/FolderIcon;->-get1(Lcom/android/launcher3/folder/FolderIcon;)Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->scale:F

    iput v0, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;->finalScale:F

    .line 915
    invoke-static {p1}, Lcom/android/launcher3/folder/FolderIcon;->-get1(Lcom/android/launcher3/folder/FolderIcon;)Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->transX:F

    iput v0, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;->finalTransX:F

    .line 916
    invoke-static {p1}, Lcom/android/launcher3/folder/FolderIcon;->-get1(Lcom/android/launcher3/folder/FolderIcon;)Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->transY:F

    iput v0, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;->finalTransY:F

    .line 918
    invoke-static {p1}, Lcom/android/launcher3/folder/FolderIcon;->-get1(Lcom/android/launcher3/folder/FolderIcon;)Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    move-result-object v0

    invoke-static {p1, p3, p4, v0}, Lcom/android/launcher3/folder/FolderIcon;->-wrap0(Lcom/android/launcher3/folder/FolderIcon;IILcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    .line 920
    invoke-static {p1}, Lcom/android/launcher3/folder/FolderIcon;->-get1(Lcom/android/launcher3/folder/FolderIcon;)Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    move-result-object v0

    iget v5, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->scale:F

    .line 921
    invoke-static {p1}, Lcom/android/launcher3/folder/FolderIcon;->-get1(Lcom/android/launcher3/folder/FolderIcon;)Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    move-result-object v0

    iget v3, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 922
    invoke-static {p1}, Lcom/android/launcher3/folder/FolderIcon;->-get1(Lcom/android/launcher3/folder/FolderIcon;)Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    move-result-object v0

    iget v4, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 924
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 925
    iget-object v6, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim$1;

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim$1;-><init>(Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;FFF)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 936
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim$2;

    invoke-direct {v1, p0, p8, p2}, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim$2;-><init>(Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;Ljava/lang/Runnable;Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 949
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;->mValueAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p7

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 950
    return-void

    .line 924
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 958
    return-void
.end method

.method public hasEqualFinalState(Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 961
    iget v1, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;->finalTransY:F

    iget v2, p1, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;->finalTransY:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;->finalTransX:F

    iget v2, p1, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;->finalTransX:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 962
    iget v1, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;->finalScale:F

    iget v2, p1, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;->finalScale:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 961
    :cond_0
    return v0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$FolderPreviewItemAnim;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 954
    return-void
.end method
