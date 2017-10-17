.class final Lcom/android/launcher3/folder/PreviewItemManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/PreviewItemManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/PreviewItemManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewItemManager$1;->this$0:Lcom/android/launcher3/folder/PreviewItemManager;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 246
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewItemManager$1;->this$0:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/launcher3/folder/PreviewItemManager;->-set0(Lcom/android/launcher3/folder/PreviewItemManager;F)F

    .line 247
    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewItemManager$1;->this$0:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewItemManager;->onParamsChanged()V

    .line 248
    return-void
.end method
