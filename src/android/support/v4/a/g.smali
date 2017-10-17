.class final Landroid/support/v4/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field Xa:I

.field final synthetic Xb:Landroid/support/v4/a/l;

.field Xc:Z

.field final mOffset:I

.field mSize:I


# direct methods
.method constructor <init>(Landroid/support/v4/a/l;I)V
    .locals 1

    .prologue
    .line 41
    iput-object p1, p0, Landroid/support/v4/a/g;->Xb:Landroid/support/v4/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/a/g;->Xc:Z

    .line 42
    iput p2, p0, Landroid/support/v4/a/g;->mOffset:I

    .line 43
    invoke-virtual {p1}, Landroid/support/v4/a/l;->aiL()I

    move-result v0

    iput v0, p0, Landroid/support/v4/a/g;->mSize:I

    .line 44
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 48
    iget v0, p0, Landroid/support/v4/a/g;->Xa:I

    iget v1, p0, Landroid/support/v4/a/g;->mSize:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/support/v4/a/g;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Landroid/support/v4/a/g;->Xb:Landroid/support/v4/a/l;

    iget v1, p0, Landroid/support/v4/a/g;->Xa:I

    iget v2, p0, Landroid/support/v4/a/g;->mOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/l;->aiA(II)Ljava/lang/Object;

    move-result-object v0

    .line 55
    iget v1, p0, Landroid/support/v4/a/g;->Xa:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/v4/a/g;->Xa:I

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/a/g;->Xc:Z

    .line 57
    return-object v0

    .line 53
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-boolean v0, p0, Landroid/support/v4/a/g;->Xc:Z

    if-eqz v0, :cond_0

    .line 65
    iget v0, p0, Landroid/support/v4/a/g;->Xa:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/a/g;->Xa:I

    .line 66
    iget v0, p0, Landroid/support/v4/a/g;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/a/g;->mSize:I

    .line 67
    iput-boolean v1, p0, Landroid/support/v4/a/g;->Xc:Z

    .line 68
    iget-object v0, p0, Landroid/support/v4/a/g;->Xb:Landroid/support/v4/a/l;

    iget v1, p0, Landroid/support/v4/a/g;->Xa:I

    invoke-virtual {v0, v1}, Landroid/support/v4/a/l;->aiM(I)V

    .line 69
    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
