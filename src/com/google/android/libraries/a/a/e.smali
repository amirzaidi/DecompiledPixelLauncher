.class public Lcom/google/android/libraries/a/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final KA:I


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    or-int/lit8 v2, v0, 0x0

    .line 111
    if-nez p2, :cond_1

    move v0, v1

    :goto_1
    or-int/2addr v0, v2

    .line 112
    if-nez p3, :cond_2

    :goto_2
    or-int/2addr v0, v1

    .line 113
    iput v0, p0, Lcom/google/android/libraries/a/a/e;->KA:I

    .line 114
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 111
    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    .line 112
    :cond_2
    const/4 v1, 0x4

    goto :goto_2
.end method

.method static synthetic QQ(Lcom/google/android/libraries/a/a/e;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/google/android/libraries/a/a/e;->KA:I

    return v0
.end method
