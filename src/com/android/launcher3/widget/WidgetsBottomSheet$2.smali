.class final Lcom/android/launcher3/widget/WidgetsBottomSheet$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/WidgetsBottomSheet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/WidgetsBottomSheet;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet$2;->this$0:Lcom/android/launcher3/widget/WidgetsBottomSheet;

    .line 208
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet$2;->this$0:Lcom/android/launcher3/widget/WidgetsBottomSheet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->-set0(Lcom/android/launcher3/widget/WidgetsBottomSheet;Z)Z

    .line 212
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet$2;->this$0:Lcom/android/launcher3/widget/WidgetsBottomSheet;

    invoke-static {v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->-get0(Lcom/android/launcher3/widget/WidgetsBottomSheet;)Lcom/android/launcher3/allapps/VerticalPullDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->finishedScrolling()V

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet$2;->this$0:Lcom/android/launcher3/widget/WidgetsBottomSheet;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet$2;->this$0:Lcom/android/launcher3/widget/WidgetsBottomSheet;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 214
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet$2;->this$0:Lcom/android/launcher3/widget/WidgetsBottomSheet;

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet$2;->this$0:Lcom/android/launcher3/widget/WidgetsBottomSheet;

    invoke-static {v1}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->-get1(Lcom/android/launcher3/widget/WidgetsBottomSheet;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->-wrap0(Lcom/android/launcher3/widget/WidgetsBottomSheet;Z)V

    .line 215
    return-void
.end method
