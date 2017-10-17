.class final Lcom/android/launcher3/widget/WidgetsBottomSheet$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/WidgetsBottomSheet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/WidgetsBottomSheet;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet$1;->this$0:Lcom/android/launcher3/widget/WidgetsBottomSheet;

    .line 187
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet$1;->this$0:Lcom/android/launcher3/widget/WidgetsBottomSheet;

    invoke-static {v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->-get0(Lcom/android/launcher3/widget/WidgetsBottomSheet;)Lcom/android/launcher3/allapps/VerticalPullDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->finishedScrolling()V

    .line 191
    return-void
.end method
