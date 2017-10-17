.class public Lcom/android/launcher3/util/LabelComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final mCollator:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/LabelComparator;->mCollator:Ljava/text/Collator;

    .line 25
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/LabelComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    .line 35
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 36
    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v1

    .line 37
    :cond_0
    if-eqz v0, :cond_2

    xor-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_2

    .line 38
    const/4 v0, -0x1

    return v0

    :cond_1
    move v0, v1

    .line 33
    goto :goto_0

    .line 39
    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 40
    const/4 v0, 0x1

    return v0

    .line 44
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/util/LabelComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
