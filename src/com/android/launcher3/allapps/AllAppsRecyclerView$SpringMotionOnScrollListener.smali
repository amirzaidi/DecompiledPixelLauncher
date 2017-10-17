.class Lcom/android/launcher3/allapps/AllAppsRecyclerView$SpringMotionOnScrollListener;
.super Landroid/support/v7/widget/m;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$SpringMotionOnScrollListener;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/m;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/AllAppsRecyclerView$SpringMotionOnScrollListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$SpringMotionOnScrollListener;-><init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 490
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$SpringMotionOnScrollListener;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->-get1(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->isInOverScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    return-void

    .line 497
    :cond_0
    if-gez p3, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$SpringMotionOnScrollListener;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->canScrollVertically(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 498
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$SpringMotionOnScrollListener;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->-get3(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)Lcom/android/launcher3/anim/SpringAnimationHandler;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/anim/SpringAnimationHandler;->animateToFinalPosition(FI)V

    .line 502
    :cond_1
    :goto_0
    return-void

    .line 499
    :cond_2
    if-lez p3, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$SpringMotionOnScrollListener;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->canScrollVertically(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$SpringMotionOnScrollListener;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->-get3(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)Lcom/android/launcher3/anim/SpringAnimationHandler;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/anim/SpringAnimationHandler;->animateToFinalPosition(FI)V

    goto :goto_0
.end method
