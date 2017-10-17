.class public Lcom/android/launcher3/discovery/AppDiscoveryItemView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static SHOW_REVIEW_COUNT:Z


# instance fields
.field private mImage:Landroid/widget/ImageView;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mPrice:Landroid/widget/TextView;

.field private mRatingText:Landroid/widget/TextView;

.field private mRatingView:Lcom/android/launcher3/discovery/RatingView;

.field private mReviewCount:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->SHOW_REVIEW_COUNT:Z

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/discovery/AppDiscoveryItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/discovery/AppDiscoveryItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method


# virtual methods
.method public apply(Lcom/android/launcher3/discovery/AppDiscoveryAppInfo;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->setTag(Ljava/lang/Object;)V

    .line 78
    iget-object v3, p0, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 79
    iget-object v3, p0, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->mImage:Landroid/widget/ImageView;

    iget-object v4, p1, Lcom/android/launcher3/discovery/AppDiscoveryAppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 80
    iget-object v3, p0, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/launcher3/discovery/AppDiscoveryAppInfo;->isDragAndDropSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    :cond_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->mTitle:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/launcher3/discovery/AppDiscoveryAppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v3, p0, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->mPrice:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/android/launcher3/discovery/AppDiscoveryAppInfo;->priceFormatted:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/launcher3/discovery/AppDiscoveryAppInfo;->priceFormatted:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v3, p0, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->mReviewCount:Landroid/widget/TextView;

    sget-boolean v0, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->SHOW_REVIEW_COUNT:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget v0, p1, Lcom/android/launcher3/discovery/AppDiscoveryAppInfo;->rating:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_3

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->mRatingText:Landroid/widget/TextView;

    new-instance v2, Ljava/text/DecimalFormat;

    const-string/jumbo v3, "#.0"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/android/launcher3/discovery/AppDiscoveryAppInfo;->rating:F

    float-to-double v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->mRatingView:Lcom/android/launcher3/discovery/RatingView;

    iget v2, p1, Lcom/android/launcher3/discovery/AppDiscoveryAppInfo;->rating:F

    invoke-virtual {v0, v2}, Lcom/android/launcher3/discovery/RatingView;->setRating(F)V

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->mRatingView:Lcom/android/launcher3/discovery/RatingView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/discovery/RatingView;->setVisibility(I)V

    .line 88
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iget-wide v2, p1, Lcom/android/launcher3/discovery/AppDiscoveryAppInfo;->reviewCount:J

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->mReviewCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :goto_2
    return-void

    .line 82
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_2
    move v0, v2

    .line 83
    goto :goto_1

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->mRatingView:Lcom/android/launcher3/discovery/RatingView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/discovery/RatingView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->mRatingText:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->mReviewCount:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public init(Landroid/view/View$OnClickListener;Landroid/view/View$AccessibilityDelegate;Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {p0, p2}, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 73
    iput-object p3, p0, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 74
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 59
    const v0, 0x7f0e002d

    invoke-virtual {p0, v0}, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->mImage:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f0e002e

    invoke-virtual {p0, v0}, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->mTitle:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0e002f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->mRatingText:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0e0030

    invoke-virtual {p0, v0}, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/discovery/RatingView;

    iput-object v0, p0, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->mRatingView:Lcom/android/launcher3/discovery/RatingView;

    .line 63
    const v0, 0x7f0e0032

    invoke-virtual {p0, v0}, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->mPrice:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0e0031

    invoke-virtual {p0, v0}, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/discovery/AppDiscoveryItemView;->mReviewCount:Landroid/widget/TextView;

    .line 65
    return-void
.end method
