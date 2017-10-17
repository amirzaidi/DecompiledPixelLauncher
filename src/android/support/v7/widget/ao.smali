.class Landroid/support/v7/widget/ao;
.super Landroid/support/v7/widget/m;
.source "SourceFile"


# instance fields
.field final synthetic Se:Landroid/support/v7/widget/FastScroller;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/FastScroller;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Landroid/support/v7/widget/ao;->Se:Landroid/support/v7/widget/FastScroller;

    invoke-direct {p0}, Landroid/support/v7/widget/m;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Landroid/support/v7/widget/ao;->Se:Landroid/support/v7/widget/FastScroller;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v1

    .line 130
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v2

    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/FastScroller;->aaK(II)V

    .line 131
    return-void
.end method
