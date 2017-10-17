.class Landroid/support/v4/a/r;
.super Landroid/support/v4/a/l;
.source "SourceFile"


# instance fields
.field final synthetic Xy:Landroid/support/v4/a/c;


# direct methods
.method constructor <init>(Landroid/support/v4/a/c;)V
    .locals 0

    .prologue
    .line 666
    iput-object p1, p0, Landroid/support/v4/a/r;->Xy:Landroid/support/v4/a/c;

    invoke-direct {p0}, Landroid/support/v4/a/l;-><init>()V

    return-void
.end method


# virtual methods
.method protected aiA(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Landroid/support/v4/a/r;->Xy:Landroid/support/v4/a/c;

    iget-object v0, v0, Landroid/support/v4/a/c;->WQ:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected aiB(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Landroid/support/v4/a/r;->Xy:Landroid/support/v4/a/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/c;->aio(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected aiC(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Landroid/support/v4/a/r;->Xy:Landroid/support/v4/a/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/c;->aio(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected aiG()Ljava/util/Map;
    .locals 2

    .prologue
    .line 689
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected aiH(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 699
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected aiI()V
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Landroid/support/v4/a/r;->Xy:Landroid/support/v4/a/c;

    invoke-virtual {v0}, Landroid/support/v4/a/c;->clear()V

    .line 710
    return-void
.end method

.method protected aiL()I
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Landroid/support/v4/a/r;->Xy:Landroid/support/v4/a/c;

    iget v0, v0, Landroid/support/v4/a/c;->mSize:I

    return v0
.end method

.method protected aiM(I)V
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Landroid/support/v4/a/r;->Xy:Landroid/support/v4/a/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/c;->aik(I)Ljava/lang/Object;

    .line 705
    return-void
.end method

.method protected aiN(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Landroid/support/v4/a/r;->Xy:Landroid/support/v4/a/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/c;->add(Ljava/lang/Object;)Z

    .line 695
    return-void
.end method
