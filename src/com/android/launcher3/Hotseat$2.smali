.class final Lcom/android/launcher3/Hotseat$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Hotseat;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Hotseat;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Hotseat$2;->this$0:Lcom/android/launcher3/Hotseat;

    .line 198
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/launcher3/Hotseat$2;->this$0:Lcom/android/launcher3/Hotseat;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/Hotseat;->-set0(Lcom/android/launcher3/Hotseat;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 202
    return-void
.end method
