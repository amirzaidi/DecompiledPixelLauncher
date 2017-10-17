.class public Lcom/android/launcher3/PagedView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SourceFile"


# instance fields
.field public isFullScreenPage:Z

.field public matchStartEdge:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 617
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 608
    iput-boolean v0, p0, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    .line 611
    iput-boolean v0, p0, Lcom/android/launcher3/PagedView$LayoutParams;->matchStartEdge:Z

    .line 618
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 621
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 608
    iput-boolean v0, p0, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    .line 611
    iput-boolean v0, p0, Lcom/android/launcher3/PagedView$LayoutParams;->matchStartEdge:Z

    .line 622
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 625
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    iput-boolean v0, p0, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    .line 611
    iput-boolean v0, p0, Lcom/android/launcher3/PagedView$LayoutParams;->matchStartEdge:Z

    .line 626
    return-void
.end method
