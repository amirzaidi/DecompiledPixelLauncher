.class public Landroid/support/v7/widget/E;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Rw:I

.field public Rx:I

.field public Ry:I

.field public Rz:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12710
    return-void
.end method


# virtual methods
.method public aaC(Landroid/support/v7/widget/j;)Landroid/support/v7/widget/E;
    .locals 1

    .prologue
    .line 12720
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/E;->aaD(Landroid/support/v7/widget/j;I)Landroid/support/v7/widget/E;

    move-result-object v0

    return-object v0
.end method

.method public aaD(Landroid/support/v7/widget/j;I)Landroid/support/v7/widget/E;
    .locals 2

    .prologue
    .line 12735
    iget-object v0, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    .line 12736
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/E;->Rx:I

    .line 12737
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/E;->Ry:I

    .line 12738
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/E;->Rz:I

    .line 12739
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/E;->Rw:I

    .line 12740
    return-object p0
.end method
