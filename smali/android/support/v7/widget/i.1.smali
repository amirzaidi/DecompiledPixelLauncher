.class public Landroid/support/v7/widget/i;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# instance fields
.field Pa:Landroid/support/v7/widget/j;

.field Pb:Z

.field Pc:Z

.field final mDecorInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 10920
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 10908
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    .line 10909
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/i;->Pb:Z

    .line 10913
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/i;->Pc:Z

    .line 10921
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 10916
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10908
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    .line 10909
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/i;->Pb:Z

    .line 10913
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/i;->Pc:Z

    .line 10917
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/i;)V
    .locals 1

    .prologue
    .line 10932
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10908
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    .line 10909
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/i;->Pb:Z

    .line 10913
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/i;->Pc:Z

    .line 10933
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 10928
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10908
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    .line 10909
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/i;->Pb:Z

    .line 10913
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/i;->Pc:Z

    .line 10929
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 10924
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 10908
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    .line 10909
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/i;->Pb:Z

    .line 10913
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/i;->Pc:Z

    .line 10925
    return-void
.end method


# virtual methods
.method public Xb()I
    .locals 1

    .prologue
    .line 11004
    iget-object v0, p0, Landroid/support/v7/widget/i;->Pa:Landroid/support/v7/widget/j;

    invoke-virtual {v0}, Landroid/support/v7/widget/j;->getAdapterPosition()I

    move-result v0

    return v0
.end method

.method public Xc()Z
    .locals 1

    .prologue
    .line 10952
    iget-object v0, p0, Landroid/support/v7/widget/i;->Pa:Landroid/support/v7/widget/j;

    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isInvalid()Z

    move-result v0

    return v0
.end method

.method public Xd()I
    .locals 1

    .prologue
    .line 10992
    iget-object v0, p0, Landroid/support/v7/widget/i;->Pa:Landroid/support/v7/widget/j;

    invoke-virtual {v0}, Landroid/support/v7/widget/j;->getLayoutPosition()I

    move-result v0

    return v0
.end method

.method public Xe()Z
    .locals 1

    .prologue
    .line 10974
    iget-object v0, p0, Landroid/support/v7/widget/i;->Pa:Landroid/support/v7/widget/j;

    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isUpdated()Z

    move-result v0

    return v0
.end method

.method public Xf()Z
    .locals 1

    .prologue
    .line 10963
    iget-object v0, p0, Landroid/support/v7/widget/i;->Pa:Landroid/support/v7/widget/j;

    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v0

    return v0
.end method
