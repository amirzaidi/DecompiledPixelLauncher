.class Lcom/android/launcher3/graphics/IconShapeOverride$ResourcesOverride;
.super Landroid/content/res/Resources;
.source "SourceFile"


# instance fields
.field private final mOverrideId:I

.field private final mOverrideValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 136
    iput p2, p0, Lcom/android/launcher3/graphics/IconShapeOverride$ResourcesOverride;->mOverrideId:I

    .line 137
    iput-object p3, p0, Lcom/android/launcher3/graphics/IconShapeOverride$ResourcesOverride;->mOverrideValue:Ljava/lang/String;

    .line 138
    return-void
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/android/launcher3/graphics/IconShapeOverride$ResourcesOverride;->mOverrideId:I

    if-ne p1, v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShapeOverride$ResourcesOverride;->mOverrideValue:Ljava/lang/String;

    return-object v0

    .line 146
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
