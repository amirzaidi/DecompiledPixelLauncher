.class public Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;->mCollator:Ljava/text/Collator;

    .line 162
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;->mCollator:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 163
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;->mCollator:Ljava/text/Collator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setDecomposition(I)V

    .line 164
    return-void
.end method

.method public static getInstance()Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;
    .locals 1

    .prologue
    .line 185
    new-instance v0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;-><init>()V

    return-object v0
.end method


# virtual methods
.method public matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 170
    iget-object v2, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;->mCollator:Ljava/text/Collator;

    invoke-virtual {v2, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 180
    return v1

    .line 172
    :pswitch_0
    return v0

    .line 178
    :pswitch_1
    iget-object v2, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;->mCollator:Ljava/text/Collator;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0xffff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
