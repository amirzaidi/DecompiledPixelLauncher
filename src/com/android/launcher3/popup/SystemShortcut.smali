.class public abstract Lcom/android/launcher3/popup/SystemShortcut;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mIconResId:I

.field private final mLabelResId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mIconResId:I

    .line 33
    iput p2, p0, Lcom/android/launcher3/popup/SystemShortcut;->mLabelResId:I

    .line 34
    return-void
.end method


# virtual methods
.method public getIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mIconResId:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 38
    invoke-static {p1, p2}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 39
    return-object v0
.end method

.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mLabelResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getOnClickListener(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;)Landroid/view/View$OnClickListener;
.end method
