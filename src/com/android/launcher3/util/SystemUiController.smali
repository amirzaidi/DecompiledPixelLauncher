.class public Lcom/android/launcher3/util/SystemUiController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mStates:[I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/util/SystemUiController;->mStates:[I

    .line 43
    iput-object p1, p0, Lcom/android/launcher3/util/SystemUiController;->mWindow:Landroid/view/Window;

    .line 44
    return-void
.end method


# virtual methods
.method public updateUiState(II)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 52
    iget-object v1, p0, Lcom/android/launcher3/util/SystemUiController;->mStates:[I

    aget v1, v1, p1

    if-ne v1, p2, :cond_0

    .line 53
    return-void

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/util/SystemUiController;->mStates:[I

    aput p2, v1, p1

    .line 57
    iget-object v1, p0, Lcom/android/launcher3/util/SystemUiController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    .line 60
    iget-object v3, p0, Lcom/android/launcher3/util/SystemUiController;->mStates:[I

    array-length v4, v3

    move v1, v0

    move v0, v2

    :goto_0
    if-ge v1, v4, :cond_5

    aget v5, v3, v1

    .line 61
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 62
    and-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_3

    .line 63
    or-int/lit8 v0, v0, 0x10

    .line 69
    :cond_1
    :goto_1
    and-int/lit8 v6, v5, 0x4

    if-eqz v6, :cond_4

    .line 70
    or-int/lit16 v0, v0, 0x2000

    .line 60
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_3
    and-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_1

    .line 65
    and-int/lit8 v0, v0, -0x11

    goto :goto_1

    .line 71
    :cond_4
    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_2

    .line 72
    and-int/lit16 v0, v0, -0x2001

    goto :goto_2

    .line 75
    :cond_5
    if-eq v0, v2, :cond_6

    .line 76
    iget-object v1, p0, Lcom/android/launcher3/util/SystemUiController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 78
    :cond_6
    return-void
.end method

.method public updateUiState(IZ)V
    .locals 1

    .prologue
    .line 47
    if-eqz p2, :cond_0

    .line 48
    const/4 v0, 0x5

    .line 47
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    .line 49
    return-void

    .line 48
    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method
