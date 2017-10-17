.class public Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/allapps/search/SearchAlgorithm;


# instance fields
.field private final mApps:Ljava/util/List;

.field protected final mResultHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->mApps:Ljava/util/List;

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method private getTitleMatchResult(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    .prologue
    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-static {}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;->getInstance()Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;

    move-result-object v3

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 67
    invoke-static {v0, v1, v3}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->matches(Lcom/android/launcher3/AppInfo;Ljava/lang/String;Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/android/launcher3/AppInfo;->toComponentKey()Lcom/android/launcher3/util/ComponentKey;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_1
    return-object v2
.end method

.method private static isBreak(III)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 115
    sparse-switch p1, :sswitch_data_0

    .line 122
    sparse-switch p0, :sswitch_data_1

    .line 148
    return v1

    .line 120
    :sswitch_0
    return v0

    .line 124
    :sswitch_1
    if-ne p2, v0, :cond_0

    .line 125
    return v0

    .line 130
    :cond_0
    :sswitch_2
    if-eq p1, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 133
    :sswitch_3
    const/4 v2, 0x5

    if-gt p1, v2, :cond_2

    if-gtz p1, :cond_3

    :cond_2
    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 138
    :sswitch_4
    const/16 v2, 0x9

    if-eq p1, v2, :cond_5

    .line 139
    const/16 v2, 0xa

    if-eq p1, v2, :cond_5

    .line 140
    const/16 v2, 0xb

    if-eq p1, v2, :cond_4

    .line 138
    :goto_2
    return v0

    :cond_4
    move v0, v1

    .line 140
    goto :goto_2

    :cond_5
    move v0, v1

    .line 138
    goto :goto_2

    .line 146
    :sswitch_5
    return v0

    .line 115
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
    .end sparse-switch

    .line 122
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x9 -> :sswitch_4
        0xa -> :sswitch_4
        0xb -> :sswitch_4
        0x14 -> :sswitch_5
        0x18 -> :sswitch_5
        0x19 -> :sswitch_5
        0x1a -> :sswitch_5
    .end sparse-switch
.end method

.method public static matches(Lcom/android/launcher3/AppInfo;Ljava/lang/String;Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 82
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 84
    if-lt v7, v5, :cond_0

    if-gtz v5, :cond_1

    .line 85
    :cond_0
    return v1

    .line 90
    :cond_1
    invoke-virtual {v6, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    .line 92
    sub-int v8, v7, v5

    move v2, v1

    move v3, v0

    move v4, v1

    .line 93
    :goto_0
    if-gt v2, v8, :cond_4

    .line 96
    add-int/lit8 v0, v7, -0x1

    if-ge v2, v0, :cond_2

    .line 97
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    .line 98
    :goto_1
    invoke-static {v3, v4, v0}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->isBreak(III)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 99
    add-int v4, v2, v5

    invoke-virtual {v6, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, p1, v4}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 98
    if-eqz v4, :cond_3

    .line 100
    const/4 v0, 0x1

    return v0

    :cond_2
    move v0, v1

    .line 97
    goto :goto_1

    .line 93
    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    move v3, v0

    goto :goto_0

    .line 103
    :cond_4
    return v1
.end method


# virtual methods
.method public cancel(Z)V
    .locals 2

    .prologue
    .line 42
    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 45
    :cond_0
    return-void
.end method

.method public doSearch(Ljava/lang/String;Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;)V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->getTitleMatchResult(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1;-><init>(Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    return-void
.end method
