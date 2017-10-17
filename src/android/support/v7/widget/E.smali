.class public Landroid/support/v7/widget/E;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public PP:I

.field public PQ:I

.field public PR:I

.field public PS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12639
    return-void
.end method


# virtual methods
.method public ZA(Landroid/support/v7/widget/j;)Landroid/support/v7/widget/E;
    .locals 1

    .prologue
    .line 12649
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/E;->ZB(Landroid/support/v7/widget/j;I)Landroid/support/v7/widget/E;

    move-result-object v0

    return-object v0
.end method

.method public ZB(Landroid/support/v7/widget/j;I)Landroid/support/v7/widget/E;
    .locals 2

    .prologue
    .line 12664
    iget-object v0, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    .line 12665
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/E;->PQ:I

    .line 12666
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/E;->PR:I

    .line 12667
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/E;->PS:I

    .line 12668
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/E;->PP:I

    .line 12669
    return-object p0
.end method
