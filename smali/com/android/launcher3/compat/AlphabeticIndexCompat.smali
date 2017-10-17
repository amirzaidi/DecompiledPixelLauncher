.class public Lcom/android/launcher3/compat/AlphabeticIndexCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MID_DOT:Ljava/lang/String; = "\u2219"

.field private static final TAG:Ljava/lang/String; = "AlphabeticIndexCompat"


# instance fields
.field private final mBaseIndex:Lcom/android/launcher3/compat/AlphabeticIndexCompat$BaseIndex;

.field private final mDefaultMiscLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    :try_start_0
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT:Z

    if-eqz v0, :cond_3

    .line 27
    new-instance v0, Lcom/android/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexVN;

    invoke-direct {v0, p1}, Lcom/android/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexVN;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v2, v0

    .line 32
    :goto_1
    if-nez v2, :cond_2

    .line 34
    :try_start_1
    new-instance v0, Lcom/android/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexV16;

    invoke-direct {v0, p1}, Lcom/android/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexV16;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    :goto_2
    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/compat/AlphabeticIndexCompat$BaseIndex;

    invoke-direct {v0, v1}, Lcom/android/launcher3/compat/AlphabeticIndexCompat$BaseIndex;-><init>(Lcom/android/launcher3/compat/AlphabeticIndexCompat$BaseIndex;)V

    :cond_0
    iput-object v0, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mBaseIndex:Lcom/android/launcher3/compat/AlphabeticIndexCompat$BaseIndex;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 43
    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    const-string/jumbo v0, "\u4ed6"

    iput-object v0, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mDefaultMiscLabel:Ljava/lang/String;

    .line 51
    :goto_3
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    const-string/jumbo v2, "AlphabeticIndexCompat"

    const-string/jumbo v3, "Unable to load the system index"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    goto :goto_1

    .line 35
    :catch_1
    move-exception v0

    .line 36
    const-string/jumbo v3, "AlphabeticIndexCompat"

    const-string/jumbo v4, "Unable to load the system index"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    goto :goto_2

    .line 49
    :cond_1
    const-string/jumbo v0, "\u2219"

    iput-object v0, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mDefaultMiscLabel:Ljava/lang/String;

    goto :goto_3

    :cond_2
    move-object v0, v2

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mBaseIndex:Lcom/android/launcher3/compat/AlphabeticIndexCompat$BaseIndex;

    iget-object v2, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mBaseIndex:Lcom/android/launcher3/compat/AlphabeticIndexCompat$BaseIndex;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/compat/AlphabeticIndexCompat$BaseIndex;->getBucketIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/compat/AlphabeticIndexCompat$BaseIndex;->getBucketLabel(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 61
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    .line 62
    if-eqz v1, :cond_0

    .line 64
    const-string/jumbo v0, "#"

    return-object v0

    .line 66
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mDefaultMiscLabel:Ljava/lang/String;

    return-object v0

    .line 73
    :cond_1
    const-string/jumbo v0, "\u2219"

    return-object v0

    .line 77
    :cond_2
    return-object v1
.end method
