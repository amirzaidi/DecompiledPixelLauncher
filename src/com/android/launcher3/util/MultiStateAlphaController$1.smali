.class final Lcom/android/launcher3/util/MultiStateAlphaController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/MultiStateAlphaController;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/MultiStateAlphaController;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/util/MultiStateAlphaController$1;->this$0:Lcom/android/launcher3/util/MultiStateAlphaController;

    iput p2, p0, Lcom/android/launcher3/util/MultiStateAlphaController$1;->val$index:I

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 82
    iget-object v1, p0, Lcom/android/launcher3/util/MultiStateAlphaController$1;->this$0:Lcom/android/launcher3/util/MultiStateAlphaController;

    iget v2, p0, Lcom/android/launcher3/util/MultiStateAlphaController$1;->val$index:I

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/util/MultiStateAlphaController;->setAlphaAtIndex(FI)V

    .line 83
    return-void
.end method
