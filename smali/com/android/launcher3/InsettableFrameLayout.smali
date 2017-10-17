.class public Lcom/android/launcher3/InsettableFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Lcom/android/launcher3/Insettable;


# instance fields
.field protected mInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    .line 27
    invoke-virtual {p0, p0}, Lcom/android/launcher3/InsettableFrameLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 71
    instance-of v0, p1, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/launcher3/InsettableFrameLayout;->generateDefaultLayoutParams()Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/launcher3/InsettableFrameLayout;->generateDefaultLayoutParams()Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 65
    new-instance v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/InsettableFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/launcher3/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/launcher3/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/launcher3/InsettableFrameLayout;->setFrameLayoutChildInsets(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 103
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public setFrameLayoutChildInsets(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    .line 33
    instance-of v1, p1, Lcom/android/launcher3/Insettable;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 34
    check-cast v1, Lcom/android/launcher3/Insettable;

    invoke-interface {v1, p2}, Lcom/android/launcher3/Insettable;->setInsets(Landroid/graphics/Rect;)V

    .line 41
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    return-void

    .line 35
    :cond_1
    iget-boolean v1, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    if-nez v1, :cond_0

    .line 36
    iget v1, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->topMargin:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->topMargin:I

    .line 37
    iget v1, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->leftMargin:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->leftMargin:I

    .line 38
    iget v1, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->rightMargin:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->rightMargin:I

    .line 39
    iget v1, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->bottomMargin:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/launcher3/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/InsettableFrameLayout;->getChildCount()I

    move-result v1

    .line 51
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 52
    invoke-virtual {p0, v0}, Lcom/android/launcher3/InsettableFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 53
    iget-object v3, p0, Lcom/android/launcher3/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/launcher3/InsettableFrameLayout;->setFrameLayoutChildInsets(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 56
    return-void
.end method
