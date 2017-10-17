.class Landroid/support/v4/a/n;
.super Landroid/support/v4/a/l;
.source "SourceFile"


# instance fields
.field final synthetic VK:Landroid/support/v4/a/t;


# direct methods
.method constructor <init>(Landroid/support/v4/a/t;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Landroid/support/v4/a/n;->VK:Landroid/support/v4/a/t;

    invoke-direct {p0}, Landroid/support/v4/a/l;-><init>()V

    return-void
.end method


# virtual methods
.method protected ahB()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Landroid/support/v4/a/n;->VK:Landroid/support/v4/a/t;

    iget v0, v0, Landroid/support/v4/a/t;->mSize:I

    return v0
.end method

.method protected ahC(I)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Landroid/support/v4/a/n;->VK:Landroid/support/v4/a/t;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/t;->ahc(I)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method protected ahD(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Landroid/support/v4/a/n;->VK:Landroid/support/v4/a/t;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method protected ahq(II)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Landroid/support/v4/a/n;->VK:Landroid/support/v4/a/t;

    iget-object v0, v0, Landroid/support/v4/a/t;->VC:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected ahr(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/v4/a/n;->VK:Landroid/support/v4/a/t;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/t;->ahm(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected ahs(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/v4/a/n;->VK:Landroid/support/v4/a/t;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/t;->ahb(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected ahw()Ljava/util/Map;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/v4/a/n;->VK:Landroid/support/v4/a/t;

    return-object v0
.end method

.method protected ahx(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Landroid/support/v4/a/n;->VK:Landroid/support/v4/a/t;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/a/t;->ahn(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected ahy()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroid/support/v4/a/n;->VK:Landroid/support/v4/a/t;

    invoke-virtual {v0}, Landroid/support/v4/a/t;->clear()V

    .line 117
    return-void
.end method
