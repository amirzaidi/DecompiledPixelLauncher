.class Landroid/support/v7/widget/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/J;


# instance fields
.field final synthetic TR:Landroid/support/v7/widget/p;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/p;)V
    .locals 0

    .prologue
    .line 7037
    iput-object p1, p0, Landroid/support/v7/widget/ap;->TR:Landroid/support/v7/widget/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aaK()I
    .locals 2

    .prologue
    .line 7060
    iget-object v0, p0, Landroid/support/v7/widget/ap;->TR:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ap;->TR:Landroid/support/v7/widget/p;

    .line 7061
    invoke-virtual {v1}, Landroid/support/v7/widget/p;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public aaL()I
    .locals 1

    .prologue
    .line 7055
    iget-object v0, p0, Landroid/support/v7/widget/ap;->TR:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public aaM(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 7067
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 7068
    iget-object v1, p0, Landroid/support/v7/widget/ap;->TR:Landroid/support/v7/widget/p;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/p;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/i;->topMargin:I

    sub-int v0, v1, v0

    return v0
.end method

.method public aaN(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 7074
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 7075
    iget-object v1, p0, Landroid/support/v7/widget/ap;->TR:Landroid/support/v7/widget/p;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/p;->getDecoratedBottom(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/i;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 7050
    iget-object v0, p0, Landroid/support/v7/widget/ap;->TR:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/p;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
