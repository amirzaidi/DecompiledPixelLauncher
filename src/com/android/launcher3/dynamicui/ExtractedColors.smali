.class public Lcom/android/launcher3/dynamicui/ExtractedColors;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mColors:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/dynamicui/ExtractedColors;->mColors:[I

    .line 59
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/ExtractedColors;->mColors:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 60
    return-void
.end method


# virtual methods
.method decodeFromString(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 85
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 86
    array-length v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/dynamicui/ExtractedColors;->mColors:[I

    .line 87
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/dynamicui/ExtractedColors;->mColors:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/android/launcher3/dynamicui/ExtractedColors;->mColors:[I

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method

.method encodeAsString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    iget-object v2, p0, Lcom/android/launcher3/dynamicui/ExtractedColors;->mColors:[I

    const/4 v0, 0x0

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v2, v0

    .line 76
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColor(II)I
    .locals 1

    .prologue
    .line 109
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dynamicui/ExtractedColors;->mColors:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/ExtractedColors;->mColors:[I

    aget v0, v0, p1

    return v0

    .line 112
    :cond_0
    return p2
.end method

.method public load(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 97
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 98
    const-string/jumbo v1, "pref_extractedColors"

    const-string/jumbo v2, "1"

    .line 97
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {p0, v0}, Lcom/android/launcher3/dynamicui/ExtractedColors;->decodeFromString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/ExtractedColors;->mColors:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 103
    invoke-static {p1}, Lcom/android/launcher3/dynamicui/ExtractionUtils;->startColorExtractionService(Landroid/content/Context;)V

    .line 105
    :cond_0
    return-void
.end method

.method public setColorAtIndex(II)V
    .locals 3

    .prologue
    .line 63
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dynamicui/ExtractedColors;->mColors:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/ExtractedColors;->mColors:[I

    aput p2, v0, p1

    .line 68
    :goto_0
    return-void

    .line 66
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
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 123
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/launcher3/dynamicui/ExtractionUtils;->isSuperLight(Landroid/support/v7/a/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const/high16 v0, -0x1000000

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Landroid/support/v4/b/a;->arc(II)I

    move-result v0

    .line 130
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/dynamicui/ExtractedColors;->setColorAtIndex(II)V

    .line 131
    return-void

    .line 125
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/launcher3/dynamicui/ExtractionUtils;->isSuperDark(Landroid/support/v7/a/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    const/16 v0, 0x2d

    invoke-static {v1, v0}, Landroid/support/v4/b/a;->arc(II)I

    move-result v0

    goto :goto_0

    .line 128
    :cond_1
    const/16 v0, 0x3f

    invoke-static {v1, v0}, Landroid/support/v4/b/a;->arc(II)I

    move-result v0

    goto :goto_0
.end method
