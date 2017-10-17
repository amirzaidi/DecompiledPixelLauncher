.class Landroid/support/v7/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/a/b;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private adk([F)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 979
    aget v2, p1, v1

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    aget v2, p1, v1

    const/high16 v3, 0x42140000    # 37.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    aget v2, p1, v0

    const v3, 0x3f51eb85    # 0.82f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private adl([F)Z
    .locals 2

    .prologue
    .line 965
    const/4 v0, 0x2

    aget v0, p1, v0

    const v1, 0x3d4ccccd    # 0.05f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private adm([F)Z
    .locals 2

    .prologue
    .line 972
    const/4 v0, 0x2

    aget v0, p1, v0

    const v1, 0x3f733333    # 0.95f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acy(I[F)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 958
    invoke-direct {p0, p2}, Landroid/support/v7/a/g;->adm([F)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p2}, Landroid/support/v7/a/g;->adl([F)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p2}, Landroid/support/v7/a/g;->adk([F)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
