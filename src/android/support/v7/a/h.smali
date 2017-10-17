.class Landroid/support/v7/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aer(Landroid/support/v7/a/f;Landroid/support/v7/a/f;)I
    .locals 2

    .prologue
    .line 457
    invoke-virtual {p2}, Landroid/support/v7/a/f;->aek()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/a/f;->aek()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 454
    check-cast p1, Landroid/support/v7/a/f;

    check-cast p2, Landroid/support/v7/a/f;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/a/h;->aer(Landroid/support/v7/a/f;Landroid/support/v7/a/f;)I

    move-result v0

    return v0
.end method
