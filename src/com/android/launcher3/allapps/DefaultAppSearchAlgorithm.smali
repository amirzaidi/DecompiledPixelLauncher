.class public Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mApps:Ljava/util/List;

.field protected final mResultHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;->mApps:Ljava/util/List;

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method


# virtual methods
.method public cancel(Z)V
    .locals 2

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 43
    :cond_0
    return-void
.end method

.method public doSearch(Ljava/lang/String;Lcom/android/launcher3/allapps/AllAppsSearchBarController$Callbacks;)V
    .locals 3

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;->getTitleMatchResult(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm$1;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm$1;-><init>(Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;Lcom/android/launcher3/allapps/AllAppsSearchBarController$Callbacks;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    return-void
.end method

.method protected getTitleMatchResult(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    .prologue
    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 63
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;->matches(Lcom/android/launcher3/AppInfo;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/android/launcher3/AppInfo;->toComponentKey()Lcom/android/launcher3/util/ComponentKey;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_1
    return-object v2
.end method

.method protected isBreak(III)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 107
    sparse-switch p1, :sswitch_data_0

    .line 133
    return v1

    .line 109
    :sswitch_0
    if-ne p3, v0, :cond_0

    .line 110
    return v0

    .line 115
    :cond_0
    :sswitch_1
    if-eq p2, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 118
    :sswitch_2
    const/4 v2, 0x5

    if-gt p2, v2, :cond_2

    if-gtz p2, :cond_3

    :cond_2
    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 123
    :sswitch_3
    const/16 v2, 0x9

    if-eq p2, v2, :cond_5

    .line 124
    const/16 v2, 0xa

    if-eq p2, v2, :cond_5

    .line 125
    const/16 v2, 0xb

    if-eq p2, v2, :cond_4

    .line 123
    :goto_2
    return v0

    :cond_4
    move v0, v1

    .line 125
    goto :goto_2

    :cond_5
    move v0, v1

    .line 123
    goto :goto_2

    .line 131
    :sswitch_4
    return v0

    .line 107
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x9 -> :sswitch_3
        0xa -> :sswitch_3
        0xb -> :sswitch_3
        0x14 -> :sswitch_4
        0x18 -> :sswitch_4
        0x19 -> :sswitch_4
        0x1a -> :sswitch_4
    .end sparse-switch
.end method

.method protected matches(Lcom/android/launcher3/AppInfo;Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 73
    iget-object v0, p1, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 74
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 76
    if-lt v7, v5, :cond_0

    if-gtz v5, :cond_1

    .line 77
    :cond_0
    return v1

    .line 82
    :cond_1
    invoke-virtual {v6, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    .line 84
    sub-int v8, v7, v5

    move v2, v1

    move v3, v0

    move v4, v1

    .line 85
    :goto_0
    if-gt v2, v8, :cond_4

    .line 88
    add-int/lit8 v0, v7, -0x1

    if-ge v2, v0, :cond_2

    .line 89
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    .line 90
    :goto_1
    invoke-virtual {p0, v3, v4, v0}, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;->isBreak(III)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 91
    add-int v4, v2, v5

    invoke-virtual {v6, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 90
    if-eqz v4, :cond_3

    .line 92
    const/4 v0, 0x1

    return v0

    :cond_2
    move v0, v1

    .line 89
    goto :goto_1

    .line 85
    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    move v3, v0

    goto :goto_0

    .line 95
    :cond_4
    return v1
.end method
