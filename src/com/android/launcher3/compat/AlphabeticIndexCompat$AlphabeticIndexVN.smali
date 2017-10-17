.class Lcom/android/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexVN;
.super Lcom/android/launcher3/compat/AlphabeticIndexCompat$BaseIndex;
.source "SourceFile"


# instance fields
.field private final mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/compat/AlphabeticIndexCompat$BaseIndex;-><init>(Lcom/android/launcher3/compat/AlphabeticIndexCompat$BaseIndex;)V

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    .line 171
    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v3

    .line 173
    if-nez v3, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 174
    :goto_0
    new-instance v4, Landroid/icu/text/AlphabeticIndex;

    invoke-direct {v4, v0}, Landroid/icu/text/AlphabeticIndex;-><init>(Ljava/util/Locale;)V

    move v0, v1

    .line 175
    :goto_1
    if-ge v0, v3, :cond_1

    .line 176
    new-array v5, v1, [Ljava/util/Locale;

    invoke-virtual {v2, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 173
    :cond_0
    invoke-virtual {v2, v7}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    .line 178
    :cond_1
    new-array v0, v1, [Ljava/util/Locale;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v1, v0, v7

    invoke-virtual {v4, v0}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    .line 180
    invoke-virtual {v4}, Landroid/icu/text/AlphabeticIndex;->buildImmutableIndex()Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    .line 181
    return-void
.end method


# virtual methods
.method protected getBucketIndex(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v0, p1}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketIndex(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method protected getBucketLabel(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v0, p1}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucket(I)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/AlphabeticIndex$Bucket;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
