.class final Lcom/android/launcher3/views/RecyclerViewFastScroller$2;
.super Landroid/support/v7/widget/m;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/views/RecyclerViewFastScroller;


# direct methods
.method constructor <init>(Lcom/android/launcher3/views/RecyclerViewFastScroller;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller$2;->this$0:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    .line 144
    invoke-direct {p0}, Landroid/support/v7/widget/m;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller$2;->this$0:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-static {v0, p3}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->-set0(Lcom/android/launcher3/views/RecyclerViewFastScroller;I)I

    .line 153
    iget-object v0, p0, Lcom/android/launcher3/views/RecyclerViewFastScroller$2;->this$0:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    iget-object v0, v0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {v0, p3}, Lcom/android/launcher3/BaseRecyclerView;->onUpdateScrollbar(I)V

    .line 154
    return-void
.end method
