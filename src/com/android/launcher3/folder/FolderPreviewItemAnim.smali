.class Lcom/android/launcher3/folder/FolderPreviewItemAnim;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;


# instance fields
.field finalScale:F

.field finalTransX:F

.field finalTransY:F

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    new-instance v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->sTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 27
    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/folder/PreviewItemManager;Lcom/android/launcher3/folder/PreviewItemDrawingParams;IIIIILjava/lang/Runnable;)V
    .locals 10

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v2, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->sTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    move/from16 v0, p6

    invoke-virtual {p1, p5, v0, v2}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 51
    sget-object v2, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->sTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v2, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    iput v2, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalScale:F

    .line 52
    sget-object v2, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->sTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v2, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iput v2, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalTransX:F

    .line 53
    sget-object v2, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->sTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v2, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    iput v2, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalTransY:F

    .line 55
    sget-object v2, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->sTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-virtual {p1, p3, p4, v2}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 57
    sget-object v2, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->sTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v7, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    .line 58
    sget-object v2, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->sTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v5, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    .line 59
    sget-object v2, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->sTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v6, v2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    .line 61
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 62
    iget-object v9, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;

    move-object v3, p0

    move-object v4, p2

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;-><init>(Lcom/android/launcher3/folder/FolderPreviewItemAnim;Lcom/android/launcher3/folder/PreviewItemDrawingParams;FFFLcom/android/launcher3/folder/PreviewItemManager;)V

    invoke-virtual {v9, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 72
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/launcher3/folder/FolderPreviewItemAnim$2;

    move-object/from16 v0, p8

    invoke-direct {v3, p0, v0, p2}, Lcom/android/launcher3/folder/FolderPreviewItemAnim$2;-><init>(Lcom/android/launcher3/folder/FolderPreviewItemAnim;Ljava/lang/Runnable;Lcom/android/launcher3/folder/PreviewItemDrawingParams;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 81
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mValueAnimator:Landroid/animation/ValueAnimator;

    move/from16 v0, p7

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 82
    return-void

    .line 61
    nop

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
    .line 89
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 90
    return-void
.end method

.method public hasEqualFinalState(Lcom/android/launcher3/folder/FolderPreviewItemAnim;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 93
    iget v1, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalTransY:F

    iget v2, p1, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalTransY:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalTransX:F

    iget v2, p1, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalTransX:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 94
    iget v1, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalScale:F

    iget v2, p1, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalScale:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 93
    :cond_0
    return v0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 86
    return-void
.end method
