.class public Landroid/support/v7/widget/i;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# instance fields
.field QH:Landroid/support/v7/widget/j;

.field QI:Z

.field QJ:Z

.field final mDecorInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 10965
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 10953
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    .line 10954
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/i;->QI:Z

    .line 10958
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/i;->QJ:Z

    .line 10966
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 10961
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10953
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    .line 10954
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/i;->QI:Z

    .line 10958
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/i;->QJ:Z

    .line 10962
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/i;)V
    .locals 1

    .prologue
    .line 10977
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10953
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    .line 10954
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/i;->QI:Z

    .line 10958
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/i;->QJ:Z

    .line 10978
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 10973
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10953
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    .line 10954
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/i;->QI:Z

    .line 10958
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/i;->QJ:Z

    .line 10974
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 10969
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 10953
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    .line 10954
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/i;->QI:Z

    .line 10958
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/i;->QJ:Z

    .line 10970
    return-void
.end method


# virtual methods
.method public Yb()I
    .locals 1

    .prologue
    .line 11049
    iget-object v0, p0, Landroid/support/v7/widget/i;->QH:Landroid/support/v7/widget/j;

    invoke-virtual {v0}, Landroid/support/v7/widget/j;->getAdapterPosition()I

    move-result v0

    return v0
.end method

.method public Yc()Z
    .locals 1

    .prologue
    .line 10997
    iget-object v0, p0, Landroid/support/v7/widget/i;->QH:Landroid/support/v7/widget/j;

    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isInvalid()Z

    move-result v0

    return v0
.end method

.method public Yd()I
    .locals 1

    .prologue
    .line 11037
    iget-object v0, p0, Landroid/support/v7/widget/i;->QH:Landroid/support/v7/widget/j;

    invoke-virtual {v0}, Landroid/support/v7/widget/j;->getLayoutPosition()I

    move-result v0

    return v0
.end method

.method public Ye()Z
    .locals 1

    .prologue
    .line 11019
    iget-object v0, p0, Landroid/support/v7/widget/i;->QH:Landroid/support/v7/widget/j;

    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isUpdated()Z

    move-result v0

    return v0
.end method

.method public Yf()Z
    .locals 1

    .prologue
    .line 11008
    iget-object v0, p0, Landroid/support/v7/widget/i;->QH:Landroid/support/v7/widget/j;

    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v0

    return v0
.end method
