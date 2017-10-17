.class public Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "SourceFile"


# instance fields
.field ignoreInsets:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    iput-boolean v1, p0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    .line 85
    sget-object v0, Lcom/android/launcher3/R$styleable;->InsettableFrameLayout_Layout:[I

    .line 84
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    .line 88
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    .line 97
    return-void
.end method
