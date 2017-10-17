.class public Lcom/android/launcher3/dynamicui/ExtractedColors;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_VALUES:[I

.field private static final VERSION:I


# instance fields
.field private final mColors:[I

.field private final mListeners:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/high16 v3, -0x1000000

    .line 56
    sput v4, Lcom/android/launcher3/dynamicui/ExtractedColors;->VERSION:I

    .line 57
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 58
    sget v1, Lcom/android/launcher3/dynamicui/ExtractedColors;->VERSION:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 59
    const v1, 0x40ffffff    # 7.9999995f

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 60
    const/4 v1, 0x2

    aput v3, v0, v1

    .line 61
    const v1, -0x333334

    aput v1, v0, v4

    .line 62
    const/4 v1, 0x4

    aput v3, v0, v1

    .line 63
    const/4 v1, 0x5

    aput v3, v0, v1

    .line 57
    sput-object v0, Lcom/android/launcher3/dynamicui/ExtractedColors;->DEFAULT_VALUES:[I

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dynamicui/ExtractedColors;->mListeners:Ljava/util/ArrayList;

    .line 90
    sget-object v0, Lcom/android/launcher3/dynamicui/ExtractedColors;->DEFAULT_VALUES:[I

    sget-object v1, Lcom/android/launcher3/dynamicui/ExtractedColors;->DEFAULT_VALUES:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dynamicui/ExtractedColors;->mColors:[I

    .line 91
    return-void
.end method


# virtual methods
.method encodeAsString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    iget-object v2, p0, Lcom/android/launcher3/dynamicui/ExtractedColors;->mColors:[I

    const/4 v0, 0x0

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v2, v0

    .line 107
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColor(I)I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/ExtractedColors;->mColors:[I

    aget v0, v0, p1

    return v0
.end method

.method public load(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 118
    const-string/jumbo v2, "pref_extractedColors"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/android/launcher3/dynamicui/ExtractedColors;->VERSION:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 121
    array-length v2, v1

    sget-object v3, Lcom/android/launcher3/dynamicui/ExtractedColors;->DEFAULT_VALUES:[I

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 122
    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/android/launcher3/dynamicui/ExtractedColors;->VERSION:I

    if-ne v2, v3, :cond_0

    .line 124
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/dynamicui/ExtractedColors;->mColors:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 125
    iget-object v2, p0, Lcom/android/launcher3/dynamicui/ExtractedColors;->mColors:[I

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/dynamicui/ExtractionUtils;->startColorExtractionService(Landroid/content/Context;)V

    .line 131
    :cond_1
    return-void
.end method

.method public notifyChange()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/ExtractedColors;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dynamicui/ExtractedColors$OnChangeListener;

    .line 173
    invoke-interface {v0}, Lcom/android/launcher3/dynamicui/ExtractedColors$OnChangeListener;->onExtractedColorsChanged()V

    goto :goto_0

    .line 175
    :cond_0
    return-void
.end method

.method public setColorAtIndex(II)V
    .locals 3

    .prologue
    .line 94
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dynamicui/ExtractedColors;->mColors:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/ExtractedColors;->mColors:[I

    aput p2, v0, p1

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    const-string/jumbo v0, "ExtractedColors"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attempted to set a color at an invalid index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateHotseatPalette(Landroid/support/v7/a/a;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 146
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/launcher3/dynamicui/ExtractionUtils;->isSuperLight(Landroid/support/v7/a/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const/high16 v0, -0x1000000

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Landroid/support/v4/b/a;->asb(II)I

    move-result v0

    .line 153
    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/android/launcher3/dynamicui/ExtractedColors;->setColorAtIndex(II)V

    .line 154
    return-void

    .line 148
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/launcher3/dynamicui/ExtractionUtils;->isSuperDark(Landroid/support/v7/a/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    const/4 v0, -0x1

    const/16 v1, 0x2d

    invoke-static {v0, v1}, Landroid/support/v4/b/a;->asb(II)I

    move-result v0

    goto :goto_0

    .line 151
    :cond_1
    sget-object v0, Lcom/android/launcher3/dynamicui/ExtractedColors;->DEFAULT_VALUES:[I

    aget v0, v0, v2

    goto :goto_0
.end method

.method public updateWallpaperThemePalette(Landroid/support/v7/a/a;)V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 162
    sget-object v0, Lcom/android/launcher3/dynamicui/ExtractedColors;->DEFAULT_VALUES:[I

    aget v0, v0, v1

    .line 163
    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/dynamicui/ExtractedColors;->setColorAtIndex(II)V

    .line 165
    return-void

    .line 164
    :cond_0
    invoke-virtual {p1, v0}, Landroid/support/v7/a/a;->adt(I)I

    move-result v0

    goto :goto_0
.end method
